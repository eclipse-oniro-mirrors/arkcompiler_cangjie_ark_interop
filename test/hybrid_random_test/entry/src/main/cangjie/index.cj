package ohos_app_cangjie_entry

import ohos.ark_interop.JSModule
import ohos.ark_interop.JSContext
import ohos.ark_interop.JSCallInfo
import ohos.ark_interop.JSValue
import ohos.ark_interop.JSObject
import ohos.ark_interop.ToJSValue
import std.collection.ArrayList
import std.collection.concurrent.ConcurrentHashMap
import std.collection.concurrent.ConcurrentLinkedQueue
import std.sync.AtomicBool
import std.sync.AtomicInt64
import std.time.DateTime
import std.core.Future
import kit.PerformanceAnalysisKit.Hilog
import ohos_app_cangjie_entry.utils.*
import ohos_app_cangjie_entry.interop_apis.*
import ohos_app_cangjie_entry.tests.cl_arkts_call_cj.*
import ohos_app_cangjie_entry.tests.cl_cj_wrap_arkts_cb.*
import ohos_app_cangjie_entry.tests.cl_ark_interface.*
import ohos_app_cangjie_entry.tests.cl_cj_export.*
import ohos_app_cangjie_entry.tests.cl_global_arkts.*
import ohos_app_cangjie_entry.tests.cl_native_interface.*
import ohos_app_cangjie_entry.tests.dt_jsvalue.*
import ohos_app_cangjie_entry.tests.dt_jsobject.*
import ohos_app_cangjie_entry.tests.dt_jsarray.*
import ohos_app_cangjie_entry.tests.dt_jsclass.*
import ohos_app_cangjie_entry.tests.dt_jsfunction.*
import ohos_app_cangjie_entry.tests.dt_jspromise.*
import ohos_app_cangjie_entry.tests.mech_register.*
import ohos_app_cangjie_entry.tests.mech_exception.*
import ohos_app_cangjie_entry.tests.mech_async_sched.*
import ohos_app_cangjie_entry.tests.mech_thread_safety.*
import ohos_app_cangjie_entry.tests.mech_lifecycle.*
import ohos_app_cangjie_entry.tests.mech_array_ex.*
import ohos_app_cangjie_entry.tests.mech_loader_cache.*
import ohos_app_cangjie_entry.tests.mech_scope_lifetime.*
import ohos_app_cangjie_entry.tests.mech_concurrency.*
import ohos_app_cangjie_entry.tests.mech_mem_leak.*
import ohos_app_cangjie_entry.tests.mech_jscontext_bind.*
import ohos_app_cangjie_entry.tests.mech_hwasan.*
import ohos_app_cangjie_entry.tests.dt_bigint.*
import ohos_app_cangjie_entry.tests.dt_arraybuffer.*
import ohos_app_cangjie_entry.tests.dt_boundary.*
import ohos_app_cangjie_entry.tests.cl_cj_call_arkts.*
import ohos_app_cangjie_entry.tests.cl_interop_macro.*

var testRunner: Option<TestInit> = None

func workerLoop(threadId: Int64, isRandom: Bool, exceptionRatio: Float64, workerDelay: Int64): Unit {
    let modeStr = if (isRandom) { "Random" } else { "Sequential" }
    Hilog.info(1, "HybridTest", "Worker ${threadId}: entered workerLoop (mode=${modeStr})")
    let jsContext = globalJSContext.getOrThrow()
    let session = TestSession.instance
    var iterCount: Int64 = 0

    while (!session.stopSignal.load()) {
        // fail-fast: 检测到错误立即停止所有 worker
        if (errorCount.load() > 0) {
            Hilog.info(1, "HybridTest", "Worker ${threadId}: error detected (count=${errorCount.load()}), stopping")
            session.stopSignal.store(true)
            session.isRunning.store(false)
            break
        }
        // 检查是否达到目标运行次数
        let target = session.targetRunCount.load()
        if (target > 0 && session.totalRunCount.load() >= target) {
            Hilog.info(1, "HybridTest", "Worker ${threadId}: reached target ${target}, stopping")
            session.stopSignal.store(true)
            session.isRunning.store(false)
            break
        }
        iterCount = iterCount + 1
        var waitCount = 0
        while (session.postJSTaskDepth.load() > 500 && !session.stopSignal.load()) {
            sleep(10 * Duration.millisecond)
            waitCount = waitCount + 1
            if (waitCount > 100) {
                Hilog.warn(1, "HybridTest", "Worker ${threadId}: queue depth stuck at ${session.postJSTaskDepth.load()} for 1s, skipping iteration")
                break
            }
        }
        if (session.stopSignal.load()) {
            break
        }
        if (iterCount % 100 == 1) {
            Hilog.info(1, "HybridTest", "Worker ${threadId}: iter ${iterCount}")
        }
        let taskDone = AtomicBool(false)
        let ok = safePostJSTask(jsContext) {
            =>
            let runnerOpt = synchronized (session.testRunnerLock) {
                testRunner
            }
            match (runnerOpt) {
                case Some(runner) =>
                    try {
                        let apiName = runner.run(threadId, isRandom, exceptionRatio)
                        let newCount = session.totalRunCount.fetchAdd(1) + 1
                        if (newCount <= 3 || newCount % 100 == 0) {
                            Hilog.info(1, "HybridTest", "Worker ${threadId}: run '${apiName}' totalRun=${newCount}")
                        }
                        session.runCountMap.addIfAbsent(apiName, AtomicInt64(0))
                        match (session.runCountMap.get(apiName)) {
                            case Some(counter) => counter.fetchAdd(1)
                            case None => ()
                        }
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "Worker ${threadId}: run error: ${e}")
                        errorLogQueue.add("Worker ${threadId}: ${e}")
                        errorCount.fetchAdd(1)
                        session.stopSignal.store(true)
                        session.isRunning.store(false)
                    }
                case None =>
                    Hilog.warn(1, "HybridTest", "Worker ${threadId}: runnerOpt=None")
            }
            taskDone.store(true)
        }
        if (!ok) {
            sleep(1 * Duration.millisecond)
            continue
        }
        var waitMs: Int64 = 0
        while (!taskDone.load() && !session.stopSignal.load()) {
            sleep(1 * Duration.millisecond)
            waitMs = waitMs + 1
            if (waitMs % 1000 == 0) {
                Hilog.warn(1, "HybridTest", "Worker ${threadId}: waiting taskDone for ${waitMs}ms")
            }
        }
        if (session.stopSignal.load()) {
            break
        }
        var asyncWaitMs: Int64 = 0
        while (session.testPendingAsync.load() > 0 && !session.stopSignal.load()) {
            sleep(1 * Duration.millisecond)
            asyncWaitMs = asyncWaitMs + 1
            if (asyncWaitMs >= ASYNC_WAIT_TIMEOUT_MS) {
                Hilog.warn(1, "HybridTest", "Worker ${threadId}: async wait timeout after ${asyncWaitMs}ms, pending=${session.testPendingAsync.load()}, cancelling orphans and resetting")
                let orphans = session.swapOrphanFutures()
                for (f in orphans) {
                    try {
                        f.cancel()
                    } catch (e: Exception) {
                        ()
                    }
                }
                session.testPendingAsync.store(0)
                break
            }
        }
        if (workerDelay > 0) {
            sleep(workerDelay * Duration.millisecond)
        }
    }
    Hilog.info(1, "HybridTest", "Worker ${threadId} stopped")
}

func startTest(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let moduleNames = callInfo[0].asArray()
    let seed = callInfo[1].toNumber()
    let exceptionRatio = callInfo[2].toNumber()
    let isRandom = callInfo[3].toBoolean()
    let threadCount = callInfo[4].toNumber()
    let workerDelay = callInfo[5].toNumber()
    let targetRunCount = callInfo[6].toNumber()

    let modules = Array<String>(moduleNames.size, { i: Int64 =>
        moduleNames[i].toString()
    })

    let session = TestSession.instance
    if (session.isRunning.load()) {
        Hilog.warn(1, "HybridTest", "startTest called while running, ignoring")
        return runtime.string("already-running").toJSValue()
    }

    session.resetForStart()
    session.isRandomMode.store(isRandom)

    var targetInt = Int64(targetRunCount)
    if (targetInt < 0) {
        targetInt = 0
    }
    session.targetRunCount.store(targetInt)

    let seedUInt = UInt64(seed)
    let sandboxFile = "/data/storage/el2/base/haps/entry/files/ErrorLog-${DateTime.now().format("yyyyMMddHHmmss")}.csv"
    let runner = TestInit(runtime, modules, sandboxFile, seedUInt)
    synchronized (session.testRunnerLock) {
        testRunner = Some(runner)
    }
    session.apiCount.store(runner.getInstanceArrSize())

    var threadCountInt = Int64(threadCount)
    if (threadCountInt < 1) {
        threadCountInt = 1
    }
    session.activeThreadCount.store(threadCountInt)

    var delayInt = Int64(workerDelay)
    if (delayInt < 1) {
        delayInt = 1
    }
    let finalDelay = delayInt

    writeCsvHeader(sandboxFile, seedUInt, threadCountInt, finalDelay, isRandom, exceptionRatio, modules)

    Hilog.info(1, "HybridTest", "startTest: threads=${threadCountInt} modules=${modules.toString()} seed=${Int32(seed)} apiCount=${Int32(session.apiCount.load())} target=${targetInt}")

    for (i in 0..threadCountInt) {
        let tid = i
        let future = spawn {
            =>
            try {
                workerLoop(tid, isRandom, exceptionRatio, finalDelay)
            } catch (e: Exception) {
                Hilog.error(1, "HybridTest", "Worker ${tid} crashed in spawn: ${e}")
            }
        }
        session.addWorkerFuture(future)
        Hilog.info(1, "HybridTest", "startTest: spawned worker ${tid}")
    }

    runtime.string("ok").toJSValue()
}

func stopTest(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let session = TestSession.instance
    session.resetForStop()

    var sandboxFileOpt: Option<String> = None
    synchronized (session.testRunnerLock) {
        match (testRunner) {
            case Some(r) => sandboxFileOpt = Some(r.sandboxFile)
            case None => ()
        }
        testRunner = None
    }

    let futuresToCancel = session.swapWorkerFutures()
    for (future in futuresToCancel) {
        try {
            future.cancel()
        } catch (e: Exception) {
            Hilog.warn(1, "HybridTest", "worker future cancel failed: ${e}")
        }
    }

    let orphansToCancel = session.swapOrphanFutures()
    for (future in orphansToCancel) {
        try {
            future.cancel()
        } catch (e: Exception) {
            Hilog.warn(1, "HybridTest", "orphan future cancel failed: ${e}")
        }
    }

    match (sandboxFileOpt) {
        case Some(file) => flushPendingLogs(file)
        case None => ()
    }

    Hilog.info(1, "HybridTest", "stopTest: totalRun=${session.totalRunCount.load()} postJSTaskDropped=${session.postJSTaskDropped.load()}")
    runtime.string("ok").toJSValue()
}

func getApiCount(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    runtime.number(Float64(TestSession.instance.apiCount.load())).toJSValue()
}

func getIsRunning(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    runtime.boolean(TestSession.instance.isRunning.load()).toJSValue()
}

func getTotalRunCount(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    runtime.number(Float64(TestSession.instance.totalRunCount.load())).toJSValue()
}

func getTargetRunCount(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    runtime.number(Float64(TestSession.instance.targetRunCount.load())).toJSValue()
}

func getThreadCount(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    runtime.number(Float64(TestSession.instance.activeThreadCount.load())).toJSValue()
}

func getModuleList(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let keys = ArrayList<String>()
    for ((key, _) in testModuleRegistry) {
        keys.add(key)
    }
    keys.sort()
    let sorted = keys.toArray()
    let jsValues = Array<JSValue>(sorted.size, { i: Int64 =>
        runtime.string(sorted[i]).toJSValue()
    })
    runtime.array(jsValues).toJSValue()
}

func getRunStats(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = runtime.object()
    for ((apiName, counter) in TestSession.instance.runCountMap) {
        obj.setProperty(apiName, runtime.number(Float64(counter.load())).toJSValue())
    }
    obj.toJSValue()
}

func getErrorStats(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = runtime.object()
    for ((apiName, counter) in TestSession.instance.errorCountMap) {
        obj.setProperty(apiName, runtime.number(Float64(counter.load())).toJSValue())
    }
    obj.toJSValue()
}

func getErrorList(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let logs = errorLogQueue.toArray()
    let jsValues = Array<JSValue>(logs.size, { i: Int64 =>
        runtime.string(logs[i]).toJSValue()
    })
    runtime.array(jsValues).toJSValue()
}

func getErrorCount(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    runtime.number(Float64(errorCount.load())).toJSValue()
}

func clearResults(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    TestSession.instance.clearResults()
    Hilog.info(1, "HybridTest", "clearResults: all results cleared")
    runtime.string("ok").toJSValue()
}

func injectNativeInterfaces(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let global = runtime.global

    global.setProperty("nativeAdd", callInfo[0])
    global.setProperty("nativeConcat", callInfo[1])
    global.setProperty("nativeBoolOp", callInfo[2])
    global.setProperty("nativeThrow", callInfo[3])
    global.setProperty("nativeIdentity", callInfo[4])
    global.setProperty("nativeReturnNumber", callInfo[5])
    global.setProperty("nativeReturnString", callInfo[6])
    global.setProperty("nativeReturnBoolean", callInfo[7])
    global.setProperty("nativeReturnVoid", callInfo[8])

    Hilog.info(1, "HybridTest", "injectNativeInterfaces: all native ArkTS interfaces injected on globalThis")
    runtime.undefined().toJSValue()
}

func injectArkTsInterfaces(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let global = runtime.global

    global.setProperty("arktsAdd", callInfo[0])
    global.setProperty("arktsConcat", callInfo[1])
    global.setProperty("arktsBoolOp", callInfo[2])
    global.setProperty("arktsThrowError", callInfo[3])
    global.setProperty("arktsReturnObj", callInfo[4])
    global.setProperty("arktsReturnArr", callInfo[5])
    global.setProperty("arktsReturnNull", callInfo[6])
    global.setProperty("arktsReturnUndefined", callInfo[7])
    global.setProperty("arktsIdentity", callInfo[8])
    global.setProperty("arktsMultiReturn", callInfo[9])
    global.setProperty("arktsObj", callInfo[10])
    global.setProperty("arktsObjNested", callInfo[11])
    global.setProperty("arktsObjWithMethod", callInfo[12])
    global.setProperty("arktsArr", callInfo[13])

    Hilog.info(1, "HybridTest", "injectArkTsInterfaces: real ArkTS functions/objects injected on globalThis")
    runtime.undefined().toJSValue()
}

func injectCjWrapCallbacks(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let global = runtime.global

    global.setProperty("arktsCjWrapDoubler", callInfo[0])
    global.setProperty("arktsCjWrapUpper", callInfo[1])
    global.setProperty("arktsCjWrapThrower", callInfo[2])

    Hilog.info(1, "HybridTest", "injectCjWrapCallbacks: arkts callbacks injected on globalThis")
    runtime.undefined().toJSValue()
}

func injectArkTsRunners(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let global = runtime.global

    global.setProperty("runArkTsCallCjCase", callInfo[0])
    global.setProperty("runCjWrapArkTsCallbackCase", callInfo[1])

    Hilog.info(1, "HybridTest", "injectArkTsRunners: arkts runner functions injected on globalThis")
    runtime.undefined().toJSValue()
}

func injectInteropMacroRunner(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let global = runtime.global

    global.setProperty("runInteropMacroCase", callInfo[0])

    Hilog.info(1, "HybridTest", "injectInteropMacroRunner: interop macro runner injected on globalThis")
    runtime.undefined().toJSValue()
}

func injectJsContextBindRunner(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let global = runtime.global
    global.setProperty("runJsContextBindCase", callInfo[0])
    Hilog.info(1, "HybridTest", "injectJsContextBindRunner: jscontext bind runner injected on globalThis")
    runtime.undefined().toJSValue()
}

func injectJsContextTaskPoolRunner(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let global = runtime.global
    global.setProperty("runJsContextTaskPoolCase", callInfo[0])
    Hilog.info(1, "HybridTest", "injectJsContextTaskPoolRunner: taskpool runner injected on globalThis")
    runtime.undefined().toJSValue()
}

func injectUvloopReleaseRunner(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let global = runtime.global
    global.setProperty("runUvloopReleaseCase", callInfo[0])
    Hilog.info(1, "HybridTest", "injectUvloopReleaseRunner: uvloop release runner injected on globalThis")
    runtime.undefined().toJSValue()
}

func injectLoaderCacheRunner(runtime: JSContext, callInfo: JSCallInfo): JSValue {
    let global = runtime.global
    global.setProperty("runLoaderCacheCase", callInfo[0])
    Hilog.info(1, "HybridTest", "injectLoaderCacheRunner: loader cache runner injected on globalThis")
    runtime.undefined().toJSValue()
}

let EXPORT_MODULE = JSModule.registerModule {
    runtime: JSContext, exports: JSObject =>
    globalJSContext = Some(runtime)
    exports["startTest"] = runtime.function(startTest).toJSValue()
    exports["stopTest"] = runtime.function(stopTest).toJSValue()
    exports["getApiCount"] = runtime.function(getApiCount).toJSValue()
    exports["getIsRunning"] = runtime.function(getIsRunning).toJSValue()
    exports["getTotalRunCount"] = runtime.function(getTotalRunCount).toJSValue()
    exports["getTargetRunCount"] = runtime.function(getTargetRunCount).toJSValue()
    exports["getThreadCount"] = runtime.function(getThreadCount).toJSValue()
    exports["getModuleList"] = runtime.function(getModuleList).toJSValue()
    exports["getRunStats"] = runtime.function(getRunStats).toJSValue()
    exports["getErrorStats"] = runtime.function(getErrorStats).toJSValue()
    exports["getErrorList"] = runtime.function(getErrorList).toJSValue()
    exports["getErrorCount"] = runtime.function(getErrorCount).toJSValue()
    exports["clearResults"] = runtime.function(clearResults).toJSValue()
    exports["injectArkTsInterfaces"] = runtime.function(injectArkTsInterfaces).toJSValue()
    exports["injectNativeInterfaces"] = runtime.function(injectNativeInterfaces).toJSValue()
    exports["injectCjWrapCallbacks"] = runtime.function(injectCjWrapCallbacks).toJSValue()
    exports["injectArkTsRunners"] = runtime.function(injectArkTsRunners).toJSValue()
    exports["injectInteropMacroRunner"] = runtime.function(injectInteropMacroRunner).toJSValue()
    exports["injectJsContextBindRunner"] = runtime.function(injectJsContextBindRunner).toJSValue()
    exports["injectJsContextTaskPoolRunner"] = runtime.function(injectJsContextTaskPoolRunner).toJSValue()
    exports["injectUvloopReleaseRunner"] = runtime.function(injectUvloopReleaseRunner).toJSValue()
    exports["injectLoaderCacheRunner"] = runtime.function(injectLoaderCacheRunner).toJSValue()

    exports["cjBusinessAdd"] = runtime.function(jsBusinessAdd).toJSValue()
    exports["cjBusinessConcat"] = runtime.function(jsBusinessConcat).toJSValue()
    exports["cjBusinessEcho"] = runtime.function(jsBusinessEcho).toJSValue()
    exports["cjBusinessMax"] = runtime.function(jsBusinessMax).toJSValue()
    exports["cjCreateCounter"] = runtime.function(jsCreateCounter).toJSValue()
    exports["cjBusinessAsyncDouble"] = runtime.function(jsBusinessAsyncDouble).toJSValue()
    exports["cjBusinessThrow"] = runtime.function(jsBusinessThrow).toJSValue()

    exports["cjWrapSyncDoubler"] = runtime.function(jsCjWrapSyncDoubler).toJSValue()
    exports["cjWrapSyncUpper"] = runtime.function(jsCjWrapSyncUpper).toJSValue()
    exports["cjWrapCompose"] = runtime.function(jsCjWrapCompose).toJSValue()
    exports["cjWrapAsyncDoubler"] = runtime.function(jsCjWrapAsyncDoubler).toJSValue()
    exports["cjWrapExceptionCatch"] = runtime.function(jsCjWrapExceptionCatch).toJSValue()
    exports["cjWrapAsyncReject"] = runtime.function(jsCjWrapAsyncReject).toJSValue()
}
