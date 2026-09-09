package ohos_app_cangjie_entry.tests.dt_jsfunction

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*

let _ = registerTestModule("jsfunction", { jsContext, sandboxFile => JSFunctionTest(jsContext, sandboxFile) })

public class JSFunctionTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testCreateFunction", "testCallFunctionWithArgs", "testFunctionReturnTypes", "testCallWithThisArg", "testCallInfoCount"]
    }

    public func testCreateFunction(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCreateFunction") {
            let jsContext = this.jsContext
            let jsFunc = jsContext.function { context, callInfo =>
                context.number(42.0).toJSValue()
            }
            let jsValue = jsFunc.toJSValue()
            if (!jsValue.isFunction()) {
                this.writeLog("testCreateFunction", "TypeMismatch", "JSValue is not function")
            }
            let funcRef = jsValue.asFunction()
            let callResult = funcRef.call(jsContext.number(RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)).toJSValue())
            if (!callResult.isNumber()) {
                this.writeLog("testCreateFunction", "ResultNotNumber", "call result is not number")
            }
        }
    }

    public func testCallFunctionWithArgs(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallFunctionWithArgs") {
            let jsContext = this.jsContext
            let a = JSFunctionGenerator.randomArgValue(seed, exceptionRatio)
            let b = JSFunctionGenerator.randomArgValue(seed + 1, exceptionRatio)
            let c = JSFunctionGenerator.randomArgValue(seed + 2, exceptionRatio)
            let jsFunc = jsContext.function { context, callInfo =>
                let arg0 = callInfo[0].toNumber()
                let arg1 = callInfo[1].toNumber()
                let arg2 = callInfo[2].toNumber()
                context.number(arg0 + arg1 + arg2).toJSValue()
            }
            let funcRef = jsFunc.toJSValue().asFunction()
            let result = funcRef.call([jsContext.number(a).toJSValue(), jsContext.number(b).toJSValue(), jsContext.number(c).toJSValue()])
            if (!result.isNumber()) {
                this.writeLog("testCallFunctionWithArgs", "ResultNotNumber", "sum result is not number")
            } else {
                let sum = result.toNumber()
                let expected = a + b + c
                if (!floatEquals(sum, expected)) {
                    this.writeLog("testCallFunctionWithArgs", "ValueMismatch", "expected ${expected} got ${sum}")
                }
            }
        }
    }

    public func testFunctionReturnTypes(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testFunctionReturnTypes") {
            let jsContext = this.jsContext
            let returnType = JSFunctionGenerator.randomReturnType(seed)
            let jsFunc = jsContext.function { context, callInfo =>
                if (returnType == 0) {
                    context.number(123.0).toJSValue()
                } else if (returnType == 1) {
                    context.string("hello").toJSValue()
                } else if (returnType == 2) {
                    context.boolean(true).toJSValue()
                } else if (returnType == 3) {
                    context.undefined().toJSValue()
                } else {
                    context.null().toJSValue()
                }
            }
            let funcRef = jsFunc.toJSValue().asFunction()
            let result = funcRef.call()
            if (returnType == 0 && !result.isNumber()) {
                this.writeLog("testFunctionReturnTypes", "NotNumber", "expected number")
            } else if (returnType == 1 && !result.isString()) {
                this.writeLog("testFunctionReturnTypes", "NotString", "expected string")
            } else if (returnType == 2 && !result.isBoolean()) {
                this.writeLog("testFunctionReturnTypes", "NotBoolean", "expected boolean")
            } else if (returnType == 3 && !result.isUndefined()) {
                this.writeLog("testFunctionReturnTypes", "NotUndefined", "expected undefined")
            } else if (returnType == 4 && !result.isNull()) {
                this.writeLog("testFunctionReturnTypes", "NotNull", "expected null")
            }
        }
    }

    public func testCallWithThisArg(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallWithThisArg") {
            let apiName = "testCallWithThisArg"
            let jsContext = this.jsContext
            let obj = jsContext.object()
            let testValue = JSFunctionGenerator.randomArgValue(seed, exceptionRatio)
            obj.setProperty("x", jsContext.number(testValue).toJSValue())
            let fn = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let thisArg = callInfo.thisArg
                if (thisArg.isObject()) {
                    thisArg.asObject().getProperty("x")
                } else {
                    context.undefined().toJSValue()
                }
            }
            let result = fn.call(thisArg: obj.toJSValue())
            if (!result.isNumber()) {
                this.writeLog(apiName, "ResultNotNumber", "call(thisArg:) result not number")
            } else if (testValue.isNaN()) {
                if (!result.toNumber().isNaN()) {
                    this.writeLog(apiName, "ValueMismatch", "expected NaN got ${result.toNumber()}")
                }
            } else if (!floatEquals(result.toNumber(), testValue)) {
                this.writeLog(apiName, "ValueMismatch", "expected ${testValue} got ${result.toNumber()}")
            }
            let resultNoThis = fn.call()
            if (!resultNoThis.isUndefined() && !resultNoThis.isNull()) {
                this.writeLog(apiName, "NoThisNotUndef", "call() without thisArg expected undefined/null")
            }
        }
    }

    public func testCallInfoCount(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallInfoCount") {
            let apiName = "testCallInfoCount"
            let jsContext = this.jsContext
            let countFn = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                context.number(Float64(callInfo.count)).toJSValue()
            }
            let r0 = countFn.call()
            if (r0.toNumber() != 0.0) {
                this.writeLog(apiName, "Count0Mismatch", "expected 0 got ${r0.toNumber()}")
            }
            let r1 = countFn.call(jsContext.number(1.0).toJSValue())
            if (r1.toNumber() != 1.0) {
                this.writeLog(apiName, "Count1Mismatch", "expected 1 got ${r1.toNumber()}")
            }
            let r3 = countFn.call([
                jsContext.number(1.0).toJSValue(),
                jsContext.number(2.0).toJSValue(),
                jsContext.number(3.0).toJSValue()
            ])
            if (r3.toNumber() != 3.0) {
                this.writeLog(apiName, "Count3Mismatch", "expected 3 got ${r3.toNumber()}")
            }
        }
    }
}
