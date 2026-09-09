package ohos_app_cangjie_entry.tests.mech_hwasan

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

// 问题单#2：【arkts互操作】HWASan进行内存检测应用卡住 JSHandle 转换为 JSValue
// 根因：ArkTS 运行时使用 Nan-boxing 把 6 种类型用 JSTaggedValue 统一表达，要求 JSObject* 前16位为空。
//       hwasan 替换 malloc/free，malloc 把地址前16位写入 tag，导致 JSHandle 前16位不再为空，
//       从 JSValue 反推类型时会错误地把 JSHandle 识别为 number。
// 修复方案：从 JSHandle 转换为 JSValue 时把前16位制空。
// 涉及接口：JSHeapObject 构造、toJSValue()、所有继承自 JSHeapObject 的子类
//          （JSObject / JSArray / JSFunction / JSClass / JSExternal / JSPromise 等）
// 复现思路：稳定性工程难以程序化开启 HWASan，但可通过大量创建各种 JSHeapObject 并反复进行
//          "创建 global -> GetGlobalValue -> toJSValue -> 类型判断"的链路覆盖修复点。
//          如果修复点存在回退或旁路，反复触发转换链路时将出现类型识别错误的概率性故障。

let _ = registerTestModule("hwasan_tag", { jsContext, sandboxFile => HwasanTagMaskTest(jsContext, sandboxFile) })

class HwasanTrackerState <: SharedObject {
    var value: Float64 = 0.0
    var seq: Int64 = 0
}

class JSObjectCell {
    var value: JSObject
    public init(value: JSObject) {
        this.value = value
    }
}

public class HwasanTagMaskTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        [
            "testHeapObjectBatchConvert",
            "testObjectToJSValueRound",
            "testArrayBatchConvert",
            "testFunctionBatchConvert",
            "testExternalBatchConvert",
            "testPromiseToJSValueRound",
            "testMixedHeapObjectBatch"
        ]
    }

    /// 批量创建 JSObject 并反复调用 toJSValue，验证 JSHandle -> JSValue 转换链路稳定
    /// 若前16位 tag 未被正确清除，类型判断 isObject 会概率性失败
    public func testHeapObjectBatchConvert(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testHeapObjectBatchConvert") {
            let apiName = "testHeapObjectBatchConvert"
            let jsContext = this.jsContext
            let batchSize = Int64(seed % 2000) + 500
            for (i in 0..batchSize) {
                jsContext.newScope {
                    let obj = jsContext.object()
                    let v = obj.toJSValue()
                    if (!v.isObject()) {
                        this.writeLog(apiName, "TypeMismatch", "idx=${i} expected object got non-object (Nan-boxing tag leak?)")
                        return
                    }
                    obj.setProperty("idx", jsContext.number(Float64(i)).toJSValue())
                    let retrieved = obj.getProperty("idx")
                    if (!retrieved.isNumber() || retrieved.toNumber() != Float64(i)) {
                        this.writeLog(apiName, "PropertyMismatch", "idx=${i} expected ${i} got ${retrieved.toNumber()}")
                        return
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${batchSize} objects created+converted (tag-mask path covered)")
        }
    }

    /// 反复 JSObject -> JSValue -> asObject() -> JSValue 的循环转换
    /// 覆盖 ARKTS_GetGlobalValue 返回值的类型反推路径
    public func testObjectToJSValueRound(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testObjectToJSValueRound") {
            let apiName = "testObjectToJSValueRound"
            let jsContext = this.jsContext
            let rounds = Int64(seed % 200) + 50
            let root = jsContext.object()
            root.setProperty("base", jsContext.number(Float64(seed)).toJSValue())
            let currentCell = JSObjectCell(root)
            for (i in 0..rounds) {
                jsContext.newScope {
                    let v = currentCell.value.toJSValue()
                    if (!v.isObject()) {
                        this.writeLog(apiName, "RoundLostObjectType", "round=${i} JSValue not recognized as object after toJSValue")
                        return
                    }
                    let obj = v.asObject()
                    obj.setProperty("round", jsContext.number(Float64(i)).toJSValue())
                    // 反复在 HeapObject 和 JSValue 之间转换，累积触发 tag 路径
                    let back = obj.toJSValue()
                    if (!back.isObject()) {
                        this.writeLog(apiName, "RoundTripLostType", "round=${i} round-trip conversion lost object type")
                        return
                    }
                    currentCell.value = obj
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${rounds} round-trip conversions on shared HeapObject")
        }
    }

    /// 批量创建 JSArray 并转换为 JSValue，验证 Array 类型在 Nan-boxing 下的稳定性
    public func testArrayBatchConvert(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testArrayBatchConvert") {
            let apiName = "testArrayBatchConvert"
            let jsContext = this.jsContext
            let batchSize = Int64(seed % 1000) + 200
            for (i in 0..batchSize) {
                jsContext.newScope {
                    let arr = jsContext.array(Array<JSValue>(3, { j: Int64 =>
                        jsContext.number(Float64(i * 100 + j)).toJSValue()
                    }))
                    let v = arr.toJSValue()
                    if (!v.isArray()) {
                        this.writeLog(apiName, "NotArray", "idx=${i} expected array type")
                        return
                    }
                    let recovered = v.asArray()
                    let len = recovered.size
                    if (len != 3) {
                        this.writeLog(apiName, "LengthMismatch", "idx=${i} expected 3 got ${len}")
                        return
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${batchSize} arrays created+converted")
        }
    }

    /// 批量创建 JSFunction（仓颉 lambda 抛到 ArkTS）并验证转换链路
    public func testFunctionBatchConvert(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testFunctionBatchConvert") {
            let apiName = "testFunctionBatchConvert"
            let jsContext = this.jsContext
            let batchSize = Int64(seed % 500) + 100
            for (i in 0..batchSize) {
                jsContext.newScope {
                    let capturedI = i
                    let fn = jsContext.function { ctx, _ =>
                        ctx.number(Float64(capturedI)).toJSValue()
                    }
                    let v = fn.toJSValue()
                    if (!v.isFunction()) {
                        this.writeLog(apiName, "NotFunction", "idx=${i} expected function type")
                        return
                    }
                    let recovered = v.asFunction()
                    let result = recovered.call(jsContext.undefined().toJSValue())
                    if (!result.isNumber() || result.toNumber() != Float64(i)) {
                        this.writeLog(apiName, "ResultMismatch", "idx=${i} expected ${i} got ${result.toNumber()}")
                        return
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${batchSize} functions created+called")
        }
    }

    /// 批量创建 JSExternal（包装仓颉 SharedObject）并验证 External 类型在 Nan-boxing 下的稳定性
    public func testExternalBatchConvert(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testExternalBatchConvert") {
            let apiName = "testExternalBatchConvert"
            let jsContext = this.jsContext
            let batchSize = Int64(seed % 800) + 200
            for (i in 0..batchSize) {
                jsContext.newScope {
                    let state = HwasanTrackerState()
                    state.value = Float64(i)
                    state.seq = i
                    let ext = jsContext.external(state)
                    let v = ext.toJSValue()
                    if (!v.isExternal()) {
                        this.writeLog(apiName, "NotExternal", "idx=${i} expected external type")
                        return
                    }
                    let recovered = v.asExternal().cast<HwasanTrackerState>().getOrThrow()
                    if (recovered.value != Float64(i) || recovered.seq != i) {
                        this.writeLog(apiName, "DataMismatch", "idx=${i} expected value=${i} seq=${i}, got value=${recovered.value} seq=${recovered.seq}")
                        return
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${batchSize} externals created+recovered")
        }
    }

    /// 反复 JSPromiseCapability -> toJSValue -> asObject，验证 Promise 转换链路
    /// 原始问题：JSPromise.~init 会调用 ARKTS_DisposeGlobal，若 tag 未清除会影响析构链路
    public func testPromiseToJSValueRound(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseToJSValueRound") {
            let apiName = "testPromiseToJSValueRound"
            let jsContext = this.jsContext
            let batchSize = Int64(seed % 500) + 100
            for (i in 0..batchSize) {
                jsContext.newScope {
                    let cap = jsContext.promiseCapability()
                    let v = cap.toJSValue()
                    if (!v.isObject()) {
                        this.writeLog(apiName, "NotObject", "idx=${i} capability.toJSValue() not object")
                        return
                    }
                    // resolve 释放 Global 引用，覆盖 ~init 析构链路
                    cap.resolve(jsContext.number(Float64(i)).toJSValue())
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${batchSize} capabilities created+resolved")
        }
    }

    /// 混合创建各种 HeapObject 子类，覆盖 ARKTS_GetGlobalValue 在不同类型上的 tag-mask 路径
    public func testMixedHeapObjectBatch(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testMixedHeapObjectBatch") {
            let apiName = "testMixedHeapObjectBatch"
            let jsContext = this.jsContext
            let batchSize = Int64(seed % 1500) + 300
            for (i in 0..batchSize) {
                jsContext.newScope {
                    let kind = i % 4
                    match (kind) {
                        case 0 =>
                            let obj = jsContext.object()
                            let v = obj.toJSValue()
                            if (!v.isObject()) {
                                this.writeLog(apiName, "MixedObjTypeMismatch", "idx=${i} kind=0 expected object")
                                return
                            }
                        case 1 =>
                            let arr = jsContext.array(Array<JSValue>(2, { j: Int64 =>
                                jsContext.number(Float64(i + j)).toJSValue()
                            }))
                            let v = arr.toJSValue()
                            if (!v.isArray()) {
                                this.writeLog(apiName, "MixedArrTypeMismatch", "idx=${i} kind=1 expected array")
                                return
                            }
                        case 2 =>
                            let state = HwasanTrackerState()
                            state.value = Float64(i)
                            let ext = jsContext.external(state)
                            let v = ext.toJSValue()
                            if (!v.isExternal()) {
                                this.writeLog(apiName, "MixedExtTypeMismatch", "idx=${i} kind=2 expected external")
                                return
                            }
                        case _ =>
                            let capturedI = i
                            let fn = jsContext.function { ctx, _ =>
                                ctx.number(Float64(capturedI)).toJSValue()
                            }
                            let v = fn.toJSValue()
                            if (!v.isFunction()) {
                                this.writeLog(apiName, "MixedFnTypeMismatch", "idx=${i} kind=3 expected function")
                                return
                            }
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${batchSize} mixed HeapObjects created+converted")
        }
    }
}
