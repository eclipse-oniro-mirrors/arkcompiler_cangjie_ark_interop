package ohos_app_cangjie_entry.tests.mech_lifecycle

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog
import std.sync.AtomicInt64

let _ = registerTestModule("lifecycle", { jsContext, sandboxFile => LifecycleTest(jsContext, sandboxFile) })

class LifecycleState <: SharedObject {
    var data: Float64 = 0.0
    var id: Int64 = 0
}

class GcTrackerState <: SharedObject {
    var finalized: Bool = false
    var value: Float64 = 0.0
}

public class LifecycleTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testObjectBatchCreate", "testAttachCJObjectLifecycle", "testSharedObjectLifecycle", "testSharedObjectCrossThread", "testGcReleaseSharedObject", "testSpawnCreateAccessMain"]
    }

    public func testObjectBatchCreate(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testObjectBatchCreate") {
            let apiName = "testObjectBatchCreate"
            let jsContext = this.jsContext
            let count = Int64(seed % 1000) + 100
            for (i in 0..count) {
                jsContext.newScope {
                    let obj = jsContext.object()
                    obj.setProperty("idx", jsContext.number(Float64(i)).toJSValue())
                    obj.setProperty("data", jsContext.string("item_${i}").toJSValue())
                }
            }
            Hilog.info(1, "HybridTest", "lifecycle batch created ${count} objects")
        }
    }

    public func testAttachCJObjectLifecycle(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testAttachCJObjectLifecycle") {
            let apiName = "testAttachCJObjectLifecycle"
            let jsContext = this.jsContext
            let count = Int64(seed % 500) + 50
            for (i in 0..count) {
                jsContext.newScope {
                    let obj = jsContext.object()
                    let state = LifecycleState()
                    state.data = Float64(i)
                    state.id = i
                    obj.attachCJObject(jsContext.external(state))
                    let retrieved = obj.getAttachInfo().getOrThrow().cast<LifecycleState>().getOrThrow()
                    if (retrieved.data != Float64(i) || retrieved.id != i) {
                        this.writeLog(apiName, "StateMismatch", "idx=${i} expected data=${i} id=${i} got data=${retrieved.data} id=${retrieved.id}")
                    }
                }
            }
            Hilog.info(1, "HybridTest", "lifecycle attachCJObject created+verified ${count} objects")
        }
    }

    public func testSharedObjectLifecycle(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testSharedObjectLifecycle") {
            let apiName = "testSharedObjectLifecycle"
            let jsContext = this.jsContext
            let count = Int64(seed % 200) + 20
            for (i in 0..count) {
                let state = LifecycleState()
                state.data = Float64(i) * 2.0
                state.id = i
                let ext = jsContext.external(state)
                if (!ext.toJSValue().isExternal()) {
                    this.writeLog(apiName, "NotExternal", "idx=${i} external check failed")
                }
                let recovered = ext.cast<LifecycleState>().getOrThrow()
                if (recovered.data != Float64(i) * 2.0 || recovered.id != i) {
                    this.writeLog(apiName, "RecoveryMismatch", "idx=${i} expected data=${Float64(i) * 2.0} id=${i} got data=${recovered.data} id=${recovered.id}")
                }
            }
            Hilog.info(1, "HybridTest", "lifecycle SharedObject created+recovered ${count} objects")
        }
    }

    public func testSharedObjectCrossThread(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testSharedObjectCrossThread") {
            let apiName = "testSharedObjectCrossThread"
            let jsContext = this.jsContext
            let state = LifecycleState()
            let testValue = RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)
            state.data = testValue
            state.id = Int64(seed)
            let ext = jsContext.external(state)
            let apiNameCaptured = apiName
            let testRef = this
            let verifyCount = AtomicInt64(0)
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
                    let recovered = ext.cast<LifecycleState>().getOrThrow()
                    if (recovered.data != testValue) {
                        let _ = safePostJSTask(jsContext) {
                            =>
                            testRef.writeLog(apiNameCaptured, "CrossThreadDataMismatch", "expected ${testValue} got ${recovered.data}")
                        }
                    }
                    if (recovered.id != Int64(seed)) {
                        let _ = safePostJSTask(jsContext) {
                            =>
                            testRef.writeLog(apiNameCaptured, "CrossThreadIdMismatch", "expected ${Int64(seed)} got ${recovered.id}")
                        }
                    }
                    let cnt = verifyCount.fetchAdd(1) + 1
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        if (cnt == 1) {
                            Hilog.info(1, "HybridTest", "${apiNameCaptured}: cross-thread SharedObject verified (count=${cnt})")
                        }
                        promise.resolve(jsContext.string("cross-thread-ok").toJSValue())
                    }, onDropSettle)
                } catch (e: Exception) {
                    let msg = e.message
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        Hilog.info(1, "HybridTest", "${apiNameCaptured}: expected CrossThreadException: ${msg}")
                        promise.resolve(jsContext.string("cross-thread-err").toJSValue())
                    }, onDropSettle)
                }
            }
        }
    }

    public func testGcReleaseSharedObject(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testGcReleaseSharedObject") {
            let apiName = "testGcReleaseSharedObject"
            let jsContext = this.jsContext
            let tracker = GcTrackerState()
            let testValue = RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)
            tracker.value = testValue
            let obj = jsContext.object()
            obj.attachCJObject(jsContext.external(tracker))
            let beforeGc = obj.getAttachInfo().getOrThrow().cast<GcTrackerState>().getOrThrow()
            if (beforeGc.value != testValue) {
                this.writeLog(apiName, "PreGcMismatch", "expected ${testValue} got ${beforeGc.value}")
            }
            let arkTools = jsContext.global.getProperty("ArkTools")
            if (arkTools.isObject()) {
                arkTools.asObject().callMethod("forceFullGC", Array<JSValue>())
                Hilog.info(1, "HybridTest", "${apiName}: forceFullGC invoked")
            } else {
                Hilog.info(1, "HybridTest", "${apiName}: ArkTools not available, skip GC")
            }
            let afterGc = obj.getAttachInfo()
            match (afterGc) {
                case Some(_) =>
                    let recovered = afterGc.getOrThrow().cast<GcTrackerState>().getOrThrow()
                    if (recovered.value != testValue) {
                        this.writeLog(apiName, "PostGcMismatch", "expected ${testValue} got ${recovered.value}")
                    } else {
                        Hilog.info(1, "HybridTest", "${apiName}: SharedObject survived GC (still attached)")
                    }
                case None =>
                    Hilog.info(1, "HybridTest", "${apiName}: attachInfo is None after GC (object may have been collected)")
            }
        }
    }

    public func testSpawnCreateAccessMain(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testSpawnCreateAccessMain") {
            let apiName = "testSpawnCreateAccessMain"
            let jsContext = this.jsContext
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
                    let spawned = LifecycleState()
                    let testValue = RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)
                    spawned.data = testValue * 3.0
                    spawned.id = Int64(seed) * 3
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        try {
                            let ext = jsContext.external(spawned)
                            let recovered = ext.cast<LifecycleState>().getOrThrow()
                            if (recovered.data != testValue * 3.0) {
                                testRef.writeLog(apiNameCaptured, "SpawnToMainDataMismatch", "expected ${testValue * 3.0} got ${recovered.data}")
                            }
                            if (recovered.id != Int64(seed) * 3) {
                                testRef.writeLog(apiNameCaptured, "SpawnToMainIdMismatch", "expected ${Int64(seed) * 3} got ${recovered.id}")
                            }
                            Hilog.info(1, "HybridTest", "${apiNameCaptured}: spawn-created SharedObject accessed from main thread OK")
                            promise.resolve(jsContext.string("spawn-to-main-ok").toJSValue())
                        } catch (e: Exception) {
                            testRef.writeLog(apiNameCaptured, "MainAccessException", e.message)
                            promise.resolve(jsContext.string("spawn-to-main-err").toJSValue())
                        }
                    }, onDropSettle)
                } catch (e: Exception) {
                    let msg = e.message
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        testRef.writeLog(apiNameCaptured, "SpawnCreateException", msg)
                        promise.resolve(jsContext.string("spawn-to-main-err").toJSValue())
                    }, onDropSettle)
                }
            }
        }
    }
}
