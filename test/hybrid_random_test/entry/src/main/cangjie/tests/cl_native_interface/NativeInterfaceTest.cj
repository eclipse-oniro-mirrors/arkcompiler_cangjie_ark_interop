package ohos_app_cangjie_entry.tests.cl_native_interface

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import ohos.business_exception.BusinessException

let _ = registerTestModule("interop_native_interface", { jsContext, sandboxFile => NativeInterfaceTest(jsContext, sandboxFile) })

public class NativeInterfaceTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testCallNativeAdd", "testCallNativeConcat", "testCallNativeBoolOp", "testCallNativeThrow", "testCallNativeIdentity", "testCallNativeReturnNumber", "testCallNativeReturnString", "testCallNativeReturnBoolean", "testCallNativeReturnVoid", "testCangjieWrapNativeFunc"]
    }

    public func testCallNativeAdd(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallNativeAdd") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let nativeAdd = global.getProperty("nativeAdd")
            if (!nativeAdd.isFunction()) {
                this.writeLog("testCallNativeAdd", "NotFound", "nativeAdd not found on globalThis")
            } else {
                let input = NativeInterfaceGenerator.randomNumber(seed, exceptionRatio)
                let result = nativeAdd.asFunction().call(jsContext.number(input).toJSValue())
                if (!result.isNumber()) {
                    this.writeLog("testCallNativeAdd", "NotNumber", "nativeAdd result is not number")
                } else {
                    let expected = input + 1.0
                    let actual = result.toNumber()
                    if (!floatEquals(actual, expected)) {
                        this.writeLog("testCallNativeAdd", "ValueMismatch", "expected ${expected} got ${actual}")
                    }
                }
            }
        }
    }

    public func testCallNativeConcat(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallNativeConcat") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let nativeConcat = global.getProperty("nativeConcat")
            if (!nativeConcat.isFunction()) {
                this.writeLog("testCallNativeConcat", "NotFound", "nativeConcat not found on globalThis")
            } else {
                let numInput = NativeInterfaceGenerator.randomNumber(seed, exceptionRatio)
                let strInput = NativeInterfaceGenerator.randomString(seed, exceptionRatio)
                let result = nativeConcat.asFunction().call([jsContext.number(numInput).toJSValue(), jsContext.string(strInput).toJSValue()])
                if (!result.isString()) {
                    this.writeLog("testCallNativeConcat", "NotString", "nativeConcat result is not string")
                } else {
                    let actual = result.toString()
                    if (!actual.contains(strInput)) {
                        this.writeLog("testCallNativeConcat", "SuffixMismatch", "result '${actual}' does not contain '${strInput}'")
                    }
                }
            }
        }
    }

    public func testCallNativeBoolOp(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallNativeBoolOp") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let nativeBoolOp = global.getProperty("nativeBoolOp")
            if (!nativeBoolOp.isFunction()) {
                this.writeLog("testCallNativeBoolOp", "NotFound", "nativeBoolOp not found on globalThis")
            } else {
                let input = NativeInterfaceGenerator.randomBool(seed, exceptionRatio)
                let result = nativeBoolOp.asFunction().call(jsContext.boolean(input).toJSValue())
                if (!result.isBoolean()) {
                    this.writeLog("testCallNativeBoolOp", "NotBoolean", "nativeBoolOp result is not boolean")
                } else {
                    let expected = !input
                    let actual = result.toBoolean()
                    if (actual != expected) {
                        this.writeLog("testCallNativeBoolOp", "Mismatch", "expected ${expected} got ${actual}")
                    }
                }
            }
        }
    }

    public func testCallNativeThrow(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallNativeThrow") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let nativeThrow = global.getProperty("nativeThrow")
            if (!nativeThrow.isFunction()) {
                this.writeLog("testCallNativeThrow", "NotFound", "nativeThrow not found on globalThis")
            } else {
                try {
                    let _ = nativeThrow.asFunction().call()
                    this.writeLog("testCallNativeThrow", "NoException", "expected exception but none was thrown")
                } catch (err: BusinessException) {
                    // ArkTS exceptions are wrapped as BusinessException by the interop layer (cjLambdaInvoker).
                    // This is the expected behavior: the exception crossed the language boundary correctly.
                } catch (e: Exception) {
                    this.writeLog("testCallNativeThrow", "CaughtEx", "type=${e} msg=${e.message}")
                }
            }
        }
    }

    public func testCallNativeIdentity(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallNativeIdentity") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let nativeIdentity = global.getProperty("nativeIdentity")
            if (!nativeIdentity.isFunction()) {
                this.writeLog("testCallNativeIdentity", "NotFound", "nativeIdentity not found on globalThis")
            } else {
                let input = NativeInterfaceGenerator.randomNumber(seed, exceptionRatio)
                let result = nativeIdentity.asFunction().call(jsContext.number(input).toJSValue())
                if (!result.isNumber()) {
                    this.writeLog("testCallNativeIdentity", "NotNumber", "identity result is not number")
                } else if (!floatEquals(result.toNumber(), input)) {
                    this.writeLog("testCallNativeIdentity", "NotIdentity", "expected ${input} got ${result.toNumber()}")
                }
            }
        }
    }

    public func testCallNativeReturnNumber(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallNativeReturnNumber") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let nativeReturnNumber = global.getProperty("nativeReturnNumber")
            if (!nativeReturnNumber.isFunction()) {
                this.writeLog("testCallNativeReturnNumber", "NotFound", "nativeReturnNumber not found on globalThis")
            } else {
                let result = nativeReturnNumber.asFunction().call()
                if (!result.isNumber()) {
                    this.writeLog("testCallNativeReturnNumber", "NotNumber", "return value is not number")
                }
            }
        }
    }

    public func testCallNativeReturnString(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallNativeReturnString") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let nativeReturnString = global.getProperty("nativeReturnString")
            if (!nativeReturnString.isFunction()) {
                this.writeLog("testCallNativeReturnString", "NotFound", "nativeReturnString not found on globalThis")
            } else {
                let result = nativeReturnString.asFunction().call()
                if (!result.isString()) {
                    this.writeLog("testCallNativeReturnString", "NotString", "return value is not string")
                }
            }
        }
    }

    public func testCallNativeReturnBoolean(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallNativeReturnBoolean") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let nativeReturnBoolean = global.getProperty("nativeReturnBoolean")
            if (!nativeReturnBoolean.isFunction()) {
                this.writeLog("testCallNativeReturnBoolean", "NotFound", "nativeReturnBoolean not found on globalThis")
            } else {
                let result = nativeReturnBoolean.asFunction().call()
                if (!result.isBoolean()) {
                    this.writeLog("testCallNativeReturnBoolean", "NotBoolean", "return value is not boolean")
                }
            }
        }
    }

    public func testCallNativeReturnVoid(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallNativeReturnVoid") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let nativeReturnVoid = global.getProperty("nativeReturnVoid")
            if (!nativeReturnVoid.isFunction()) {
                this.writeLog("testCallNativeReturnVoid", "NotFound", "nativeReturnVoid not found on globalThis")
            } else {
                let result = nativeReturnVoid.asFunction().call()
                if (!result.isUndefined()) {
                    let typeStr = if (result.isNull()) { "null" }
                        else if (result.isBoolean()) { "boolean" }
                        else if (result.isNumber()) { "number" }
                        else if (result.isString()) { "string" }
                        else if (result.isObject()) { "object" }
                        else if (result.isArray()) { "array" }
                        else if (result.isFunction()) { "function" }
                        else { "unknown" }
                    this.writeLog("testCallNativeReturnVoid", "NotUndefined", "void function should return undefined, got type=${typeStr}")
                }
            }
        }
    }

    public func testCangjieWrapNativeFunc(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCangjieWrapNativeFunc") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let nativeAdd = global.getProperty("nativeAdd")
            if (!nativeAdd.isFunction()) {
                this.writeLog("testCangjieWrapNativeFunc", "NotFound", "nativeAdd not found on globalThis")
            } else {
                let nativeAddFunc = nativeAdd.asFunction()
                let wrapper = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                    let input = callInfo[0].toNumber()
                    let nativeResult = nativeAddFunc.call(context.number(input).toJSValue())
                    let nativeRetVal = nativeResult.toNumber()
                    let cjExtra = nativeRetVal * 2.0
                    context.number(cjExtra).toJSValue()
                }
                global.setProperty("cjWrapNativeAdd", wrapper.toJSValue())
                let input = NativeInterfaceGenerator.randomNumber(seed, exceptionRatio)
                let wrapperResult = wrapper.call(jsContext.number(input).toJSValue())
                if (!wrapperResult.isNumber()) {
                    this.writeLog("testCangjieWrapNativeFunc", "NotNumber", "wrapper result is not number")
                } else {
                    let expected = (input + 1.0) * 2.0
                    let actual = wrapperResult.toNumber()
                    if (!floatEquals(actual, expected)) {
                        this.writeLog("testCangjieWrapNativeFunc", "Mismatch", "expected ${expected} got ${actual}")
                    }
                }
                let globalWrapper = global.getProperty("cjWrapNativeAdd")
                if (!globalWrapper.isFunction()) {
                    this.writeLog("testCangjieWrapNativeFunc", "GlobalNotFunction", "wrapper not found on globalThis after set")
                } else {
                    let globalResult = globalWrapper.asFunction().call(jsContext.number(input).toJSValue())
                    if (!globalResult.isNumber()) {
                        this.writeLog("testCangjieWrapNativeFunc", "GlobalNotNumber", "global wrapper result is not number")
                    } else if (!floatEquals(globalResult.toNumber(), (input + 1.0) * 2.0)) {
                        this.writeLog("testCangjieWrapNativeFunc", "GlobalMismatch", "global wrapper expected ${(input + 1.0) * 2.0} got ${globalResult.toNumber()}")
                    }
                }
            }
        }
    }
}
