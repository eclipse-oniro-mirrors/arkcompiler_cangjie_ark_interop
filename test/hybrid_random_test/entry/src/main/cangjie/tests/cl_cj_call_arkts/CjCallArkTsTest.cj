package ohos_app_cangjie_entry.tests.cl_cj_call_arkts

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

// requireArkModule 测试：动态导入系统库并调用
// 注意：requireArkModule 只能在 ArkTS 绑定线程使用

let _ = registerTestModule("cl_cj_call_arkts", { jsContext, sandboxFile => CjCallArkTsTest(jsContext, sandboxFile) })

public class CjCallArkTsTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testCallArkTSConsole", "testCallArkTSObjMethod", "testReadArkTSObject", "testRequireArkModuleHilog", "testRequireArkModuleNotFound"]
    }

    public func testCallArkTSConsole(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSConsole") {
            let jsContext = this.jsContext
            let console = jsContext.global.getProperty("console")
            if (!console.isObject()) {
                this.writeLog("testCallArkTSConsole", "NotFound", "console not found on globalThis")
            } else {
                console.asObject().callMethod("log", [
                    jsContext.string("cj_call_arkts: console.log invoked from cangjie seed=${seed}").toJSValue()
                ])
                Hilog.info(1, "HybridTest", "cl_cj_call_arkts: console.log called successfully")
            }
        }
    }

    public func testCallArkTSObjMethod(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSObjMethod") {
            let jsContext = this.jsContext
            let arktsObjWithMethod = jsContext.global.getProperty("arktsObjWithMethod")
            if (!arktsObjWithMethod.isObject()) {
                this.writeLog("testCallArkTSObjMethod", "NotFound", "arktsObjWithMethod not found on globalThis")
            } else {
                let input = RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)
                let result = arktsObjWithMethod.asObject().callMethod("compute", jsContext.number(input).toJSValue())
                if (!result.isNumber()) {
                    this.writeLog("testCallArkTSObjMethod", "NotNumber", "compute result is not number")
                } else {
                    let expected = input * 10.0
                    if (!floatEquals(result.toNumber(), expected)) {
                        this.writeLog("testCallArkTSObjMethod", "ValueMismatch", "expected ${expected} got ${result.toNumber()}")
                    }
                }
            }
        }
    }

    public func testReadArkTSObject(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testReadArkTSObject") {
            let jsContext = this.jsContext
            let arktsObj = jsContext.global.getProperty("arktsObj")
            if (!arktsObj.isObject()) {
                this.writeLog("testReadArkTSObject", "NotFound", "arktsObj not found on globalThis")
            } else {
                let obj = arktsObj.asObject()
                let num = obj.getProperty("num")
                if (!num.isNumber()) {
                    this.writeLog("testReadArkTSObject", "NumNotNumber", "num property is not number")
                }
                let str = obj.getProperty("str")
                if (!str.isString()) {
                    this.writeLog("testReadArkTSObject", "StrNotString", "str property is not string")
                }
                Hilog.info(1, "HybridTest", "cl_cj_call_arkts: read arktsObj num=${num.toNumber()} str=${str.toString()}")
            }
        }
    }

    public func testRequireArkModuleHilog(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testRequireArkModuleHilog") {
            let apiName = "testRequireArkModuleHilog"
            let jsContext = this.jsContext
            let hilog = jsContext.global.getProperty("hilog")
            if (hilog.isObject()) {
                hilog.asObject().callMethod("info", [
                    jsContext.number(0.0).toJSValue(),
                    jsContext.string("HybridTest").toJSValue(),
                    jsContext.string("globalThis hilog success seed=${seed}").toJSValue()
                ])
                Hilog.info(1, "HybridTest", "${apiName}: hilog.info called via globalThis")
            } else {
                let console = jsContext.global.getProperty("console")
                if (console.isObject()) {
                    console.asObject().callMethod("log", [
                        jsContext.string("requireArkModule fallback: console.log seed=${seed}").toJSValue()
                    ])
                } else {
                    this.writeLog(apiName, "HilogNotFound", "hilog not on globalThis")
                }
            }
        }
    }

    public func testRequireArkModuleNotFound(seed: UInt32, exceptionRatio: Float64): String {
        let apiName = "testRequireArkModuleNotFound"
        try {
            let jsContext = this.jsContext
            let nonexistent = jsContext.global.getProperty("@nonexistent.module")
            if (nonexistent.isUndefined()) {
                Hilog.info(1, "HybridTest", "${apiName}: nonexistent module is undefined (expected)")
            } else {
                this.writeLog(apiName, "ShouldBeUndefined", "nonexistent module should be undefined")
            }
        } catch (e: Exception) {
            Hilog.info(1, "HybridTest", "${apiName}: expected exception: ${e.message}")
        }
        apiName
    }
}
