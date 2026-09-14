package ohos_app_cangjie_entry.tests.mech_thread_safety

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

let _ = registerTestModule("thread_safety", { jsContext, sandboxFile => ThreadSafetyTest(jsContext, sandboxFile) })

public class ThreadSafetyTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testSpawnAccessJSValue", "testSpawnCallJSFunction", "testCrossContextAccess"]
    }

    public func testSpawnAccessJSValue(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testSpawnAccessJSValue") {
            let jsContext = this.jsContext
            let capturedVal = jsContext.number(Float64(seed)).toJSValue()
            let promise = jsContext.promiseCapability()
            let onDropSettle = { =>
                jsContext.postJSTask {
                    =>
                    try {
                        promise.resolve(jsContext.string("dropped").toJSValue())
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                    }
                }
            }
            spawnTracked {
                =>
                try {
                    let _ = capturedVal.toNumber()
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        promise.resolve(jsContext.string("no-exception").toJSValue())
                    }, onDropSettle)
                } catch (e: Exception) {
                    let msg = e.message
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        promise.resolve(jsContext.string("caught:${msg}").toJSValue())
                    }, onDropSettle)
                }
            }
            promise.toJSValue()
        }
    }

    public func testSpawnCallJSFunction(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testSpawnCallJSFunction") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsAdd = global.getProperty("arktsAdd")
            if (!arktsAdd.isFunction()) {
                this.writeLog("testSpawnCallJSFunction", "RunnerNotFound", "arktsAdd not injected")
                return
            }
            let capturedFunc = arktsAdd.asFunction()
            let promise = jsContext.promiseCapability()
            let onDropSettle = { =>
                jsContext.postJSTask {
                    =>
                    try {
                        promise.resolve(jsContext.string("dropped").toJSValue())
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                    }
                }
            }
            spawnTracked {
                =>
                try {
                    let input = RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        let _ = capturedFunc.call(jsContext.number(input).toJSValue())
                        promise.resolve(jsContext.string("no-exception").toJSValue())
                    }, onDropSettle)
                } catch (e: Exception) {
                    let msg = e.message
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        promise.resolve(jsContext.string("caught:${msg}").toJSValue())
                    }, onDropSettle)
                }
            }
            promise.toJSValue()
        }
    }

    public func testCrossContextAccess(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCrossContextAccess") {
            let apiName = "testCrossContextAccess"
            let jsContext = this.jsContext
            let valFromMainCtx = jsContext.number(Float64(seed)).toJSValue()
            let apiNameCaptured = apiName
            let testRef = this
            let promise = jsContext.promiseCapability()
            let onDropSettle = { =>
                jsContext.postJSTask {
                    =>
                    try {
                        promise.resolve(jsContext.string("dropped").toJSValue())
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                    }
                }
            }
            spawnTracked {
                =>
                try {
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        let sameCtxVal = jsContext.number(Float64(seed)).toJSValue()
                        let equal = valFromMainCtx.strictEqual(sameCtxVal)
                        if (!equal) {
                            testRef.writeLog(apiNameCaptured, "CrossContextNotEqual", "same value not strictEqual across postJSTask")
                        }
                        promise.resolve(jsContext.string("cross-context-ok").toJSValue())
                    }, onDropSettle)
                } catch (e: Exception) {
                    let msg = e.message
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        testRef.writeLog(apiNameCaptured, "SpawnException", msg)
                        promise.resolve(jsContext.string("cross-context-err").toJSValue())
                    }, onDropSettle)
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: dispatched cross-context verification")
        }
    }
}
