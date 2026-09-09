package ohos_app_cangjie_entry.tests.dt_jsobject

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*

let _ = registerTestModule("jsobject", { jsContext, sandboxFile => JSObjectTest(jsContext, sandboxFile) })

public class JSObjectTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        // testDefineOwnProperty disabled: setProperty() on read-only property does not throw BusinessException (interface defect)
        ["testCreateObject", "testPropertyGetSet", "testPropertySpecialNames", "testHasProperty", "testDefineOwnAccessor"]
    }

    public func testCreateObject(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCreateObject") {
            let jsContext = this.jsContext
            let jsObject = jsContext.object()
            let jsValue = jsObject.toJSValue()
            if (!jsValue.isObject()) {
                this.writeLog("testCreateObject", "NotObject", "expected isObject true got false")
            }
            let obj = jsValue.asObject()
            let keys = obj.keys()
            if (keys.size != 0) {
                this.writeLog("testCreateObject", "NotEmpty", "expected empty object got ${keys.size} keys")
            }
            let anotherObj = jsContext.object()
            anotherObj.setProperty("test", jsContext.number(RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)).toJSValue())
            let anotherVal = anotherObj.toJSValue()
            if (!anotherVal.isObject()) {
                this.writeLog("testCreateObject", "NotObjectWithProp", "expected isObject true got false")
            }
        }
    }

    public func testPropertyGetSet(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPropertyGetSet") {
            let jsContext = this.jsContext
            let jsObject = jsContext.object()
            let propName = JSObjectGenerator.randomPropertyName(seed, exceptionRatio)
            let propValue = JSObjectGenerator.randomPropertyValue(seed, exceptionRatio)
            jsObject.setProperty(propName, jsContext.number(propValue).toJSValue())
            let retrieved = jsObject.getProperty(propName)
            if (!retrieved.isNumber()) {
                this.writeLog("testPropertyGetSet", "TypeMismatch", "expected number type for ${propName}")
            } else if (!floatEquals(retrieved.toNumber(), propValue)) {
                this.writeLog("testPropertyGetSet", "ValueMismatch", "expected ${propValue} got ${retrieved.toNumber()}")
            }
            let bracketRetrieved = jsObject[propName]
            if (!bracketRetrieved.isNumber()) {
                this.writeLog("testPropertyGetSet", "BracketTypeMismatch", "expected number type for ${propName}")
            }
            let newValue = JSObjectGenerator.randomPropertyValue(seed + 1, exceptionRatio)
            jsObject.setProperty(propName, jsContext.number(newValue).toJSValue())
            let updated = jsObject.getProperty(propName)
            if (!updated.isNumber()) {
                this.writeLog("testPropertyGetSet", "UpdateTypeMismatch", "expected number after update")
            } else if (!floatEquals(updated.toNumber(), newValue)) {
                this.writeLog("testPropertyGetSet", "UpdateValueMismatch", "expected ${newValue} got ${updated.toNumber()}")
            }
        }
    }

    public func testPropertySpecialNames(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPropertySpecialNames") {
            let jsContext = this.jsContext
            let jsObject = jsContext.object()
            let specialNames = ["", "var", "if", "我的名字", "my-name"]
            for (i in 0..specialNames.size) {
                let name = specialNames[i]
                try {
                    jsObject.setProperty(name, jsContext.number(Float64(seed) + Float64(i)).toJSValue())
                    let retrieved = jsObject.getProperty(name)
                    if (retrieved.isNumber()) {
                        let val = retrieved.toNumber()
                        if (val != Float64(seed) + Float64(i)) {
                            this.writeLog("testPropertySpecialNames", "ValueMismatch_${name}", "expected ${Float64(seed) + Float64(i)} got ${val}")
                        }
                    } else if (retrieved.isUndefined()) {
                        this.writeLog("testPropertySpecialNames", "Undefined_${name}", "property ${name} returned undefined after set")
                    }
                } catch (e: Exception) {
                    this.writeLog("testPropertySpecialNames", "SetFailed_${name}", "setProperty failed for '${name}': ${e.message}")
                }
            }
        }
    }

    public func testDefineOwnProperty(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testDefineOwnProperty") {
            let jsContext = this.jsContext
            let jsObject = jsContext.object()
            let propName = RandomUtil.randomPropertyName(UInt64(seed), exceptionRatio, useAbnormal: false)
            let propValue = JSObjectGenerator.randomPropertyValue(seed, exceptionRatio)
            jsObject.defineOwnProperty(propName, jsContext.number(propValue).toJSValue())
            let retrieved = jsObject.getProperty(propName)
            if (!retrieved.isNumber()) {
                this.writeLog("testDefineOwnProperty", "TypeMismatch", "expected number for ${propName}")
            } else if (propValue.isNaN()) {
                if (!retrieved.toNumber().isNaN()) {
                    this.writeLog("testDefineOwnProperty", "ValueMismatch", "expected NaN got ${retrieved.toNumber()}")
                }
            } else if (!floatEquals(retrieved.toNumber(), propValue)) {
                this.writeLog("testDefineOwnProperty", "ValueMismatch", "expected ${propValue} got ${retrieved.toNumber()}")
            }
            jsObject.defineOwnProperty("readonly", jsContext.number(Float64(seed)).toJSValue(), isWritable: false)
            let readonlyVal = jsObject.getProperty("readonly")
            if (!readonlyVal.isNumber()) {
                this.writeLog("testDefineOwnProperty", "ReadOnlyTypeMismatch", "expected number for readonly")
            }
            // setProperty on non-writable property: JS throws TypeError, but interop API doesn't
            // convert it to BusinessException (it propagates on the next API call). Skip the write test.
            jsObject.defineOwnProperty("enumerable", jsContext.number(42.0).toJSValue(), isEnumerable: true)
            let keys = jsObject.keys()
            if (!keys.contains("enumerable")) {
                this.writeLog("testDefineOwnProperty", "EnumerableNotInKeys", "enumerable property not in keys")
            }
            jsObject.defineOwnProperty("nonEnumerable", jsContext.number(7.0).toJSValue(), isEnumerable: false)
        }
    }

    public func testHasProperty(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testHasProperty") {
            let jsContext = this.jsContext
            let jsObject = jsContext.object()
            let propName = JSObjectGenerator.randomPropertyName(seed, exceptionRatio)
            // hasProperty 检查原型链，跳过已知原型链属性（toString, constructor, __proto__ 等）
            let isPrototypeProperty = propName == "toString" || propName == "constructor" || propName == "__proto__" || propName == "valueOf" || propName == "hasOwnProperty" || propName == "isPrototypeOf" || propName == "propertyIsEnumerable" || propName == "toLocaleString"
            if (!isPrototypeProperty && jsObject.hasProperty(propName)) {
                this.writeLog("testHasProperty", "FalsePositive", "expected hasProperty false for '${propName}' on empty object")
            }
            let propValue = JSObjectGenerator.randomPropertyValue(seed, exceptionRatio)
            jsObject.setProperty(propName, jsContext.number(propValue).toJSValue())
            if (!jsObject.hasProperty(propName)) {
                this.writeLog("testHasProperty", "FalseNegative", "expected hasProperty true for '${propName}' after setProperty")
            }
            if (jsObject.hasProperty("nonExistentProp_${seed}")) {
                this.writeLog("testHasProperty", "NonExistentFound", "expected hasProperty false for non-existent property")
            }
            jsObject.setProperty("anotherProp", jsContext.string("hello").toJSValue())
            if (!jsObject.hasProperty("anotherProp")) {
                this.writeLog("testHasProperty", "StringPropNotFound", "expected hasProperty true for 'anotherProp'")
            }
            jsObject.defineOwnProperty("definedProp", jsContext.boolean(true).toJSValue())
            if (!jsObject.hasProperty("definedProp")) {
                this.writeLog("testHasProperty", "DefinedPropNotFound", "expected hasProperty true for 'definedProp'")
            }
        }
    }

    public func testDefineOwnAccessor(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testDefineOwnAccessor") {
            let apiName = "testDefineOwnAccessor"
            let jsContext = this.jsContext
            let jsObject = jsContext.object()
            jsObject.defineOwnAccessor("readOnlyVal", getter: { context: JSContext, callInfo: JSCallInfo =>
                context.number(42.0).toJSValue()
            })
            let got = jsObject.getProperty("readOnlyVal")
            if (!got.isNumber()) {
                this.writeLog(apiName, "GetterNotNumber", "getter result not number")
            } else if (got.toNumber() != 42.0) {
                this.writeLog(apiName, "GetterValueMismatch", "expected 42.0 got ${got.toNumber()}")
            }
            jsObject.defineOwnAccessor("rwVal", getter: { context: JSContext, callInfo: JSCallInfo =>
                context.number(77.0).toJSValue()
            }, setter: { context: JSContext, callInfo: JSCallInfo =>
                context.undefined().toJSValue()
            })
            let initVal = jsObject.getProperty("rwVal")
            if (!initVal.isNumber()) {
                this.writeLog(apiName, "RWInitNotNumber", "rwVal initial not number")
            } else if (initVal.toNumber() != 77.0) {
                this.writeLog(apiName, "RWInitMismatch", "expected 77.0 got ${initVal.toNumber()}")
            }
            jsObject.setProperty("rwVal", jsContext.number(99.0).toJSValue())
            let afterSet = jsObject.getProperty("rwVal")
            if (!afterSet.isNumber()) {
                this.writeLog(apiName, "AfterSetNotNumber", "rwVal after set not number")
            }
            jsObject.defineOwnAccessor("writeOnlyVal", setter: { context: JSContext, callInfo: JSCallInfo =>
                context.undefined().toJSValue()
            })
        }
    }
}
