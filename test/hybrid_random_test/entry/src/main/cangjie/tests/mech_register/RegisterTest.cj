package ohos_app_cangjie_entry.tests.mech_register

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

let _ = registerTestModule("register", { jsContext, sandboxFile => RegisterTest(jsContext, sandboxFile) })

public class RegisterTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testRegisterFunc", "testRegisterClassBasic", "testRegisterAndInvoke", "testRegisterCleanup"]
    }

    public func testRegisterFunc(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testRegisterFunc") {
            let apiName = "testRegisterFunc"
            let funcName = "reg_test_func"
            JSModule.registerFunc(funcName) {
                jsContext =>
                jsContext.function { ctx, callInfo =>
                    ctx.string("registered_${seed}").toJSValue()
                }
            }
            Hilog.info(1, "HybridTest", "${apiName}: registered func ${funcName}")
        }
    }

    public func testRegisterClassBasic(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testRegisterClassBasic") {
            let apiName = "testRegisterClassBasic"
            let className = "reg_test_class"
            JSModule.registerClass(className) {
                jsContext =>
                jsContext.clazz ({ ctx, callInfo =>
                    let obj = ctx.object()
                    obj.setProperty("seed", ctx.number(RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)).toJSValue())
                    obj.toJSValue()
                })
            }
            Hilog.info(1, "HybridTest", "${apiName}: registered class ${className}")
        }
    }

    public func testRegisterAndInvoke(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testRegisterAndInvoke") {
            let apiName = "testRegisterAndInvoke"
            let jsContext = this.jsContext
            let funcName = "reg_test_invoke"
            JSModule.registerFunc(funcName) {
                ctx =>
                ctx.function { c, ci =>
                    c.string("invoked_${seed}").toJSValue()
                }
            }
            let global = jsContext.global
            let propBefore = global.getProperty(funcName)
            Hilog.info(1, "HybridTest", "${apiName}: registered ${funcName}, globalThis has it: ${propBefore.isFunction()}")
        }
    }

    public func testRegisterCleanup(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testRegisterCleanup") {
            let apiName = "testRegisterCleanup"
            let jsContext = this.jsContext
            let funcName = "reg_test_cleanup"
            JSModule.registerFunc(funcName) {
                ctx =>
                ctx.function { c, ci =>
                    c.string("temp").toJSValue()
                }
            }
            let global = jsContext.global
            global.setProperty(funcName, jsContext.undefined().toJSValue())
            let propAfter = global.getProperty(funcName)
            if (propAfter.isFunction()) {
                this.writeLog(apiName, "CleanupFailed", "function still callable after undefined overwrite")
            } else {
                Hilog.info(1, "HybridTest", "${apiName}: cleanup OK for ${funcName}")
            }
        }
    }
}
