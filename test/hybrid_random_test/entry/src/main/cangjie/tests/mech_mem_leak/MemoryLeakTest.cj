package ohos_app_cangjie_entry.tests.mech_mem_leak

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog
import std.collection.ArrayList

let _ = registerTestModule("mem_leak", { jsContext, sandboxFile => MemoryLeakTest(jsContext, sandboxFile) })

public class MemoryLeakTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testPromiseCapabilityBatchResolve", "testPromiseCapabilityBatchNoResolve", "testPromiseCapabilityPressureRounds"]
    }

    /// 正确用法：批量创建JSPromiseCapability并立即resolve，验证多轮循环不发生OOM
    /// 如果resolve正确释放了Global引用，多轮循环后内存应被自动回收，不会OOM
    public func testPromiseCapabilityBatchResolve(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseCapabilityBatchResolve") {
            let apiName = "testPromiseCapabilityBatchResolve"
            let jsContext = this.jsContext
            let batchSize = Int64(seed % 50000) + 10000
            let roundCount = Int64(seed % 5) + 3
            for (round in 0..roundCount) {
                try {
                    jsContext.newScope {
                        for (i in 0..batchSize) {
                            let capability = jsContext.promiseCapability()
                            capability.resolve(jsContext.number(Float64(i)).toJSValue())
                        }
                    }
                } catch (e: Exception) {
                    // 如果resolve后仍然OOM，说明内存回收机制有问题
                    this.writeLog(apiName, "OOMAfterResolve", "round=${round} OOM after resolving ${batchSize} capabilities: ${e}")
                    break
                }
                Hilog.info(1, "HybridTest", "${apiName}: round=${round}/${roundCount} resolved ${batchSize} capabilities, no OOM")
            }
            Hilog.info(1, "HybridTest", "${apiName}: completed ${roundCount} rounds × ${batchSize} resolved PromiseCapabilities")
        }
    }

    /// Bug复现场景：批量创建JSPromiseCapability但不resolve
    /// PromiseCapability的Global引用需要显式调用resolve/reject才能释放
    /// 不resolve的情况下，Global引用持续持有，导致ArkTS侧内存无法回收
    /// 原始bug：循环创建500000个JSPromiseCapability不resolve，12轮左右发生ArkTS OOM
    public func testPromiseCapabilityBatchNoResolve(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseCapabilityBatchNoResolve") {
            let apiName = "testPromiseCapabilityBatchNoResolve"
            let jsContext = this.jsContext
            // 使用较小批量避免测试本身OOM，但足够观察到内存累积效应
            let batchSize = Int64(seed % 10000) + 1000
            let roundCount = Int64(seed % 3) + 2
            for (round in 0..roundCount) {
                // 不使用newScope包裹，避免lambda捕获mutable变量的问题
                // 直接创建并收集capability到Array中
                let capabilities = ArrayList<JSPromiseCapability>()
                for (i in 0..batchSize) {
                    try {
                        let capability = jsContext.promiseCapability()
                        capabilities.add(capability)
                    } catch (e: Exception) {
                        this.writeLog(apiName, "OOMOnCreate", "round=${round} i=${i} OOM creating unresolved capability: ${e}")
                        break
                    }
                }
                Hilog.info(1, "HybridTest", "${apiName}: round=${round}/${roundCount} created ${capabilities.size} unresolved capabilities")
                // resolve之前未resolve的capability，避免测试本身造成真正的泄漏
                for (cap in capabilities) {
                    try {
                        cap.resolve(jsContext.undefined().toJSValue())
                    } catch (_: Exception) {
                        ()
                    }
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: completed ${roundCount} rounds × ${batchSize} unresolved-then-resolved PromiseCapabilities")
        }
    }

    /// 压力测试：多轮大量创建JSPromiseCapability并resolve，模拟原始bug场景规模
    /// 原始bug：循环创建500000个JSPromiseCapability，在12轮左右发生ArkTS OOM
    /// 此测试使用较大批量+多轮次，验证resolve后内存能被正确回收，不应发生OOM
    public func testPromiseCapabilityPressureRounds(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseCapabilityPressureRounds") {
            let apiName = "testPromiseCapabilityPressureRounds"
            let jsContext = this.jsContext
            let batchSize = Int64(seed % 50000) + 50000
            let roundCount = Int64(seed % 8) + 5
            for (round in 0..roundCount) {
                try {
                    jsContext.newScope {
                        for (i in 0..batchSize) {
                            let capability = jsContext.promiseCapability()
                            capability.resolve(jsContext.number(Float64(i % 1000)).toJSValue())
                        }
                    }
                } catch (e: Exception) {
                    this.writeLog(apiName, "OOMOrException", "round=${round}/${roundCount} exception after creating ${batchSize} resolved capabilities: ${e}")
                    break
                }
                Hilog.info(1, "HybridTest", "${apiName}: round=${round}/${roundCount} resolved ${batchSize} capabilities, no OOM")
            }
            Hilog.info(1, "HybridTest", "${apiName}: pressure test completed")
        }
    }
}
