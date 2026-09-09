package ohos_app_cangjie_entry.tests.mech_array_ex

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

// 问题单#7：【arkts互操作】构造JSArrayEx异常
// 现象：JSArrayEx构造过程抛异常
// 根因：JSArrayEx 内部转换为 JSValue 时需要 context，但这个 context 被置空了
// 修改方案：JSArrayEx 内部转换成 JSValue 不应该在构造函数内部，应推迟到 toJSValue 函数内部
// 涉及接口：JSArrayEx<T> 构造、JSArrayEx.toJSValue(context)、JSInteropType
// 复现场景（源码问题单#4）：
//   let arr: Array = ['1111']
//   cookieCallback.getOrThrow().invert(JSArrayEx(arr))
// 在 invert 调用时，JSArrayEx 内部会执行 toJSValue 转换，若 context 在构造时已置空会抛异常
// 复现思路：
//   - 大量构造 JSArrayEx，并立即在跨互操作调用中转换为 JSValue
//   - 模拟问题单场景：构造 → 立即作为参数传给 ArkTS 函数
//   - 修复前：toJSValue 时 context 已置空，抛 NPE / BusinessException
//   - 修复后：context 在 toJSValue 调用时传入，转换正常完成

let _ = registerTestModule("array_ex", { jsContext, sandboxFile => JsArrayExConstructTest(jsContext, sandboxFile) })

class ArrayExTrackerState <: SharedObject {
    var totalCreated: Int64 = 0
    var totalConverted: Int64 = 0
    var failedCount: Int64 = 0
    var lastError: String = ""
}

public class JsArrayExConstructTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        [
            "testArrayExConstructAndConvert",
            "testArrayExImmediateUse",
            "testArrayExDeferredConvert",
            "testArrayExInCallback",
            "testArrayExBatchRound"
        ]
    }

    /// 基础场景：构造 JSArrayEx<String> 后立即调用 toJSValue(context)
    /// 修复前：context 在构造时被使用并被置空，后续 toJSValue 抛异常
    public func testArrayExConstructAndConvert(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testArrayExConstructAndConvert") {
            let apiName = "testArrayExConstructAndConvert"
            let jsContext = this.jsContext
            let count = Int64(seed % 500) + 50
            let failed = Array<Int64>(1, { j: Int64 => Int64(0) })
            for (i in 0..count) {
                jsContext.newScope {
                    let arr: Array<String> = ["item_${i}", "value_${i}", "tag_${i}"]
                    let arrayEx = JSArrayEx<String>(arr)
                    // 立即调用 toJSValue，验证 context 未被提前置空
                    let v = arrayEx.toJSValue(jsContext)
                    if (!v.isArray()) {
                        this.writeLog(apiName, "TypeMismatch", "idx=${i} expected array got non-array")
                        failed[0] = failed[0] + 1
                        return
                    }
                }
            }
            if (failed[0] > 0) {
                this.writeLog(apiName, "ConvertFailed", "${failed[0]}/${count} conversions failed")
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${count} JSArrayEx constructed and converted, failed=${failed[0]}")
        }
    }

    /// 问题单#7 复现场景：构造后立即作为参数传给 ArkTS 函数（通过互操作调用）
    /// 模拟：cookieCallback.getOrThrow().invert(JSArrayEx(arr))
    /// 修复前：参数转换时 context 已置空，抛异常
    public func testArrayExImmediateUse(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testArrayExImmediateUse") {
            let apiName = "testArrayExImmediateUse"
            let jsContext = this.jsContext
            let count = Int64(seed % 200) + 20
            for (i in 0..count) {
                jsContext.newScope {
                    let arr: Array<String> = ["data_${i}", "extra_${i}"]
                    let arrayEx = JSArrayEx<String>(arr)
                    // 立即获取 toJSValue 并将其作为 ArkTS 全局属性传递
                    let v = arrayEx.toJSValue(jsContext)
                    let global = jsContext.global
                    global.setProperty("tempArray_${i}", v)
                    // 读回验证
                    let retrieved = global.getProperty("tempArray_${i}")
                    if (!retrieved.isArray()) {
                        this.writeLog(apiName, "RetrieveFailed", "idx=${i} retrieved is not array")
                        return
                    }
                    global.setProperty("tempArray_${i}", jsContext.undefined().toJSValue())
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${count} JSArrayEx immediately used as args")
        }
    }

    /// 延迟转换场景：构造 JSArrayEx 后多次访问 size/get，最后再 toJSValue
    /// 验证 toJSValue 推迟到函数内部后，中间操作不依赖 context
    public func testArrayExDeferredConvert(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testArrayExDeferredConvert") {
            let apiName = "testArrayExDeferredConvert"
            let jsContext = this.jsContext
            let count = Int64(seed % 300) + 30
            for (i in 0..count) {
                jsContext.newScope {
                    let arr: Array<String> = ["a${i}", "b${i}", "c${i}", "d${i}"]
                    let arrayEx = JSArrayEx<String>(arr)
                    // 延迟操作：访问 size / get
                    let sz = arrayEx.size
                    if (sz != 4) {
                        this.writeLog(apiName, "SizeMismatch", "idx=${i} size=${sz} expected=4")
                        return
                    }
                    // operator [] 返回 T 直接；get 返回 Option<T>，不可直接 toString 比较
                    let first = arrayEx[0]
                    if (first != "a${i}") {
                        this.writeLog(apiName, "GetMismatch", "idx=${i} first=${first}")
                        return
                    }
                    // 最后才执行 toJSValue
                    let v = arrayEx.toJSValue(jsContext)
                    if (!v.isArray()) {
                        this.writeLog(apiName, "ConvertFailed", "idx=${i} toJSValue is not array")
                        return
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${count} JSArrayEx deferred convert passed")
        }
    }

    /// 在回调中使用 JSArrayEx：构造后立即传给 ArkTS 回调函数
    /// 修复前：回调执行时 context 可能已置空
    public func testArrayExInCallback(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testArrayExInCallback") {
            let apiName = "testArrayExInCallback"
            let jsContext = this.jsContext
            let count = Int64(seed % 100) + 10
            // 准备一个 ArkTS 函数，接收数组参数
            let global = jsContext.global
            for (i in 0..count) {
                jsContext.newScope {
                    let arr: Array<String> = ["cb_${i}", "data_${i}", "seq_${i}"]
                    let arrayEx = JSArrayEx<String>(arr)
                    let v = arrayEx.toJSValue(jsContext)
                    // 将数组作为全局函数参数传递（模拟 invert 调用）
                    global.setProperty("__arrayExCbArg", v)
                    // 通过 globalThis 访问验证
                    let retrieved = global.getProperty("__arrayExCbArg")
                    if (!retrieved.isArray()) {
                        this.writeLog(apiName, "CallbackArgFailed", "idx=${i} callback arg is not array")
                        return
                    }
                    global.setProperty("__arrayExCbArg", jsContext.undefined().toJSValue())
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${count} JSArrayEx used in callback scenario")
        }
    }

    /// 批量构造+转换循环：覆盖 context 提前置空导致的概率性异常
    public func testArrayExBatchRound(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testArrayExBatchRound") {
            let apiName = "testArrayExBatchRound"
            let jsContext = this.jsContext
            let rounds = Int64(seed % 10) + 5
            let perRound = Int64(seed % 100) + 50
            let totalFailed = Array<Int64>(1, { j: Int64 => Int64(0) })
            for (r in 0..rounds) {
                for (i in 0..perRound) {
                    jsContext.newScope {
                        let idx = r * perRound + i
                        let arr: Array<String> = ["round_${r}_item_${i}", "extra_${idx}"]
                        let arrayEx = JSArrayEx<String>(arr)
                        let v = arrayEx.toJSValue(jsContext)
                        if (!v.isArray()) {
                            totalFailed[0] = totalFailed[0] + 1
                            this.writeLog(apiName, "BatchFailed", "round=${r} idx=${i} not array")
                            return
                        }
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${rounds} rounds * ${perRound} per round, failed=${totalFailed[0]}")
        }
    }
}
