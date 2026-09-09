package ohos_app_cangjie_entry.tests.mech_async_sched

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

let _ = registerTestModule("async_sched", { jsContext, sandboxFile => AsyncSchedTest(jsContext, sandboxFile) })

var jsRuntimeCache: Option<JSRuntime> = None

func getOrCreateJSRuntime(): JSRuntime {
    match (jsRuntimeCache) {
        case Some(v) => v
        case None =>
            let v = JSRuntime()
            jsRuntimeCache = Some(v)
            v
    }
}

public class AsyncSchedTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testIsInBindThread", "testPostJSTask", "testJSRuntime", "testNewScopeInBindThread", "testNewScopeInSpawnException", "testNewScopeNested", "testSpawnUIThread", "testHighFrequencyPostJSTask"]
    }

    public func testIsInBindThread(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testIsInBindThread") {
            let apiName = "testIsInBindThread"
            let jsContext = this.jsContext
            let result = jsContext.isInBindThread()
            if (!result) {
                this.writeLog(apiName, "UnexpectedFalse", "isInBindThread returned false on JS thread")
            }
        }
    }

    public func testPostJSTask(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPostJSTask") {
            let apiName = "testPostJSTask"
            let jsContext = this.jsContext
            let apiNameCaptured = apiName
            let testRef = this
            spawnTracked {
                =>
                try {
                    let _ = safePostJSTask(jsContext) {
                        =>
                        Hilog.info(1, "HybridTest", "${apiNameCaptured}: postJSTask callback executed")
                    }
                } catch (e: Exception) {
                    let msg = e.message
                    let _ = safePostJSTask(jsContext) {
                        =>
                        testRef.writeLog(apiNameCaptured, "SpawnException", msg)
                    }
                }
            }
        }
    }

    public func testJSRuntime(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testJSRuntime") {
            let apiName = "testJSRuntime"
            let jsContext = this.jsContext
            let runtime = getOrCreateJSRuntime()
            let ctx = runtime.mainContext
            let numVal = ctx.number(Float64(seed)).toJSValue()
            if (!numVal.isNumber()) {
                this.writeLog(apiName, "TypeMismatch", "expected number from JSRuntime mainContext")
            }
            let strVal = ctx.string("test_${seed}").toJSValue()
            if (!strVal.isString()) {
                this.writeLog(apiName, "TypeMismatch", "expected string from JSRuntime mainContext")
            }
            let boolVal = ctx.boolean(true).toJSValue()
            if (!boolVal.isBoolean()) {
                this.writeLog(apiName, "TypeMismatch", "expected boolean from JSRuntime mainContext")
            }
        }
    }

    public func testNewScopeInBindThread(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testNewScopeInBindThread") {
            let apiName = "testNewScopeInBindThread"
            let jsContext = this.jsContext
            if (!jsContext.isInBindThread()) {
                this.writeLog(apiName, "NotInBindThread", "expected to be in bind thread")
            } else {
                jsContext.newScope {
                    let strVal = jsContext.string("scope_test_${seed}").toJSValue()
                    if (!strVal.isString()) {
                        this.writeLog(apiName, "ScopeStringFail", "failed to create string in scope")
                    }
                    Hilog.info(1, "HybridTest", "${apiName}: scope test executed in bind thread")
                }
            }
        }
    }

    public func testNewScopeInSpawnException(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testNewScopeInSpawnException") {
            let apiName = "testNewScopeInSpawnException"
            let jsContext = this.jsContext
            let apiNameCaptured = apiName
            let testRef = this
            let promise = jsContext.promiseCapability()
            spawnTracked {
                =>
                var caught = false
                try {
                    jsContext.newScope {
                        let _ = jsContext.string("should_fail_in_spawn").toJSValue()
                    }
                } catch (e: Exception) {
                    caught = true
                }
                let _caught = caught
                let _ = safePostJSTaskWithDrop(jsContext, { =>
                    if (!_caught) {
                        testRef.writeLog(apiNameCaptured, "NoException", "newScope in spawn should throw but did not")
                    }
                    let resObj = jsContext.object()
                    resObj.setProperty("ok", jsContext.boolean(_caught).toJSValue())
                    resObj.setProperty("msg", jsContext.string(if (_caught) { "ok" } else { "no exception" }).toJSValue())
                    promise.resolve(resObj.toJSValue())
                }, { =>
                    jsContext.postJSTask {
                        =>
                        try {
                            let resObj = jsContext.object()
                            resObj.setProperty("ok", jsContext.boolean(false).toJSValue())
                            resObj.setProperty("msg", jsContext.string("onDrop").toJSValue())
                            promise.resolve(resObj.toJSValue())
                        } catch (e: Exception) {
                            Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                        }
                    }
                })
            }
            this.handleCaseResult(jsContext, promise.toJSValue(), apiName)
        }
    }

    public func testNewScopeNested(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testNewScopeNested") {
            let apiName = "testNewScopeNested"
            let jsContext = this.jsContext
            let apiNameCaptured = apiName
            let testRef = this
            let promise = jsContext.promiseCapability()
            spawnTracked {
                =>
                let _ = safePostJSTaskWithDrop(jsContext, { =>
                    jsContext.newScope {
                        let outerStr = jsContext.string("outer_scope").toJSValue()
                        if (!outerStr.isString()) {
                            testRef.writeLog(apiNameCaptured, "OuterScopeFail", "outer failed")
                        }
                        jsContext.newScope {
                            let innerStr = jsContext.string("inner_scope").toJSValue()
                            if (!innerStr.isString()) {
                                testRef.writeLog(apiNameCaptured, "InnerScopeFail", "inner failed")
                            }
                        }
                        Hilog.info(1, "HybridTest", "${apiNameCaptured}: nested scope test ok")
                        let resObj = jsContext.object()
                        resObj.setProperty("ok", jsContext.boolean(true).toJSValue())
                        resObj.setProperty("msg", jsContext.string("ok").toJSValue())
                        promise.resolve(resObj.toJSValue())
                    }
                }, { =>
                    jsContext.postJSTask {
                        =>
                        try {
                            let resObj = jsContext.object()
                            resObj.setProperty("ok", jsContext.boolean(false).toJSValue())
                            resObj.setProperty("msg", jsContext.string("onDrop").toJSValue())
                            promise.resolve(resObj.toJSValue())
                        } catch (e: Exception) {
                            Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                        }
                    }
                })
            }
            this.handleCaseResult(jsContext, promise.toJSValue(), apiName)
        }
    }

    public func testSpawnUIThread(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testSpawnUIThread") {
            let apiName = "testSpawnUIThread"
            let jsContext = this.jsContext
            let apiNameCaptured = apiName
            let testRef = this
            let promise = jsContext.promiseCapability()
            spawnTracked {
                =>
                let _ = safePostJSTaskWithDrop(jsContext, { =>
                    jsContext.newScope {
                        let strVal = jsContext.string("spawn_uitask_${seed}").toJSValue()
                        let resObj = jsContext.object()
                        if (!strVal.isString()) {
                            testRef.writeLog(apiNameCaptured, "StringNotCreated", "failed to create string")
                            resObj.setProperty("ok", jsContext.boolean(false).toJSValue())
                            resObj.setProperty("msg", jsContext.string("string not created").toJSValue())
                            promise.resolve(resObj.toJSValue())
                        } else {
                            let scopeStr = jsContext.string("scope_in_uitask").toJSValue()
                            if (!scopeStr.isString()) {
                                testRef.writeLog(apiNameCaptured, "ScopeFail", "failed")
                            }
                            Hilog.info(1, "HybridTest", "${apiNameCaptured}: scope test ok")
                            resObj.setProperty("ok", jsContext.boolean(true).toJSValue())
                            resObj.setProperty("msg", jsContext.string("ok").toJSValue())
                            promise.resolve(resObj.toJSValue())
                        }
                    }
                }, { =>
                    jsContext.postJSTask {
                        =>
                        try {
                            let resObj = jsContext.object()
                            resObj.setProperty("ok", jsContext.boolean(false).toJSValue())
                            resObj.setProperty("msg", jsContext.string("onDrop").toJSValue())
                            promise.resolve(resObj.toJSValue())
                        } catch (e: Exception) {
                            Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                        }
                    }
                })
            }
            this.handleCaseResult(jsContext, promise.toJSValue(), apiName)
        }
    }

    public func testHighFrequencyPostJSTask(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testHighFrequencyPostJSTask") {
            let apiName = "testHighFrequencyPostJSTask"
            let jsContext = this.jsContext
            let counter = jsContext.object()
            let totalTasks = Int64(seed % 500) + 500
            counter.setProperty("count", jsContext.number(0.0).toJSValue())
            counter.setProperty("expected", jsContext.number(Float64(totalTasks)).toJSValue())
            let apiNameCaptured = apiName
            let testRef = this
            var dispatched = Int64(0)
            for (i in 0..totalTasks) {
                let ok = safePostJSTask(jsContext) {
                    =>
                    let cur = counter.getProperty("count")
                    let next = cur.toNumber() + 1.0
                    counter.setProperty("count", jsContext.number(next).toJSValue())
                    if (next == Float64(totalTasks)) {
                        Hilog.info(1, "HybridTest", "${apiNameCaptured}: all ${totalTasks} tasks done, final=${next}")
                    }
                }
                if (ok) {
                    dispatched = dispatched + 1
                }
            }
            if (dispatched != totalTasks) {
                this.writeLog(apiName, "DispatchBackpressure", "expected ${totalTasks} dispatched ${dispatched} (dropped=${totalTasks - dispatched})")
            }
            let expectedFinal = Float64(dispatched)
            let _ = safePostJSTask(jsContext) {
                =>
                let finalCount = counter.getProperty("count").toNumber()
                if (finalCount != expectedFinal) {
                    testRef.writeLog(apiNameCaptured, "FinalCountMismatch", "expected ${expectedFinal} got ${finalCount}")
                }
            }
        }
    }
}
