package ohos_app_cangjie_entry.utils

import std.collection.concurrent.ConcurrentHashMap
import std.collection.concurrent.ConcurrentLinkedQueue
import std.sync.AtomicInt64
import std.time.DateTime
import ohos.hilog.Hilog
import std.fs.File
import ohos.ark_interop.JSContext
import ohos.ark_interop.JSValue

public let testModuleRegistry = ConcurrentHashMap<String, (JSContext, String) -> KitTest>()
public var globalJSContext: Option<JSContext> = None
public let pendingLogQueue = ConcurrentLinkedQueue<String>()
public let pendingLogSize = AtomicInt64(0)
public let errorLogQueue = ConcurrentLinkedQueue<String>()
public let errorCount = AtomicInt64(0)
public let errorLogSize = AtomicInt64(0)
public let ERROR_LOG_MAX: Int64 = 200
public let PENDING_LOG_MAX: Int64 = 10000

public func registerTestModule(name: String, factory: (JSContext, String) -> KitTest): Unit {
    testModuleRegistry.put(name, factory)
}

// Float64 相等比较，处理 NaN != NaN 的问题
public func floatEquals(a: Float64, b: Float64): Bool {
    if (a != a && b != b) {
        return true  // 两者都是 NaN
    }
    return a == b
}

public func flushPendingLogs(sandboxFile: String): Unit {
    var batch = StringBuilder()
    var batchSize = 0
    while (true) {
        match (pendingLogQueue.remove()) {
            case Some(line) =>
                batch.append(line)
                batchSize = batchSize + 1
                if (batchSize >= 100) {
                    try {
                        File.appendTo(sandboxFile, batch.toString().toArray())
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "flushPendingLogs batch write failed: ${e}")
                    }
                    batch = StringBuilder()
                    batchSize = 0
                }
            case None =>
                break
        }
    }
    if (batchSize > 0) {
        try {
            File.appendTo(sandboxFile, batch.toString().toArray())
        } catch (e: Exception) {
            Hilog.error(1, "HybridTest", "flushPendingLogs final batch write failed: ${e}")
        }
    }
    pendingLogSize.store(0)
}

public func clearPendingLogs(): Unit {
    while (pendingLogQueue.remove().isSome()) {
        ()
    }
    pendingLogSize.store(0)
}

public func writeCsvHeader(sandboxFile: String, globalSeed: UInt64, threadCount: Int64, workerDelay: Int64, isRandom: Bool, exceptionRatio: Float64, modules: Array<String>): Unit {
    let header = "# globalSeed=${globalSeed},threadCount=${threadCount},workerDelay=${workerDelay},isRandom=${isRandom},exceptionRatio=${exceptionRatio},modules=${modules.toString()}\ntimestamp,apiName,errorCode,errorMsg,seed,threadId,iterCount,faultType,isRandom,exceptionRatio\n"
    try {
        File.appendTo(sandboxFile, header.toArray())
    } catch (e: Exception) {
        Hilog.error(1, "HybridTest", "writeCsvHeader failed: ${e}")
    }
}

open public class KitTest {
    public let jsContext: JSContext
    var sandboxFile: String

    public var currentSeed: UInt32 = 0
    public var currentThreadId: Int64 = 0
    public var currentIterCount: Int64 = 0
    public var currentFaultType: Int64 = -1
    public var currentIsRandom: Bool = true
    public var currentExceptionRatio: Float64 = 0.0

    public init(jsContext: JSContext, sandboxFile: String) {
        this.jsContext = jsContext
        this.sandboxFile = sandboxFile
    }

    public func writeLog(apiName: String, errorCode: String, errorMsg: String): Unit {
        let time = DateTime.now().format("yyyy-MM-dd HH:mm:ss")
        let line = "${time},${apiName},${errorCode},${errorMsg},${currentSeed},${currentThreadId},${currentIterCount},${currentFaultType},${currentIsRandom},${currentExceptionRatio}\n"
        pendingLogQueue.add(line)
        let pSize = pendingLogSize.fetchAdd(1) + 1
        if (pSize >= PENDING_LOG_MAX) {
            flushPendingLogs(this.sandboxFile)
        }
        let uiLine = "[${time}] ${apiName} | ${errorCode}: ${errorMsg}"
        errorLogQueue.add(uiLine)
        errorCount.fetchAdd(1)
        TestSession.instance.errorCountMap.addIfAbsent(apiName, AtomicInt64(0))
        match (TestSession.instance.errorCountMap.get(apiName)) {
            case Some(c) => c.fetchAdd(1)
            case None => ()
        }
        let newSize = errorLogSize.fetchAdd(1) + 1
        if (newSize > ERROR_LOG_MAX) {
            let removed = errorLogQueue.remove()
            if (removed.isSome()) {
                errorLogSize.fetchSub(1)
            }
        }
        Hilog.error(1, "HybridTest", "${apiName}|${errorCode}|${errorMsg}|seed=${currentSeed}|tid=${currentThreadId}|iter=${currentIterCount}|fault=${currentFaultType}")
    }

    public func runWithCatch(apiName: String, body: () -> Unit): String {
        try {
            body()
        } catch (e: Exception) {
            this.writeLog(apiName, "Exception", "${e}")
        }
        apiName
    }

    public func runCaseWith(runnerName: String, caseId: Int64, apiName: String, seed: UInt32, exceptionRatio: Float64): Unit {
        try {
            let jsContext = this.jsContext
            let runner = jsContext.global.getProperty(runnerName)
            if (!runner.isFunction()) {
                this.writeLog(apiName, "RunnerNotFound", "globalThis.${runnerName} not injected")
                return
            }
            let result = runner.asFunction().call([
                jsContext.number(Float64(caseId)).toJSValue(),
                jsContext.number(Float64(seed)).toJSValue(),
                jsContext.number(exceptionRatio).toJSValue()
            ])
            this.handleCaseResult(jsContext, result, apiName)
        } catch (e: Exception) {
            this.writeLog(apiName, "Exception", "${e}")
        }
    }

    public func handleCaseResult(jsContext: JSContext, result: JSValue, apiName: String): Unit {
        if (result.isPromise()) {
            let promiseObj = result.asObject()
            let capturedApiName = apiName
            TestSession.instance.testPendingAsync.fetchAdd(1)
            let thenCb = jsContext.function { ctx, ci =>
                let res = ci[0]
                if (res.isObject()) {
                    let resObj = res.asObject()
                    let ok = resObj.getProperty("ok")
                    if (!ok.isBoolean() || !ok.toBoolean()) {
                        let msg = resObj.getProperty("msg")
                        let msgStr = if (msg.isString()) { msg.toString() } else { "<no msg>" }
                        this.writeLog(capturedApiName, "AsyncCaseFail", msgStr)
                    }
                } else {
                    this.writeLog(capturedApiName, "AsyncResultNotObject", "async case result is not object")
                }
                TestSession.instance.testPendingAsync.fetchSub(1)
                ctx.undefined().toJSValue()
            }.toJSValue()
            let catchCb = jsContext.function { ctx, ci =>
                let err = ci[0]
                let errStr = if (err.isString()) {
                    err.toString()
                } else if (err.isObject()) {
                    let msg = err.asObject().getProperty("message")
                    if (msg.isString()) { msg.toString() } else { err.toString() }
                } else {
                    err.toString()
                }
                this.writeLog(capturedApiName, "AsyncCaseReject", errStr)
                TestSession.instance.testPendingAsync.fetchSub(1)
                ctx.undefined().toJSValue()
            }.toJSValue()
            promiseObj.callMethod("then", thenCb)
            promiseObj.callMethod("catch", catchCb)
        } else if (result.isObject()) {
            let resObj = result.asObject()
            let ok = resObj.getProperty("ok")
            if (!ok.isBoolean() || !ok.toBoolean()) {
                let msg = resObj.getProperty("msg")
                let msgStr = if (msg.isString()) { msg.toString() } else { "<no msg>" }
                this.writeLog(apiName, "CaseFail", msgStr)
            }
        } else {
            this.writeLog(apiName, "ResultNotObject", "case result is not object/promise")
        }
    }

    open public func getTestMethodNames(): Array<String> {
        []
    }
}

public func resetErrorLog(): Unit {
    errorCount.store(0)
    errorLogSize.store(0)
    while (errorLogQueue.remove().isSome()) {
        ()
    }
}
