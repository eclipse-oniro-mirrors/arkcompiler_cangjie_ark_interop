package ohos_app_cangjie_entry.utils

import std.collection.ArrayList
import std.collection.concurrent.ConcurrentHashMap
import std.collection.concurrent.ConcurrentLinkedQueue
import std.sync.AtomicBool
import std.sync.AtomicInt64
import std.sync.Mutex
import std.core.Future
import kit.PerformanceAnalysisKit.Hilog
import ohos.ark_interop.JSContext

public let POSTJSTASK_HIGH_WATERMARK: Int64 = 5000
public let ASYNC_WAIT_TIMEOUT_MS: Int64 = 5000

public class TestSession {
    public static let instance: TestSession = TestSession()

    public let stopSignal = AtomicBool(false)
    public let isRunning = AtomicBool(false)
    public let isRandomMode = AtomicBool(true)
    public let totalRunCount = AtomicInt64(0)
    public let targetRunCount = AtomicInt64(0)
    public let apiCount = AtomicInt64(0)
    public let activeThreadCount = AtomicInt64(0)
    public let postJSTaskDepth = AtomicInt64(0)
    public let postJSTaskDropped = AtomicInt64(0)
    public let testInProgress = AtomicBool(false)
    public let testPendingAsync = AtomicInt64(0)

    public var runCountMap = ConcurrentHashMap<String, AtomicInt64>()
    public var errorCountMap = ConcurrentHashMap<String, AtomicInt64>()
    public let testRunnerLock = Mutex()

    private var workerFuturesInner = ArrayList<Future<Unit>>()
    private var orphanFuturesInner = ArrayList<Future<Unit>>()

    private init() {}

    public func addWorkerFuture(f: Future<Unit>): Unit {
        workerFuturesInner.add(f)
    }

    public func trackOrphan(f: Future<Unit>): Future<Unit> {
        if (orphanFuturesInner.size > 1000) {
            let _ = swapOrphanFutures()
        }
        orphanFuturesInner.add(f)
        f
    }

    public func swapWorkerFutures(): ArrayList<Future<Unit>> {
        let old = workerFuturesInner
        workerFuturesInner = ArrayList<Future<Unit>>()
        old
    }

    public func swapOrphanFutures(): ArrayList<Future<Unit>> {
        let old = orphanFuturesInner
        orphanFuturesInner = ArrayList<Future<Unit>>()
        old
    }

    public func resetForStart(): Unit {
        stopSignal.store(false)
        isRunning.store(true)
        postJSTaskDepth.store(0)
        testInProgress.store(true)
        testPendingAsync.store(0)
        let oldWorkers = swapWorkerFutures()
        for (f in oldWorkers) {
            try {
                f.cancel()
            } catch (e: Exception) {
                ()
            }
        }
        let oldOrphans = swapOrphanFutures()
        for (f in oldOrphans) {
            try {
                f.cancel()
            } catch (e: Exception) {
                ()
            }
        }
    }

    public func clearResults(): Unit {
        totalRunCount.store(0)
        targetRunCount.store(0)
        postJSTaskDropped.store(0)
        runCountMap = ConcurrentHashMap<String, AtomicInt64>()
        errorCountMap = ConcurrentHashMap<String, AtomicInt64>()
        resetErrorLog()
        clearPendingLogs()
    }

    public func resetForStop(): Unit {
        stopSignal.store(true)
        isRunning.store(false)
        activeThreadCount.store(0)
        testInProgress.store(false)
    }
}

public func safePostJSTask(jsContext: JSContext, body: () -> Unit): Bool {
    safePostJSTaskWithDrop(jsContext, body, { => })
}

public func safePostJSTaskWithDrop(jsContext: JSContext, body: () -> Unit, onDrop: () -> Unit): Bool {
    var retry = 0
    while (retry < 100) {
        let depth = TestSession.instance.postJSTaskDepth.fetchAdd(1)
        if (depth >= POSTJSTASK_HIGH_WATERMARK) {
            TestSession.instance.postJSTaskDepth.fetchSub(1)
            retry = retry + 1
            sleep(1 * Duration.millisecond)
            continue
        }
        TestSession.instance.testPendingAsync.fetchAdd(1)
        let capturedBody = body
        jsContext.postJSTask {
            =>
            try {
                jsContext.newScope {
                    capturedBody()
                }
            } catch (e: Exception) {
                Hilog.error(1, "HybridTest", "safePostJSTask callback threw: ${e}")
            }
            let _ = TestSession.instance.postJSTaskDepth.fetchSub(1)
            let _ = TestSession.instance.testPendingAsync.fetchSub(1)
        }
        return true
    }
    try {
        if (TestSession.instance.postJSTaskDepth.load() < POSTJSTASK_HIGH_WATERMARK) {
            onDrop()
        }
    } catch (e: Exception) {
        Hilog.error(1, "HybridTest", "safePostJSTask onDrop threw: ${e}")
    }
    let dropped = TestSession.instance.postJSTaskDropped.fetchAdd(1)
    if (dropped % 100 == 0) {
        Hilog.warn(1, "HybridTest", "postJSTask retry exhausted (100 retries), dropped total=${dropped + 1}")
    }
    false
}

public func spawnTracked(body: () -> Unit): Future<Unit> {
    TestSession.instance.testPendingAsync.fetchAdd(1)
    let f = spawn {
        body()
        let _ = TestSession.instance.testPendingAsync.fetchSub(1)
    }
    TestSession.instance.trackOrphan(f)
    f
}
