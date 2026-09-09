package ohos_app_cangjie_entry.tests.mech_concurrency

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import std.sync.AtomicInt64
import kit.PerformanceAnalysisKit.Hilog

let _ = registerTestModule("concurrency", { jsContext, sandboxFile => ConcurrencyTest(jsContext, sandboxFile) })

public class ConcurrencyTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testConcurrentPropertyWrite", "testConcurrentArrayModify", "testPostJSTaskContention"]
    }

    public func testConcurrentPropertyWrite(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testConcurrentPropertyWrite") {
            let apiName = "testConcurrentPropertyWrite"
            let jsContext = this.jsContext
            let sharedObj = jsContext.object()
            sharedObj.setProperty("counter", jsContext.number(0.0).toJSValue())
            let promise = jsContext.promiseCapability()
            let threadCount = Int64(seed % 3) + 1
            let completed = AtomicInt64(0)
            let iterations = Int64(100)
            let expectedTotal = threadCount * iterations
            let apiNameCaptured = apiName
            let testRef = this
            let onDropSettle = { =>
                jsContext.postJSTask {
                    =>
                    try {
                        promise.resolve(jsContext.number(0.0).toJSValue())
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                    }
                }
            }
            for (t in 0..threadCount) {
                spawnTracked {
                    =>
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        for (i in 0..iterations) {
                            let cur = sharedObj.getProperty("counter")
                            let next = cur.toNumber() + 1.0
                            sharedObj.setProperty("counter", jsContext.number(next).toJSValue())
                        }
                        let done = completed.fetchAdd(1) + 1
                        if (done == threadCount) {
                            let _ = safePostJSTaskWithDrop(jsContext, { =>
                                let finalVal = sharedObj.getProperty("counter").toNumber()
                                if (finalVal != Float64(expectedTotal)) {
                                    testRef.writeLog(apiNameCaptured, "FinalValueMismatch", "expected ${expectedTotal} got ${finalVal}")
                                }
                                promise.resolve(jsContext.number(finalVal).toJSValue())
                            }, onDropSettle)
                        }
                    }, onDropSettle)
                }
            }
            Hilog.info(1, "HybridTest", "concurrency property write dispatched: threads=${threadCount} expected=${expectedTotal}")
        }
    }

    public func testConcurrentArrayModify(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testConcurrentArrayModify") {
            let apiName = "testConcurrentArrayModify"
            let jsContext = this.jsContext
            let sharedArr = jsContext.array(Array<JSValue>(10, repeat: jsContext.number(0.0).toJSValue()))
            let promise = jsContext.promiseCapability()
            let threadCount = Int64(seed % 3) + 1
            let completed = AtomicInt64(0)
            let iterations = Int64(50)
            let expectedPerSlot = iterations
            let apiNameCaptured = apiName
            let testRef = this
            let onDropSettle = { =>
                jsContext.postJSTask {
                    =>
                    try {
                        promise.resolve(jsContext.undefined().toJSValue())
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                    }
                }
            }
            for (t in 0..threadCount) {
                let idxT = t % 10
                spawnTracked {
                    =>
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        for (i in 0..iterations) {
                            let cur = sharedArr[Int64(idxT)]
                            let next = cur.toNumber() + 1.0
                            sharedArr[Int64(idxT)] = jsContext.number(next).toJSValue()
                        }
                        let done = completed.fetchAdd(1) + 1
                        if (done == threadCount) {
                            let _ = safePostJSTaskWithDrop(jsContext, { =>
                                var mismatch = false
                                for (k in 0..10) {
                                    let v = sharedArr[k].toNumber()
                                    if (k < threadCount && v != Float64(expectedPerSlot)) {
                                        testRef.writeLog(apiNameCaptured, "SlotMismatch", "slot ${k} expected ${expectedPerSlot} got ${v}")
                                        mismatch = true
                                    }
                                }
                                if (!mismatch) {
                                    Hilog.info(1, "HybridTest", "concurrency array modify OK: threads=${threadCount}")
                                }
                                promise.resolve(jsContext.undefined().toJSValue())
                            }, onDropSettle)
                        }
                    }, onDropSettle)
                }
            }
        }
    }

    public func testPostJSTaskContention(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPostJSTaskContention") {
            let apiName = "testPostJSTaskContention"
            let jsContext = this.jsContext
            let counter = jsContext.object()
            counter.setProperty("count", jsContext.number(0.0).toJSValue())
            let promise = jsContext.promiseCapability()
            let totalTasks = Int64(seed % 200) + 100
            let completed = AtomicInt64(0)
            let apiNameCaptured = apiName
            let testRef = this
            let onDropSettle = { =>
                jsContext.postJSTask {
                    =>
                    try {
                        promise.resolve(jsContext.number(0.0).toJSValue())
                    } catch (e: Exception) {
                        Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                    }
                }
            }
            for (i in 0..totalTasks) {
                let _ = safePostJSTaskWithDrop(jsContext, { =>
                    let cur = counter.getProperty("count")
                    let next = cur.toNumber() + 1.0
                    counter.setProperty("count", jsContext.number(next).toJSValue())
                    let done = completed.fetchAdd(1) + 1
                    if (done == totalTasks) {
                        if (next != Float64(totalTasks)) {
                            testRef.writeLog(apiNameCaptured, "FinalCountMismatch", "expected ${totalTasks} got ${next}")
                        }
                        promise.resolve(jsContext.number(next).toJSValue())
                    }
                }, onDropSettle)
            }
            Hilog.info(1, "HybridTest", "concurrency postJSTask contention: dispatched=${totalTasks}")
        }
    }
}
