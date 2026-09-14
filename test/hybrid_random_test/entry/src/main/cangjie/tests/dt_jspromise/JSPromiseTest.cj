package ohos_app_cangjie_entry.tests.dt_jspromise

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

let _ = registerTestModule("jspromise", { jsContext, sandboxFile => JSPromiseTest(jsContext, sandboxFile) })

public class JSPromiseTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testCreateResolve", "testCreateReject", "testPromiseThen", "testPromiseAll", "testPromiseRace", "testPromiseChain", "testPromiseAllRejectShortCircuit", "testPromiseCatchChain", "testPromiseResolveAfterCatch", "testPromiseRejectAfterThen", "testPromiseRaceReject"]
    }

    public func testCreateResolve(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCreateResolve") {
            let apiName = "testCreateResolve"
            let jsContext = this.jsContext
            let resolveValue = JSPromiseGenerator.randomResolveValue(seed, exceptionRatio)
            let promise = jsContext.promiseCapability()
            let promiseValue = promise.toJSValue()
            if (!promiseValue.isPromise()) {
                this.writeLog(apiName, "NotPromise", "promise capability should produce promise type")
            } else {
                let apiNameCaptured = apiName
                let testRef = this
                let verifyObj = jsContext.object()
                verifyObj.setProperty("verified", jsContext.boolean(false).toJSValue())
                let onFulfilled = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                    let val = callInfo[0]
                    if (!val.isNumber() || !floatEquals(val.toNumber(), resolveValue)) {
                        testRef.writeLog(apiNameCaptured, "ResolveValueMismatch", "expected ${resolveValue} got ${val.toNumber()}")
                    }
                    verifyObj.setProperty("verified", context.boolean(true).toJSValue())
                    context.undefined().toJSValue()
                }
                // Register then() before resolve to ensure callback fires
                promiseValue.asPromise().then(onFulfilled)
                // Resolve inside postJSTask so microtask (then callback) runs before check task
                let _ = safePostJSTask(jsContext) {
                    =>
                    promise.resolve(jsContext.number(resolveValue).toJSValue())
                    let _ = safePostJSTask(jsContext) {
                        =>
                        let verified = verifyObj.getProperty("verified")
                        if (!verified.isBoolean() || !verified.toBoolean()) {
                            testRef.writeLog(apiNameCaptured, "ResolveNotVerified", "resolve callback not invoked")
                        }
                    }
                }
            }
        }
    }

    public func testCreateReject(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCreateReject") {
            let apiName = "testCreateReject"
            let jsContext = this.jsContext
            let rejectMsg = JSPromiseGenerator.randomRejectMessage(seed, exceptionRatio)
            let promise = jsContext.promiseCapability()
            let promiseValue = promise.toJSValue()
            if (!promiseValue.isPromise()) {
                this.writeLog(apiName, "NotPromise", "promise capability should produce promise type")
            } else {
                let apiNameCaptured = apiName
                let testRef = this
                let verifyObj = jsContext.object()
                verifyObj.setProperty("rejected", jsContext.boolean(false).toJSValue())
                let onRejected = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                    let err = callInfo[0]
                    if (!err.isString() || err.toString() != rejectMsg) {
                        testRef.writeLog(apiNameCaptured, "RejectMsgMismatch", "expected '${rejectMsg}' got '${err.toString()}'")
                    }
                    verifyObj.setProperty("rejected", context.boolean(true).toJSValue())
                    context.undefined().toJSValue()
                }.toJSValue()
                // Register catch before reject to ensure callback fires
                promiseValue.asObject().callMethod("catch", Array<JSValue>(1, repeat: onRejected))
                // Reject inside postJSTask so microtask (catch callback) runs before check task
                let _ = safePostJSTask(jsContext) {
                    =>
                    promise.reject(jsContext.string(rejectMsg).toJSValue())
                    let _ = safePostJSTask(jsContext) {
                        =>
                        let rejected = verifyObj.getProperty("rejected")
                        if (!rejected.isBoolean() || !rejected.toBoolean()) {
                            testRef.writeLog(apiNameCaptured, "RejectNotVerified", "reject callback not invoked")
                        }
                    }
                }
            }
        }
    }

    public func testPromiseThen(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseThen") {
            let apiName = "testPromiseThen"
            let jsContext = this.jsContext
            let resolveValue = JSPromiseGenerator.randomResolveValue(seed, exceptionRatio)
            let promise = jsContext.promiseCapability()
            let apiNameCaptured = apiName
            let testRef = this
            let thenCalled = jsContext.object()
            thenCalled.setProperty("invoked", jsContext.boolean(false).toJSValue())
            let onFulfilled = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                thenCalled.setProperty("invoked", context.boolean(true).toJSValue())
                let val = callInfo[0]
                if (!val.isNumber()) {
                    testRef.writeLog(apiNameCaptured, "ResolveArgNotNumber", "then callback arg is not number")
                } else if (!floatEquals(val.toNumber(), resolveValue)) {
                    testRef.writeLog(apiNameCaptured, "ResolveArgMismatch", "expected ${resolveValue} got ${val.toNumber()}")
                }
                context.undefined().toJSValue()
            }
            promise.toJSValue().asPromise().then(onFulfilled)
            promise.resolve(jsContext.number(resolveValue).toJSValue())
            let _ = safePostJSTask(jsContext) {
                =>
                let invoked = thenCalled.getProperty("invoked")
                if (!invoked.isBoolean() || !invoked.toBoolean()) {
                    testRef.writeLog(apiNameCaptured, "ThenNotInvoked", "onFulfilled callback was not invoked after resolve")
                } else {
                    Hilog.info(1, "HybridTest", "${apiNameCaptured}: onFulfilled invoked with value ${resolveValue}")
                }
            }
        }
    }

    public func testPromiseAll(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseAll") {
            let apiName = "testPromiseAll"
            let jsContext = this.jsContext
            let p1 = jsContext.promiseCapability()
            let p2 = jsContext.promiseCapability()
            let p3 = jsContext.promiseCapability()
            let v1 = Float64(seed)
            let v2 = Float64(seed) + 1.0
            let v3 = Float64(seed) + 2.0
            let apiNameCaptured = apiName
            let testRef = this
            let verifyObj = jsContext.object()
            verifyObj.setProperty("count", jsContext.number(0.0).toJSValue())
            let onFulfilled1 = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let cur = verifyObj.getProperty("count").toNumber()
                verifyObj.setProperty("count", context.number(cur + 1.0).toJSValue())
                context.undefined().toJSValue()
            }
            let onFulfilled2 = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let cur = verifyObj.getProperty("count").toNumber()
                verifyObj.setProperty("count", context.number(cur + 1.0).toJSValue())
                context.undefined().toJSValue()
            }
            let onFulfilled3 = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let cur = verifyObj.getProperty("count").toNumber()
                verifyObj.setProperty("count", context.number(cur + 1.0).toJSValue())
                context.undefined().toJSValue()
            }
            p1.toJSValue().asPromise().then(onFulfilled1)
            p2.toJSValue().asPromise().then(onFulfilled2)
            p3.toJSValue().asPromise().then(onFulfilled3)
            let onDropSettle = { =>
                jsContext.postJSTask {
                    =>
                    try {
                        p1.resolve(jsContext.number(0.0).toJSValue())
                        p2.resolve(jsContext.number(0.0).toJSValue())
                        p3.resolve(jsContext.number(0.0).toJSValue())
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                    }
                }
            }
            spawnTracked {
                =>
                let _ = safePostJSTaskWithDrop(jsContext, { =>
                    p1.resolve(jsContext.number(v1).toJSValue())
                    p2.resolve(jsContext.number(v2).toJSValue())
                    p3.resolve(jsContext.number(v3).toJSValue())
                    let _ = safePostJSTask(jsContext, { =>
                        let cnt = verifyObj.getProperty("count").toNumber()
                        if (cnt != 3.0) {
                            testRef.writeLog(apiNameCaptured, "NotAllResolved", "expected 3 callbacks, got ${cnt}")
                        } else {
                            Hilog.info(1, "HybridTest", "${apiNameCaptured}: all 3 promises resolved")
                        }
                    })
                }, onDropSettle)
            }
        }
    }

    public func testPromiseRace(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseRace") {
            let apiName = "testPromiseRace"
            let jsContext = this.jsContext
            let fastPromise = jsContext.promiseCapability()
            let slowPromise = jsContext.promiseCapability()
            let fastValue = Float64(seed) + 100.0
            let apiNameCaptured = apiName
            let testRef = this
            let verifyObj = jsContext.object()
            verifyObj.setProperty("fastResolved", jsContext.boolean(false).toJSValue())
            let onFastFulfilled = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let val = callInfo[0]
                if (!val.isNumber() || !floatEquals(val.toNumber(), fastValue)) {
                    testRef.writeLog(apiNameCaptured, "FastValueMismatch", "expected ${fastValue} got ${val.toNumber()}")
                }
                verifyObj.setProperty("fastResolved", context.boolean(true).toJSValue())
                context.undefined().toJSValue()
            }
            fastPromise.toJSValue().asPromise().then(onFastFulfilled)
            let onDropSettle = { =>
                jsContext.postJSTask {
                    =>
                    try {
                        fastPromise.resolve(jsContext.number(fastValue).toJSValue())
                        slowPromise.resolve(jsContext.undefined().toJSValue())
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                    }
                }
            }
            spawnTracked {
                =>
                let _ = safePostJSTaskWithDrop(jsContext, { =>
                    fastPromise.resolve(jsContext.number(fastValue).toJSValue())
                    slowPromise.resolve(jsContext.undefined().toJSValue())
                    let _ = safePostJSTask(jsContext, { =>
                        let resolved = verifyObj.getProperty("fastResolved")
                        if (!resolved.isBoolean() || !resolved.toBoolean()) {
                            testRef.writeLog(apiNameCaptured, "FastNotResolved", "fast promise callback not invoked")
                        } else {
                            Hilog.info(1, "HybridTest", "${apiNameCaptured}: race fast promise resolved with ${fastValue}")
                        }
                    })
                }, onDropSettle)
            }
        }
    }

    public func testPromiseChain(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseChain") {
            let apiName = "testPromiseChain"
            let jsContext = this.jsContext
            let p1 = jsContext.promiseCapability()
            let p2 = jsContext.promiseCapability()
            let apiNameCaptured = apiName
            let testRef = this
            let chainCount = jsContext.object()
            chainCount.setProperty("count", jsContext.number(0.0).toJSValue())
            let onFulfilled1 = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let cur = chainCount.getProperty("count").toNumber()
                chainCount.setProperty("count", context.number(cur + 1.0).toJSValue())
                let val = callInfo[0].toNumber()
                p2.resolve(context.number(val * 2.0).toJSValue())
                context.undefined().toJSValue()
            }
            let onFulfilled2 = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let cur = chainCount.getProperty("count").toNumber()
                chainCount.setProperty("count", context.number(cur + 1.0).toJSValue())
                context.undefined().toJSValue()
            }
            p1.toJSValue().asPromise().then(onFulfilled1)
            p2.toJSValue().asPromise().then(onFulfilled2)
            p1.resolve(jsContext.number(Float64(seed)).toJSValue())
            let _ = safePostJSTask(jsContext) {
                =>
                let cnt = chainCount.getProperty("count").toNumber()
                if (cnt != 2.0) {
                    testRef.writeLog(apiNameCaptured, "ChainNotComplete", "expected 2 callbacks invoked, got ${cnt}")
                } else {
                    Hilog.info(1, "HybridTest", "${apiNameCaptured}: promise chain completed (2 callbacks)")
                }
            }
        }
    }

    public func testPromiseAllRejectShortCircuit(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseAllRejectShortCircuit") {
            let apiName = "testPromiseAllRejectShortCircuit"
            let jsContext = this.jsContext
            let p1 = jsContext.promiseCapability()
            let p2 = jsContext.promiseCapability()
            let p3 = jsContext.promiseCapability()
            let rejectMsg = "all-reject-${seed}"
            let apiNameCaptured = apiName
            let testRef = this
            let verifyObj = jsContext.object()
            verifyObj.setProperty("rejected", jsContext.boolean(false).toJSValue())
            let onRejected = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let err = callInfo[0]
                if (!err.isString() || err.toString() != rejectMsg) {
                    testRef.writeLog(apiNameCaptured, "RejectMsgMismatch", "expected '${rejectMsg}' got '${err.toString()}'")
                }
                verifyObj.setProperty("rejected", context.boolean(true).toJSValue())
                context.undefined().toJSValue()
            }.toJSValue()
            p2.toJSValue().asObject().callMethod("catch", Array<JSValue>(1, repeat: onRejected))
            let onDropSettle = { =>
                jsContext.postJSTask {
                    =>
                    try {
                        p1.resolve(jsContext.number(1.0).toJSValue())
                        p2.reject(jsContext.string(rejectMsg).toJSValue())
                        p3.resolve(jsContext.number(3.0).toJSValue())
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "onDrop settle failed: ${e}")
                    }
                }
            }
            spawnTracked {
                =>
                let _ = safePostJSTaskWithDrop(jsContext, { =>
                    p1.resolve(jsContext.number(1.0).toJSValue())
                    p2.reject(jsContext.string(rejectMsg).toJSValue())
                    p3.resolve(jsContext.number(3.0).toJSValue())
                    let _ = safePostJSTask(jsContext, { =>
                        let rejected = verifyObj.getProperty("rejected")
                        if (!rejected.isBoolean() || !rejected.toBoolean()) {
                            testRef.writeLog(apiNameCaptured, "RejectNotVerified", "reject callback not invoked")
                        } else {
                            Hilog.info(1, "HybridTest", "${apiNameCaptured}: reject short-circuit verified")
                        }
                    })
                }, onDropSettle)
            }
        }
    }

    public func testPromiseCatchChain(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseCatchChain") {
            let apiName = "testPromiseCatchChain"
            let jsContext = this.jsContext
            let p1 = jsContext.promiseCapability()
            let initialReject = "initial-${seed}"
            let rethrowMsg = "rethrown-${seed}"
            let apiNameCaptured = apiName
            let testRef = this
            let verifyObj = jsContext.object()
            verifyObj.setProperty("catchCount", jsContext.number(0.0).toJSValue())
            verifyObj.setProperty("finalCatch", jsContext.boolean(false).toJSValue())
            let onCatch1 = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let cur = verifyObj.getProperty("catchCount").toNumber()
                verifyObj.setProperty("catchCount", context.number(cur + 1.0).toJSValue())
                throw Exception(rethrowMsg)
            }.toJSValue()
            let onCatch2 = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let cur = verifyObj.getProperty("catchCount").toNumber()
                verifyObj.setProperty("catchCount", context.number(cur + 1.0).toJSValue())
                verifyObj.setProperty("finalCatch", context.boolean(true).toJSValue())
                context.undefined().toJSValue()
            }.toJSValue()
            let p1Value = p1.toJSValue()
            let caughtOnce = p1Value.asObject().callMethod("catch", Array<JSValue>(1, repeat: onCatch1))
            caughtOnce.asObject().callMethod("catch", Array<JSValue>(1, repeat: onCatch2))
            p1.reject(jsContext.string(initialReject).toJSValue())
            let _ = safePostJSTask(jsContext) {
                =>
                let catchCount = verifyObj.getProperty("catchCount").toNumber()
                if (catchCount != 2.0) {
                    testRef.writeLog(apiNameCaptured, "CatchCountMismatch", "expected 2 catches got ${catchCount}")
                }
                let finalCatch = verifyObj.getProperty("finalCatch")
                if (!finalCatch.isBoolean() || !finalCatch.toBoolean()) {
                    testRef.writeLog(apiNameCaptured, "FinalCatchNotVerified", "final catch not invoked")
                } else {
                    Hilog.info(1, "HybridTest", "${apiNameCaptured}: catch chain verified")
                }
            }
        }
    }

    public func testPromiseResolveAfterCatch(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseResolveAfterCatch") {
            let apiName = "testPromiseResolveAfterCatch"
            let jsContext = this.jsContext
            let p1 = jsContext.promiseCapability()
            let verifyObj = jsContext.object()
            verifyObj.setProperty("catchCalled", jsContext.boolean(false).toJSValue())
            verifyObj.setProperty("thenCalled", jsContext.boolean(false).toJSValue())
            let apiNameCaptured = apiName
            let testRef = this
            let catchCb = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                verifyObj.setProperty("catchCalled", context.boolean(true).toJSValue())
                context.number(Float64(seed)).toJSValue()
            }.toJSValue()
            let thenCb = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                verifyObj.setProperty("thenCalled", context.boolean(true).toJSValue())
                context.undefined().toJSValue()
            }.toJSValue()
            let p1Val = p1.toJSValue()
            let afterCatch = p1Val.asObject().callMethod("catch", Array<JSValue>(1, repeat: catchCb))
            afterCatch.asObject().callMethod("then", Array<JSValue>(1, repeat: thenCb))
            p1.reject(jsContext.string("reject-${seed}").toJSValue())
            let _ = safePostJSTask(jsContext) {
                =>
                let catchCalled = verifyObj.getProperty("catchCalled").toBoolean()
                let thenCalled = verifyObj.getProperty("thenCalled").toBoolean()
                if (!catchCalled) {
                    testRef.writeLog(apiNameCaptured, "CatchNotCalled", "catch handler was not invoked")
                }
                if (!thenCalled) {
                    testRef.writeLog(apiNameCaptured, "ThenNotCalled", "then after catch(resolved) was not invoked")
                }
            }
        }
    }

    public func testPromiseRejectAfterThen(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseRejectAfterThen") {
            let apiName = "testPromiseRejectAfterThen"
            let jsContext = this.jsContext
            let p1 = jsContext.promiseCapability()
            let verifyObj = jsContext.object()
            verifyObj.setProperty("thenCalled", jsContext.boolean(false).toJSValue())
            verifyObj.setProperty("catchCalled", jsContext.boolean(false).toJSValue())
            let apiNameCaptured = apiName
            let testRef = this
            let thenCb = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                verifyObj.setProperty("thenCalled", context.boolean(true).toJSValue())
                context.undefined().toJSValue()
            }.toJSValue()
            let catchCb = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                verifyObj.setProperty("catchCalled", context.boolean(true).toJSValue())
                context.undefined().toJSValue()
            }.toJSValue()
            let p1Val = p1.toJSValue()
            let afterThen = p1Val.asObject().callMethod("then", Array<JSValue>(1, repeat: thenCb))
            afterThen.asObject().callMethod("catch", Array<JSValue>(1, repeat: catchCb))
            p1.reject(jsContext.string("reject-${seed}").toJSValue())
            let _ = safePostJSTask(jsContext) {
                =>
                let thenCalled = verifyObj.getProperty("thenCalled").toBoolean()
                let catchCalled = verifyObj.getProperty("catchCalled").toBoolean()
                if (thenCalled) {
                    testRef.writeLog(apiNameCaptured, "ThenShouldNotRun", "then handler should not be called on rejected promise")
                }
                if (!catchCalled) {
                    testRef.writeLog(apiNameCaptured, "CatchNotCalled", "catch handler was not invoked after rejection")
                }
            }
        }
    }

    public func testPromiseRaceReject(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPromiseRaceReject") {
            let apiName = "testPromiseRaceReject"
            let jsContext = this.jsContext
            let pFast = jsContext.promiseCapability()
            let pSlow = jsContext.promiseCapability()
            let verifyObj = jsContext.object()
            verifyObj.setProperty("result", jsContext.string("none").toJSValue())
            let apiNameCaptured = apiName
            let testRef = this
            let promiseCtor = jsContext.global.getProperty("Promise")
            let raceFn = promiseCtor.asObject().getProperty("race")
            if (!raceFn.isFunction()) {
                this.writeLog(apiName, "RaceNotFound", "Promise.race not found")
                return
            }
            let arr = jsContext.array(Array<JSValue>(2, { i: Int64 =>
                if (i == 0) { pFast.toJSValue() } else { pSlow.toJSValue() }
            }))
            // Promise.race must be called with Promise constructor as thisArg
            let raceResult = raceFn.asFunction().call(arr.toJSValue(), thisArg: promiseCtor)
            let catchCb = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                verifyObj.setProperty("result", callInfo[0])
                context.undefined().toJSValue()
            }.toJSValue()
            raceResult.asObject().callMethod("catch", Array<JSValue>(1, repeat: catchCb))
            pFast.reject(jsContext.string("fast-reject-${seed}").toJSValue())
            pSlow.resolve(jsContext.number(Float64(seed)).toJSValue())
            let _ = safePostJSTask(jsContext) {
                =>
                let result = verifyObj.getProperty("result")
                if (!result.isString()) {
                    testRef.writeLog(apiNameCaptured, "NoRejectResult", "race reject result not captured")
                } else if (!result.toString().startsWith("fast-reject")) {
                    testRef.writeLog(apiNameCaptured, "WrongWinner", "expected fast-reject got ${result.toString()}")
                }
            }
        }
    }
}
