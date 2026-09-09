package ohos_app_cangjie_entry.tests.mech_lifecycle

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

// 问题单#6：【arkts互操作】仓颉互操作在arkts运行时释放后再向uvloop抛任务导致coredump
// 现象：概率性崩溃
// 根因：仓颉对象对 ArkTS 对象保活，仓颉对象的 ~init 会释放在 ArkTS 运行时创建的引用。
//       ArkTS 运行时的接口要求必须在对应的 ArkTS 线程上执行，仓颉对象的 ~init 在仓颉线程执行，
//       因此需要抛出一个任务到 ArkTS 线程执行。
//       当 TaskPool 任务的 ArkTS 运行时生命周期结束之后，再触发仓颉的 GC，在 ~JSHeapObject 里向
//       uvloop 抛出任务时，在 uvloop 里会触发 coredump。
// 涉及接口：JSHeapObject.~init()（js_heap.cj）、JSPromise.~init()（js_promise.cj）、
//          JSContext.postJSTask / asyncCallbackExecutor、disposeJSContext
// 复现思路：
//   通过 ArkTS 侧 runner 在 TaskPool 任务中加载仓颉模块、创建一批 HeapObject（JSObject / JSPromise /
//   JSExternal / JSFunction），任务结束后 ArkTS 运行时实例被系统回收，
//   再触发仓颉 GC（自然回收或 ArkTools.forceFullGC），让 ~init 在已释放的 uvloop 上抛任务，
//   验证修复后不再 coredump。
//   caseId=0: 单轮（创建多个 HeapObject→TaskPool 任务结束→触发 GC）
//   caseId=1: 多轮循环（覆盖概率性 coredump）

let _ = registerTestModule("uvloop_release", { jsContext, sandboxFile => UvloopReleaseTest(jsContext, sandboxFile) })

public class UvloopReleaseTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testHeapObjectGcAfterWorkerClose", "testHeapObjectGcAfterWorkerRound"]
    }

    /// 单轮：TaskPool 任务加载仓颉→创建多个 HeapObject→任务结束→触发仓颉 GC
    /// 修复前：~JSHeapObject 向已释放的 uvloop 抛任务会 coredump
    public func testHeapObjectGcAfterWorkerClose(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testHeapObjectGcAfterWorkerClose") {
            let apiName = "testHeapObjectGcAfterWorkerClose"
            this.runCaseWith("runUvloopReleaseCase", 0, "testHeapObjectGcAfterWorkerClose", seed, exceptionRatio)
            Hilog.info(1, "HybridTest", "${apiName}: dispatched worker-close+gc test")
        }
    }

    /// 多轮循环：覆盖概率性 coredump 场景
    public func testHeapObjectGcAfterWorkerRound(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testHeapObjectGcAfterWorkerRound") {
            let apiName = "testHeapObjectGcAfterWorkerRound"
            this.runCaseWith("runUvloopReleaseCase", 1, "testHeapObjectGcAfterWorkerRound", seed, exceptionRatio)
            Hilog.info(1, "HybridTest", "${apiName}: dispatched multi-round worker-close+gc test")
        }
    }
}
