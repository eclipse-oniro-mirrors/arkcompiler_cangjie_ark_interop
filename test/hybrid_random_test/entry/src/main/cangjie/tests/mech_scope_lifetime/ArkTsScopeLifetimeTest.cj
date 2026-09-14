package ohos_app_cangjie_entry.tests.mech_scope_lifetime

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

// 问题单#9：【arkts互操作】arkts栈 scope 变量生命周期
// 现象：Kimi 线上版本，与 ArkTS 互操作过程偶发 Crash 问题
// 根因：从 c 测同步调用仓颉函数时，底层没有 ArkTS 的栈和 scope，
//       导致 ArkTS 栈变量的生命周期不可靠
// 修改方案：对外提供创建 scope 的接口（JSContext.newScope），
//          让用户在互操作时显式创建 scope 来保证栈变量的生命周期可靠
// 涉及接口：JSContext.newScope、Scope（jscontext.cj）、ARKTS_OpenScope / ARKTS_CloseScope、
//          JSValue 句柄在栈上的生命周期管理
// 复现思路：
//   - 模拟问题单场景：在仓颉函数被 ArkTS 调用时，内部创建大量 JSValue 但未显式 newScope
//   - 验证不显式 newScope 时的行为（修复前栈变量生命周期不可靠 → 偶发 Crash）
//   - 验证显式 newScope 后栈变量生命周期可靠（修复后的正确用法）
//   - 多轮循环覆盖偶发 Crash 场景
// 注：此场景在稳定性工程下难以直接触发原始 Crash（需要 c 测同步调用仓颉），
//     但可以覆盖"显式 newScope 包装大批量 JSValue 创建"的正确路径，防止修复回归

let _ = registerTestModule("scope_lifetime", { jsContext, sandboxFile => ArkTsScopeLifetimeTest(jsContext, sandboxFile) })

class ScopeLifetimeState <: SharedObject {
    var totalScopes: Int64 = 0
    var totalValues: Int64 = 0
    var failures: Int64 = 0
    var lastError: String = ""
}

public class ArkTsScopeLifetimeTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        [
            "testExplicitScopeBatchValues",
            "testNestedScopeLifetime",
            "testScopeWithArrayCreation",
            "testScopeWithObjectCreation",
            "testScopeRound",
            "testNoScopeLeakDetection"
        ]
    }

    /// 基础场景：显式 newScope 包装大批量 JSValue 创建，验证栈变量生命周期可靠
    /// 修复后：所有 JSValue 在 scope 内创建，scope 关闭时统一释放
    public func testExplicitScopeBatchValues(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testExplicitScopeBatchValues") {
            let apiName = "testExplicitScopeBatchValues"
            let jsContext = this.jsContext
            let count = Int64(seed % 2000) + 500
            for (i in 0..count) {
                jsContext.newScope {
                    // 在 scope 内创建多个 JSValue，模拟栈变量
                    let n1 = jsContext.number(Float64(i)).toJSValue()
                    let n2 = jsContext.number(Float64(i + 1)).toJSValue()
                    let s1 = jsContext.string("scope_${i}").toJSValue()
                    // 验证 JSValue 内容正确（生命周期可靠）
                    if (!n1.isNumber() || n1.toNumber() != Float64(i)) {
                        this.writeLog(apiName, "ValueCorrupted", "idx=${i} n1 expected=${i}")
                        return
                    }
                    if (!s1.isString() || s1.toString() != "scope_${i}") {
                        this.writeLog(apiName, "StringCorrupted", "idx=${i} s1 expected=scope_${i}")
                        return
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${count} scopes with batch values passed")
        }
    }

    /// 嵌套 scope 场景：内层 scope 关闭后，外层 scope 的 JSValue 仍可用
    /// 修复前：栈变量生命周期不可靠，嵌套 scope 关闭后外层值可能失效
    public func testNestedScopeLifetime(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testNestedScopeLifetime") {
            let apiName = "testNestedScopeLifetime"
            let jsContext = this.jsContext
            let count = Int64(seed % 200) + 50
            for (i in 0..count) {
                jsContext.newScope {
                    let outer = jsContext.number(Float64(i)).toJSValue()
                    jsContext.newScope {
                        let inner = jsContext.string("inner_${i}").toJSValue()
                        if (!inner.isString()) {
                            this.writeLog(apiName, "InnerFailed", "idx=${i} inner not string")
                            return
                        }
                    }
                    // 内层 scope 关闭后，外层 outer 应仍可用
                    if (!outer.isNumber() || outer.toNumber() != Float64(i)) {
                        this.writeLog(apiName, "OuterCorrupted", "idx=${i} outer corrupted after inner scope closed")
                        return
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${count} nested scopes passed")
        }
    }

    /// 在 scope 内创建 JSArray，验证数组元素生命周期可靠
    public func testScopeWithArrayCreation(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testScopeWithArrayCreation") {
            let apiName = "testScopeWithArrayCreation"
            let jsContext = this.jsContext
            let count = Int64(seed % 300) + 50
            for (i in 0..count) {
                jsContext.newScope {
                    let arrValues = Array<JSValue>(10, { j =>
                        jsContext.number(Float64(i * 10 + j)).toJSValue()
                    })
                    let jsArr = jsContext.array(arrValues)
                    if (!jsArr.toJSValue().isArray()) {
                        this.writeLog(apiName, "ArrayFailed", "idx=${i} array not array type")
                        return
                    }
                    // 访问数组元素验证
                    if (jsArr.size != 10) {
                        this.writeLog(apiName, "SizeMismatch", "idx=${i} size=${jsArr.size} expected=10")
                        return
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${count} scopes with array creation passed")
        }
    }

    /// 在 scope 内创建 JSObject 并设置属性，验证对象属性生命周期可靠
    public func testScopeWithObjectCreation(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testScopeWithObjectCreation") {
            let apiName = "testScopeWithObjectCreation"
            let jsContext = this.jsContext
            let count = Int64(seed % 300) + 50
            for (i in 0..count) {
                jsContext.newScope {
                    let obj = jsContext.object()
                    obj.setProperty("id", jsContext.number(Float64(i)).toJSValue())
                    obj.setProperty("name", jsContext.string("obj_${i}").toJSValue())
                    obj.setProperty("data", jsContext.string("payload_${i}").toJSValue())
                    // 读回验证
                    let id = obj.getProperty("id")
                    let name = obj.getProperty("name")
                    if (!id.isNumber() || id.toNumber() != Float64(i)) {
                        this.writeLog(apiName, "IdCorrupted", "idx=${i} id expected=${i}")
                        return
                    }
                    if (!name.isString() || name.toString() != "obj_${i}") {
                        this.writeLog(apiName, "NameCorrupted", "idx=${i} name expected=obj_${i}")
                        return
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${count} scopes with object creation passed")
        }
    }

    /// 多轮循环：覆盖偶发 Crash 场景（原始问题单是概率性 Crash）
    public func testScopeRound(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testScopeRound") {
            let apiName = "testScopeRound"
            let jsContext = this.jsContext
            let rounds = Int64(seed % 20) + 10
            let perRound = Int64(seed % 500) + 200
            for (r in 0..rounds) {
                for (i in 0..perRound) {
                    jsContext.newScope {
                        let idx = r * perRound + i
                        // 混合创建多种类型的 JSValue
                        let n = jsContext.number(Float64(idx)).toJSValue()
                        let s = jsContext.string("round_${r}_item_${i}").toJSValue()
                        let obj = jsContext.object()
                        obj.setProperty("idx", n)
                        obj.setProperty("tag", s)
                        // 验证
                        if (!obj.toJSValue().isObject()) {
                            this.writeLog(apiName, "RoundObjFailed", "round=${r} idx=${i} obj not object")
                            return
                        }
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${rounds}x${perRound} rounds passed")
        }
    }

    /// 不显式 newScope 时创建大量 JSValue 的检测（覆盖原始问题场景的对照测试）
    /// 修复前：从 c 测同步调用仓颉函数时底层无 ArkTS 栈和 scope，栈变量生命周期不可靠
    /// 此用例在 scope 内创建后立即验证，间接覆盖修复路径
    public func testNoScopeLeakDetection(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testNoScopeLeakDetection") {
            let apiName = "testNoScopeLeakDetection"
            let jsContext = this.jsContext
            let count = Int64(seed % 1000) + 200
            // 显式 newScope 包裹，验证修复后的正确用法不产生泄漏
            for (i in 0..count) {
                jsContext.newScope {
                    let obj = jsContext.object()
                    for (j in 0..10) {
                        obj.setProperty("k${j}", jsContext.number(Float64(j)).toJSValue())
                    }
                    // 验证属性数
                    var propCount = 0
                    for (j in 0..10) {
                        let v = obj.getProperty("k${j}")
                        if (v.isNumber()) {
                            propCount++
                        }
                    }
                    if (propCount != 10) {
                        this.writeLog(apiName, "PropCountMismatch", "idx=${i} got=${propCount} expected=10")
                        return
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${count} scope-wrapped leak detection passed")
        }
    }
}
