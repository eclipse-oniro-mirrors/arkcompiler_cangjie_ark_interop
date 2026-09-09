package ohos_app_cangjie_entry.tests.mech_jscontext_bind

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

// 问题单#4：【arkts互操作】getJSContext重新实现后调用报错 校验线程错误
// 根因：JSRuntime.mainContext 首次调用时会创建 JSContext 实例，在创建 JSContext 时会调用
//       JSContext.getNapiEnv，这个接口里会校验线程，这里发生异常。
// 修复方案：对 JSContext.getNapiEnv 接口取消线程校验。
// 涉及修改的接口：public func getNapiEnv(): napi_env {}
// 复现思路：
//   1. 主线程上反复调用 getNapiEnv，验证不抛 BusinessException(34300004)。
//   2. 通过 spawn + postJSTask 链路，在 ArkTS 主线程上反复调用 getNapiEnv，
//      验证在 postJSTask 回调（可能在不同 POSIX 线程）中调用 getNapiEnv 不会再因
//      线程校验抛错（修复前的 bug 触发点）。
//   3. 调用 isInBindThread 与 getNapiEnv 的组合，验证两者行为一致。

let _ = registerTestModule("napi_env", { jsContext, sandboxFile => GetNapiEnvTest(jsContext, sandboxFile) })

public class GetNapiEnvTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testGetNapiEnvOnMain", "testGetNapiEnvRepeated", "testGetNapiEnvInPostJSTask", "testGetNapiEnvAfterIsInBindThread"]
    }

    /// 在 ArkTS 主线程上直接调用 getNapiEnv，验证修复后不再抛线程校验异常
    /// 修复前：getNapiEnv 内部调用 env getter，env getter 会调用 checkThread 抛 BusinessException
    public func testGetNapiEnvOnMain(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testGetNapiEnvOnMain") {
            let apiName = "testGetNapiEnvOnMain"
            let jsContext = this.jsContext
            let env = jsContext.getNapiEnv()
            if (env.isNull()) {
                this.writeLog(apiName, "NullEnv", "getNapiEnv returned null pointer")
                return
            }
            Hilog.info(1, "HybridTest", "${apiName}: getNapiEnv OK on main thread (ptr non-null)")
        }
    }

    /// 反复调用 getNapiEnv，验证多次调用稳定（修复前的偶发性线程校验错误）
    public func testGetNapiEnvRepeated(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testGetNapiEnvRepeated") {
            let apiName = "testGetNapiEnvRepeated"
            let jsContext = this.jsContext
            let count = Int64(seed % 500) + 100
            var firstEnvAddr: UIntNative = UIntNative(0)
            for (i in 0..count) {
                let env = jsContext.getNapiEnv()
                if (env.isNull()) {
                    this.writeLog(apiName, "NullEnv", "idx=${i} getNapiEnv returned null")
                    return
                }
                let addr = env.toUIntNative()
                if (firstEnvAddr == UIntNative(0)) {
                    firstEnvAddr = addr
                } else if (addr != firstEnvAddr) {
                    this.writeLog(apiName, "EnvPointerChanged", "idx=${i} env pointer changed")
                    return
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: ${count} repeated getNapiEnv calls all returned same non-null pointer")
        }
    }

    /// 在 spawn 线程上发起请求，通过 postJSTask 回调到 ArkTS 主线程上调用 getNapiEnv
    /// 覆盖修复点：postJSTask 回调的执行线程可能不是仓颉 spawn 线程，但仍是 ArkTS 主线程，
    /// 如果 getNapiEnv 仍校验"创建 JSContext 时的仓颉线程"会抛线程校验错误
    public func testGetNapiEnvInPostJSTask(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testGetNapiEnvInPostJSTask") {
            let apiName = "testGetNapiEnvInPostJSTask"
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
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        try {
                            let env = jsContext.getNapiEnv()
                            if (env.isNull()) {
                                testRef.writeLog(apiNameCaptured, "PostTaskNullEnv", "getNapiEnv returned null in postJSTask callback")
                                promise.resolve(jsContext.string("post-task-null-env").toJSValue())
                                return
                            }
                            Hilog.info(1, "HybridTest", "${apiNameCaptured}: getNapiEnv OK in postJSTask callback")
                            promise.resolve(jsContext.string("post-task-ok").toJSValue())
                        } catch (e: Exception) {
                            testRef.writeLog(apiNameCaptured, "PostTaskException", "getNapiEnv threw in postJSTask: ${e}")
                            promise.resolve(jsContext.string("post-task-err").toJSValue())
                        }
                    }, onDropSettle)
                } catch (e: Exception) {
                    let msg = e.message
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        testRef.writeLog(apiNameCaptured, "SpawnException", msg)
                        promise.resolve(jsContext.string("spawn-err").toJSValue())
                    }, onDropSettle)
                }
            }
        }
    }

    /// 组合调用：先调用 isInBindThread 判断当前线程，再调用 getNapiEnv
    /// 验证：修复后即使 isInBindThread 返回 false（postJSTask 回调线程不同），
    ///       getNapiEnv 仍可正常返回，不再抛 BusinessException(34300004)
    public func testGetNapiEnvAfterIsInBindThread(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testGetNapiEnvAfterIsInBindThread") {
            let apiName = "testGetNapiEnvAfterIsInBindThread"
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
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        try {
                            let inBind = jsContext.isInBindThread()
                            // 无论 inBind 结果如何，getNapiEnv 都不应抛线程校验异常
                            let env = jsContext.getNapiEnv()
                            if (env.isNull()) {
                                testRef.writeLog(apiNameCaptured, "NullEnv", "getNapiEnv null after isInBindThread=${inBind}")
                                promise.resolve(jsContext.string("null-env").toJSValue())
                                return
                            }
                            Hilog.info(1, "HybridTest", "${apiNameCaptured}: isInBindThread=${inBind}, getNapiEnv OK")
                            promise.resolve(jsContext.string("ok").toJSValue())
                        } catch (e: Exception) {
                            testRef.writeLog(apiNameCaptured, "CombinedException", "isInBindThread+getNapiEnv threw: ${e}")
                            promise.resolve(jsContext.string("err").toJSValue())
                        }
                    }, onDropSettle)
                } catch (e: Exception) {
                    let msg = e.message
                    let _ = safePostJSTaskWithDrop(jsContext, { =>
                        testRef.writeLog(apiNameCaptured, "SpawnException", msg)
                        promise.resolve(jsContext.string("spawn-err").toJSValue())
                    }, onDropSettle)
                }
            }
        }
    }
}
