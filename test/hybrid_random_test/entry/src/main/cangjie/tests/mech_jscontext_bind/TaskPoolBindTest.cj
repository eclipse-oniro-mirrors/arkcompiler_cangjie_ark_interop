package ohos_app_cangjie_entry.tests.mech_jscontext_bind

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

// 问题单#5：【arkts互操作】多线程 taskpool中调用互操作接口 2个arkts运行时绑定同一个JSContext
// 现象：增量输出文本时概率性出现闪屏，并先后发生：
//   1) 仓颉侧出现线程不匹配异常；
//   2) ArkTS 代码里出现导入模块为 undefined；
//   3) ArkTS 运行时出现异常 TypeError: Can not get Prototype on non ECMA Object。
// 根因：与问题#3 同源——JSContext 全局表与 ArkTS 运行时实例 1:1 绑定，当 ArkTS 运行时实例
//       的内存被复用（地址复用）时，新的运行时实例会被绑定到已存在的 JSContext，触发线程不匹配。
//       问题#3 走 Worker 线程，问题#5 走 TaskPool 任务池，两者触发路径不同，根因相同。
// 复现思路：
//   - 通过 ArkTS 侧的 taskpool runner，在 TaskPool 任务中加载仓颉模块、调用接口、结束任务，
//     反复执行多轮，使 ArkTS 运行时实例的内存地址被复用，触发 JSContext 绑定冲突。
//   - caseId=0: 单轮 TaskPool 调度（多任务并发）。
//   - caseId=1: 完整 20+ 轮 TaskPool 循环（覆盖原始复现轮数）。

let _ = registerTestModule("taskpool_bind", { jsContext, sandboxFile => TaskPoolBindTest(jsContext, sandboxFile) })

public class TaskPoolBindTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testTaskPoolLoadCangjieModule", "testTaskPoolLoadCangjieRound"]
    }

    /// 单轮 TaskPool 调度：在 TaskPool 上并发执行多个任务，每个任务加载仓颉模块并调用接口
    /// 通过 ArkTS runner 实现（runJsContextTaskPoolCase），caseId=0
    public func testTaskPoolLoadCangjieModule(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testTaskPoolLoadCangjieModule") {
            let apiName = "testTaskPoolLoadCangjieModule"
            this.runCaseWith("runJsContextTaskPoolCase", 0, "testTaskPoolLoadCangjieModule", seed, exceptionRatio)
            Hilog.info(1, "HybridTest", "${apiName}: dispatched taskpool single-round load test")
        }
    }

    /// 完整 20+ 轮 TaskPool 循环：每轮在 TaskPool 上加载仓颉模块、调用接口、结束任务
    /// 直接覆盖原始 bug 场景：内存地址复用导致 JSContext 绑定冲突时，会触发线程不匹配异常
    public func testTaskPoolLoadCangjieRound(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testTaskPoolLoadCangjieRound") {
            let apiName = "testTaskPoolLoadCangjieRound"
            this.runCaseWith("runJsContextTaskPoolCase", 1, "testTaskPoolLoadCangjieRound", seed, exceptionRatio)
            Hilog.info(1, "HybridTest", "${apiName}: dispatched taskpool full 20-round cycling test")
        }
    }
}
