package ohos_app_cangjie_entry.tests.cl_ark_interface

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*

let _ = registerTestModule("interop_ark_interface", { jsContext, sandboxFile => ArkTSInterfaceTest(jsContext, sandboxFile) })

public class ArkTSInterfaceTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testCallArkTSFunc", "testReadArkTSObject", "testCallArkTSFuncMultiParam", "testCallArkTSFuncThrow", "testCallArkTSFuncReturnObj", "testCallArkTSFuncReturnArr", "testCallArkTSFuncReturnNull", "testCallArkTSFuncReturnUndefined", "testCallArkTSIdentity", "testCallArkTSMultiReturn", "testReadArkTSObjNested", "testCallArkTSObjMethod", "testWriteArkTSObject", "testReadArkTSArray", "testWriteArkTSArray", "testCangjieWrapArkTSFunc"]
    }

    public func testCallArkTSFunc(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSFunc") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsAdd = global.getProperty("arktsAdd")
            if (!arktsAdd.isFunction()) {
                this.writeLog("testCallArkTSFunc", "NotFound", "arktsAdd not found on globalThis")
            } else {
                let input = ArkTSInterfaceGenerator.randomNumber(seed, exceptionRatio)
                let result = arktsAdd.asFunction().call(jsContext.number(input).toJSValue())
                if (!result.isNumber()) {
                    this.writeLog("testCallArkTSFunc", "NotNumber", "arktsAdd result is not number")
                } else {
                    let expected = input + 1.0
                    let actual = result.toNumber()
                    if (!floatEquals(actual, expected)) {
                        this.writeLog("testCallArkTSFunc", "ValueMismatch", "expected ${expected} got ${actual}")
                    }
                }
            }
        }
    }

    public func testReadArkTSObject(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testReadArkTSObject") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsObj = global.getProperty("arktsObj")
            if (!arktsObj.isObject()) {
                this.writeLog("testReadArkTSObject", "NotFound", "arktsObj not found on globalThis")
            } else {
                let obj = arktsObj.asObject()
                let num = obj.getProperty("num")
                if (!num.isNumber()) {
                    this.writeLog("testReadArkTSObject", "NumNotNumber", "num property is not number")
                } else if (num.toNumber() != 42.0) {
                    this.writeLog("testReadArkTSObject", "NumMismatch", "expected 42.0 got ${num.toNumber()}")
                }
                let str = obj.getProperty("str")
                if (!str.isString()) {
                    this.writeLog("testReadArkTSObject", "StrNotString", "str property is not string")
                } else if (str.toString() != "hello") {
                    this.writeLog("testReadArkTSObject", "StrMismatch", "expected hello got ${str.toString()}")
                }
                let flag = obj.getProperty("flag")
                if (!flag.isBoolean()) {
                    this.writeLog("testReadArkTSObject", "FlagNotBoolean", "flag property is not boolean")
                } else if (flag.toBoolean() != true) {
                    this.writeLog("testReadArkTSObject", "FlagMismatch", "expected true got ${flag.toBoolean()}")
                }
                let nil = obj.getProperty("nil")
                if (!nil.isNull()) {
                    this.writeLog("testReadArkTSObject", "NilNotNull", "nil property is not null")
                }
            }
        }
    }

    public func testCallArkTSFuncMultiParam(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSFuncMultiParam") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsConcat = global.getProperty("arktsConcat")
            if (!arktsConcat.isFunction()) {
                this.writeLog("testCallArkTSFuncMultiParam", "NotFound", "arktsConcat not found on globalThis")
            } else {
                // allowSpecial=false: NaN/Infinity are rejected by ArkTS strict number type,
                // causing BusinessException 34300005 ("expect: string, given: number").
                let numInput = RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false)
                let strInput = ArkTSInterfaceGenerator.randomString(seed, exceptionRatio)
                let result = arktsConcat.asFunction().call([jsContext.number(numInput).toJSValue(), jsContext.string(strInput).toJSValue()])
                if (!result.isString()) {
                    this.writeLog("testCallArkTSFuncMultiParam", "NotString", "arktsConcat result is not string")
                } else {
                    // toString() does strict type checking on non-string; use Cangjie-side check instead
                    let actual = result.toString()
                    // arktsConcat(a, b) returns `${a}${b}`; verify strInput appears as suffix
                    if (!actual.endsWith(strInput)) {
                        this.writeLog("testCallArkTSFuncMultiParam", "SuffixMismatch", "result '${actual}' does not end with '${strInput}'")
                    }
                }
            }
        }
    }

    public func testCallArkTSFuncThrow(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSFuncThrow") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsThrowError = global.getProperty("arktsThrowError")
            if (!arktsThrowError.isFunction()) {
                this.writeLog("testCallArkTSFuncThrow", "NotFound", "arktsThrowError not found on globalThis")
            } else {
                try {
                    let result = arktsThrowError.asFunction().call()
                    this.writeLog("testCallArkTSFuncThrow", "NoException", "expected exception but got non-undefined result")
                } catch (e: Exception) {
                    // expected ArkTS exception caught by Cangjie
                }
            }
        }
    }

    public func testCallArkTSFuncReturnObj(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSFuncReturnObj") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsReturnObj = global.getProperty("arktsReturnObj")
            if (!arktsReturnObj.isFunction()) {
                this.writeLog("testCallArkTSFuncReturnObj", "NotFound", "arktsReturnObj not found on globalThis")
            } else {
                let result = arktsReturnObj.asFunction().call()
                if (!result.isObject()) {
                    this.writeLog("testCallArkTSFuncReturnObj", "NotObject", "return value is not object")
                } else {
                    let obj = result.asObject()
                    let num = obj.getProperty("num")
                    if (!num.isNumber()) {
                        this.writeLog("testCallArkTSFuncReturnObj", "NumNotNumber", "num not number in returned obj")
                    }
                    let str = obj.getProperty("str")
                    if (!str.isString()) {
                        this.writeLog("testCallArkTSFuncReturnObj", "StrNotString", "str not string in returned obj")
                    }
                    let flag = obj.getProperty("flag")
                    if (!flag.isBoolean()) {
                        this.writeLog("testCallArkTSFuncReturnObj", "FlagNotBoolean", "flag not boolean in returned obj")
                    }
                    let nil = obj.getProperty("nil")
                    if (!nil.isNull()) {
                        this.writeLog("testCallArkTSFuncReturnObj", "NilNotNull", "nil not null in returned obj")
                    }
                }
            }
        }
    }

    public func testCallArkTSFuncReturnArr(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSFuncReturnArr") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsReturnArr = global.getProperty("arktsReturnArr")
            if (!arktsReturnArr.isFunction()) {
                this.writeLog("testCallArkTSFuncReturnArr", "NotFound", "arktsReturnArr not found on globalThis")
            } else {
                let result = arktsReturnArr.asFunction().call()
                if (!result.isArray()) {
                    this.writeLog("testCallArkTSFuncReturnArr", "NotArray", "return value is not array")
                } else {
                    let arr = result.asArray()
                    let elem0 = arr[Int64(0)]
                    if (!elem0.isNumber()) {
                        this.writeLog("testCallArkTSFuncReturnArr", "Elem0NotNumber", "first element not number")
                    }
                    let elem1 = arr[Int64(1)]
                    if (!elem1.isString()) {
                        this.writeLog("testCallArkTSFuncReturnArr", "Elem1NotString", "second element not string")
                    }
                    let elem2 = arr[Int64(2)]
                    if (!elem2.isBoolean()) {
                        this.writeLog("testCallArkTSFuncReturnArr", "Elem2NotBoolean", "third element not boolean")
                    }
                    let elem3 = arr[Int64(3)]
                    if (!elem3.isNull()) {
                        this.writeLog("testCallArkTSFuncReturnArr", "Elem3NotNull", "fourth element not null")
                    }
                }
            }
        }
    }

    public func testCallArkTSFuncReturnNull(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSFuncReturnNull") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsReturnNull = global.getProperty("arktsReturnNull")
            if (!arktsReturnNull.isFunction()) {
                this.writeLog("testCallArkTSFuncReturnNull", "NotFound", "arktsReturnNull not found on globalThis")
            } else {
                let result = arktsReturnNull.asFunction().call()
                if (!result.isNull()) {
                    this.writeLog("testCallArkTSFuncReturnNull", "NotNull", "expected null but got non-null value")
                }
            }
        }
    }

    public func testCallArkTSFuncReturnUndefined(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSFuncReturnUndefined") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsReturnUndefined = global.getProperty("arktsReturnUndefined")
            if (!arktsReturnUndefined.isFunction()) {
                this.writeLog("testCallArkTSFuncReturnUndefined", "NotFound", "arktsReturnUndefined not found on globalThis")
            } else {
                let result = arktsReturnUndefined.asFunction().call()
                if (!result.isUndefined()) {
                    this.writeLog("testCallArkTSFuncReturnUndefined", "NotUndefined", "expected undefined but got non-undefined value")
                }
            }
        }
    }

    public func testCallArkTSIdentity(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSIdentity") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsIdentity = global.getProperty("arktsIdentity")
            if (!arktsIdentity.isFunction()) {
                this.writeLog("testCallArkTSIdentity", "NotFound", "arktsIdentity not found on globalThis")
            } else {
                let input = ArkTSInterfaceGenerator.randomNumber(seed, exceptionRatio)
                let result = arktsIdentity.asFunction().call(jsContext.number(input).toJSValue())
                if (!result.isNumber()) {
                    this.writeLog("testCallArkTSIdentity", "NotNumber", "identity result is not number")
                } else if (!floatEquals(result.toNumber(), input)) {
                    this.writeLog("testCallArkTSIdentity", "NotIdentity", "expected ${input} got ${result.toNumber()}")
                }
            }
        }
    }

    public func testCallArkTSMultiReturn(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSMultiReturn") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsMultiReturn = global.getProperty("arktsMultiReturn")
            if (!arktsMultiReturn.isFunction()) {
                this.writeLog("testCallArkTSMultiReturn", "NotFound", "arktsMultiReturn not found on globalThis")
            } else {
                let typeCode = ArkTSInterfaceGenerator.randomTypeCode(seed)
                let result = arktsMultiReturn.asFunction().call(jsContext.number(Float64(typeCode)).toJSValue())
                if (typeCode == 0 && !result.isNumber()) {
                    this.writeLog("testCallArkTSMultiReturn", "Type0NotNumber", "expected number for type 0")
                } else if (typeCode == 1 && !result.isString()) {
                    this.writeLog("testCallArkTSMultiReturn", "Type1NotString", "expected string for type 1")
                } else if (typeCode == 2 && !result.isBoolean()) {
                    this.writeLog("testCallArkTSMultiReturn", "Type2NotBoolean", "expected boolean for type 2")
                } else if (typeCode == 3 && !result.isNull()) {
                    this.writeLog("testCallArkTSMultiReturn", "Type3NotNull", "expected null for type 3")
                } else if (typeCode == 4 && !result.isArray()) {
                    this.writeLog("testCallArkTSMultiReturn", "Type4NotArray", "expected array for type 4")
                } else if (typeCode == 5 && !result.isObject()) {
                    this.writeLog("testCallArkTSMultiReturn", "Type5NotObject", "expected object for type 5")
                }
            }
        }
    }

    public func testReadArkTSObjNested(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testReadArkTSObjNested") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsObjNested = global.getProperty("arktsObjNested")
            if (!arktsObjNested.isObject()) {
                this.writeLog("testReadArkTSObjNested", "NotFound", "arktsObjNested not found on globalThis")
            } else {
                let outer = arktsObjNested.asObject()
                let outerProp = outer.getProperty("outer")
                if (!outerProp.isObject()) {
                    this.writeLog("testReadArkTSObjNested", "OuterNotObject", "outer is not object")
                } else {
                    let inner = outerProp.asObject().getProperty("inner")
                    if (!inner.isObject()) {
                        this.writeLog("testReadArkTSObjNested", "InnerNotObject", "inner is not object")
                    } else {
                        let innerObj = inner.asObject()
                        let deep = innerObj.getProperty("deep")
                        if (!deep.isString()) {
                            this.writeLog("testReadArkTSObjNested", "DeepNotString", "deep is not string")
                        } else if (deep.toString() != "value") {
                            this.writeLog("testReadArkTSObjNested", "DeepMismatch", "expected value got ${deep.toString()}")
                        }
                        let count = innerObj.getProperty("count")
                        if (!count.isNumber()) {
                            this.writeLog("testReadArkTSObjNested", "CountNotNumber", "count is not number")
                        } else if (count.toNumber() != 99.0) {
                            this.writeLog("testReadArkTSObjNested", "CountMismatch", "expected 99.0 got ${count.toNumber()}")
                        }
                    }
                }
            }
        }
    }

    public func testCallArkTSObjMethod(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCallArkTSObjMethod") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsObjWithMethod = global.getProperty("arktsObjWithMethod")
            if (!arktsObjWithMethod.isObject()) {
                this.writeLog("testCallArkTSObjMethod", "NotFound", "arktsObjWithMethod not found on globalThis")
            } else {
                let obj = arktsObjWithMethod.asObject()
                let input = ArkTSInterfaceGenerator.randomNumber(seed, exceptionRatio)
                let result = obj.callMethod("compute", jsContext.number(input).toJSValue())
                if (!result.isNumber()) {
                    this.writeLog("testCallArkTSObjMethod", "NotNumber", "compute result is not number")
                } else {
                    let expected = input * 10.0
                    let actual = result.toNumber()
                    if (!floatEquals(actual, expected)) {
                        this.writeLog("testCallArkTSObjMethod", "Mismatch", "expected ${expected} got ${actual}")
                    }
                }
            }
        }
    }

    public func testWriteArkTSObject(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testWriteArkTSObject") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsObj = global.getProperty("arktsObj")
            if (!arktsObj.isObject()) {
                this.writeLog("testWriteArkTSObject", "NotFound", "arktsObj not found on globalThis")
            } else {
                let obj = arktsObj.asObject()
                // Save original values to restore after test (arktsObj is shared with testReadArkTSObject)
                let origNum = obj.getProperty("num")
                let origStr = obj.getProperty("str")
                let newNum = ArkTSInterfaceGenerator.randomNumber(seed, exceptionRatio)
                obj.setProperty("num", jsContext.number(newNum).toJSValue())
                let readBack = obj.getProperty("num")
                if (!readBack.isNumber()) {
                    this.writeLog("testWriteArkTSObject", "ReadBackNotNumber", "read-back num is not number")
                } else if (!floatEquals(readBack.toNumber(), newNum)) {
                    this.writeLog("testWriteArkTSObject", "ReadBackMismatch", "expected ${newNum} got ${readBack.toNumber()}")
                }
                let newStr = ArkTSInterfaceGenerator.randomString(seed, exceptionRatio)
                obj.setProperty("str", jsContext.string(newStr).toJSValue())
                let strReadBack = obj.getProperty("str")
                if (!strReadBack.isString()) {
                    this.writeLog("testWriteArkTSObject", "StrNotString", "read-back str is not string")
                } else if (strReadBack.toString() != newStr) {
                    this.writeLog("testWriteArkTSObject", "StrMismatch", "expected ${newStr} got ${strReadBack.toString()}")
                }
                // Restore original values so other test cases see the initial state
                if (origNum.isNumber()) {
                    obj.setProperty("num", origNum)
                }
                if (origStr.isString()) {
                    obj.setProperty("str", origStr)
                }
            }
        }
    }

    public func testReadArkTSArray(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testReadArkTSArray") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsArr = global.getProperty("arktsArr")
            if (!arktsArr.isArray()) {
                this.writeLog("testReadArkTSArray", "NotFound", "arktsArr not found on globalThis")
            } else {
                let arr = arktsArr.asArray()
                let elem0 = arr[Int64(0)]
                if (!elem0.isNumber()) {
                    this.writeLog("testReadArkTSArray", "Elem0NotNumber", "first element not number")
                }
                let elem1 = arr[Int64(1)]
                if (!elem1.isString()) {
                    this.writeLog("testReadArkTSArray", "Elem1NotString", "second element not string")
                }
                let elem2 = arr[Int64(2)]
                if (!elem2.isBoolean()) {
                    this.writeLog("testReadArkTSArray", "Elem2NotBoolean", "third element not boolean")
                }
                let elem3 = arr[Int64(3)]
                if (!elem3.isNull()) {
                    this.writeLog("testReadArkTSArray", "Elem3NotNull", "fourth element not null")
                }
                let elem4 = arr[Int64(4)]
                if (!elem4.isObject()) {
                    this.writeLog("testReadArkTSArray", "Elem4NotObject", "fifth element not object")
                } else {
                    let obj4 = elem4.asObject()
                    let keyVal = obj4.getProperty("key")
                    if (!keyVal.isString()) {
                        this.writeLog("testReadArkTSArray", "KeyNotString", "key property not string")
                    } else if (keyVal.toString() != "val") {
                        this.writeLog("testReadArkTSArray", "KeyMismatch", "expected val got ${keyVal.toString()}")
                    }
                }
            }
        }
    }

    public func testWriteArkTSArray(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testWriteArkTSArray") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsArr = global.getProperty("arktsArr")
            if (!arktsArr.isArray()) {
                this.writeLog("testWriteArkTSArray", "NotFound", "arktsArr not found on globalThis")
            } else {
                let arr = arktsArr.asArray()
                let newVal = ArkTSInterfaceGenerator.randomNumber(seed, exceptionRatio)
                arr[Int64(0)] = jsContext.number(newVal).toJSValue()
                let readBack = arr[Int64(0)]
                if (!readBack.isNumber()) {
                    this.writeLog("testWriteArkTSArray", "ReadBackNotNumber", "written element is not number")
                } else if (!floatEquals(readBack.toNumber(), newVal)) {
                    this.writeLog("testWriteArkTSArray", "ReadBackMismatch", "expected ${newVal} got ${readBack.toNumber()}")
                }
                let newStr = ArkTSInterfaceGenerator.randomString(seed, exceptionRatio)
                arr[Int64(1)] = jsContext.string(newStr).toJSValue()
                let strReadBack = arr[Int64(1)]
                if (!strReadBack.isString()) {
                    this.writeLog("testWriteArkTSArray", "StrReadBackNotString", "written string element is not string")
                }
            }
        }
    }

    public func testCangjieWrapArkTSFunc(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCangjieWrapArkTSFunc") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let arktsAdd = global.getProperty("arktsAdd")
            if (!arktsAdd.isFunction()) {
                this.writeLog("testCangjieWrapArkTSFunc", "NotFound", "arktsAdd not found on globalThis")
            } else {
                let arktsAddFunc = arktsAdd.asFunction()
                let wrapper = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                    let input = callInfo[0].toNumber()
                    let arktsResult = arktsAddFunc.call(context.number(input).toJSValue())
                    let arktsRetVal = arktsResult.toNumber()
                    let cjExtra = arktsRetVal * 2.0
                    context.number(cjExtra).toJSValue()
                }
                global.setProperty("cjWrappedAdd", wrapper.toJSValue())
                let input = ArkTSInterfaceGenerator.randomNumber(seed, exceptionRatio)
                let wrapperResult = wrapper.call(jsContext.number(input).toJSValue())
                if (!wrapperResult.isNumber()) {
                    this.writeLog("testCangjieWrapArkTSFunc", "NotNumber", "wrapper result is not number")
                } else {
                    let expected = (input + 1.0) * 2.0
                    let actual = wrapperResult.toNumber()
                    if (!floatEquals(actual, expected)) {
                        this.writeLog("testCangjieWrapArkTSFunc", "Mismatch", "expected ${expected} got ${actual}")
                    }
                }
                let globalWrapper = global.getProperty("cjWrappedAdd")
                if (!globalWrapper.isFunction()) {
                    this.writeLog("testCangjieWrapArkTSFunc", "GlobalNotFunction", "wrapper not found on globalThis after set")
                } else {
                    let globalResult = globalWrapper.asFunction().call(jsContext.number(input).toJSValue())
                    if (!globalResult.isNumber()) {
                        this.writeLog("testCangjieWrapArkTSFunc", "GlobalNotNumber", "global wrapper result is not number")
                    } else if (!floatEquals(globalResult.toNumber(), (input + 1.0) * 2.0)) {
                        this.writeLog("testCangjieWrapArkTSFunc", "GlobalMismatch", "global wrapper expected ${(input + 1.0) * 2.0} got ${globalResult.toNumber()}")
                    }
                }
            }
        }
    }
}
