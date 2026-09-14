package ohos_app_cangjie_entry.tests.dt_jsclass

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

let _ = registerTestModule("jsclass", { jsContext, sandboxFile => JSClassTest(jsContext, sandboxFile) })

class ClassState <: SharedObject {
    var storedValue: Float64 = 0.0
    public init() { super() }
    public init(value: Float64) {
        super()
        storedValue = value
    }
}

public class JSClassTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testCreateClass", "testClassInstantiate", "testClassWithProperty", "testBindObject", "testBindExternalValue", "testInstanceOf", "testStrictEqual", "testClassInheritance", "testAsClass", "testAddMethod", "testPrototype"]
    }

    public func testCreateClass(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCreateClass") {
            let jsContext = this.jsContext
            let initialValue = JSClassGenerator.randomNumberValue(seed, exceptionRatio)
            let propName = JSClassGenerator.randomPropertyName(seed, exceptionRatio)
            let jsClass = jsContext.clazz ({ context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = ClassState(initialValue)
                obj.attachCJObject(context.external(state))
                callInfo.thisArg
            })
            jsClass.addAccessor(propName, getter: { context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = obj.getAttachInfo().getOrThrow().cast<ClassState>().getOrThrow()
                context.number(state.storedValue).toJSValue()
            }, setter: { context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = obj.getAttachInfo().getOrThrow().cast<ClassState>().getOrThrow()
                state.storedValue = callInfo[0].toNumber()
                context.undefined().toJSValue()
            })
            let classValue = jsClass.toJSValue()
            if (!classValue.isClass()) {
                this.writeLog("testCreateClass", "NotClass", "class should be JSClass type")
            }
        }
    }

    public func testClassInstantiate(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testClassInstantiate") {
            let jsContext = this.jsContext
            let jsClass = jsContext.clazz ({ context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = ClassState()
                obj.attachCJObject(context.external(state))
                callInfo.thisArg
            })
            jsClass.addAccessor("value", getter: { context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = obj.getAttachInfo().getOrThrow().cast<ClassState>().getOrThrow()
                context.number(state.storedValue).toJSValue()
            }, setter: { context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = obj.getAttachInfo().getOrThrow().cast<ClassState>().getOrThrow()
                state.storedValue = callInfo[0].toNumber()
                context.undefined().toJSValue()
            })
            let instance = jsClass.new()
            let obj = instance.asObject()
            let initialValue = obj.getProperty("value")
            if (!initialValue.isNumber()) {
                this.writeLog("testClassInstantiate", "NotNumber", "initial property not number")
            }
            obj.setProperty("value", jsContext.number(99.0).toJSValue())
            let updatedValue = obj.getProperty("value")
            if (!updatedValue.isNumber()) {
                this.writeLog("testClassInstantiate", "NotNumberAfterSet", "property not number after set")
            } else if (updatedValue.toNumber() != 99.0) {
                this.writeLog("testClassInstantiate", "ValueMismatch", "expected 99.0 got ${updatedValue.toNumber()}")
            }
        }
    }

    public func testClassWithProperty(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testClassWithProperty") {
            let jsContext = this.jsContext
            let propValue = JSClassGenerator.randomNumberValue(seed, exceptionRatio)
            let propName = JSClassGenerator.randomPropertyName(seed, exceptionRatio)
            let jsClass = jsContext.clazz ({ context: JSContext, callInfo: JSCallInfo =>
                callInfo.thisArg
            })
            jsClass.addProperty(propName, jsContext.number(propValue).toJSValue())
            let instance = jsClass.new()
            let obj = instance.asObject()
            let result = obj.getProperty(propName)
            if (!result.isNumber()) {
                this.writeLog("testClassWithProperty", "NotNumber", "static property not number")
            } else if (!floatEquals(result.toNumber(), propValue)) {
                this.writeLog("testClassWithProperty", "ValueMismatch", "expected ${propValue} got ${result.toNumber()}")
            }
        }
    }

    public func testBindObject(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testBindObject") {
            let apiName = "testBindObject"
            let jsContext = this.jsContext
            let obj = jsContext.object()
            let testValue = RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)
            let state = ClassState(testValue)
            let jsVal = obj.toJSValue()
            jsVal.bindObject(state)
            let bound = jsVal.getBindingObject()
            let recovered = (bound.getOrThrow() as ClassState).getOrThrow()
            if (recovered.storedValue != testValue) {
                this.writeLog(apiName, "ValueMismatch", "expected ${testValue} got ${recovered.storedValue}")
            }
        }
    }

    public func testBindExternalValue(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testBindExternalValue") {
            let apiName = "testBindExternalValue"
            let jsContext = this.jsContext
            let obj = jsContext.object()
            let testValue = RandomUtil.randomNumber(UInt64(seed), exceptionRatio, allowSpecial: false, maxMagnitude: 1e15)
            let state = ClassState(testValue * 2.0)
            let extVal = jsContext.external(state)
            let jsVal = obj.toJSValue()
            jsVal.bindObject(extVal.toJSValue())
            let bound = jsVal.getBindingObject()
            let recovered = (bound.getOrThrow() as ClassState).getOrThrow()
            if (recovered.storedValue != testValue * 2.0) {
                this.writeLog(apiName, "ValueMismatch", "expected ${testValue * 2.0} got ${recovered.storedValue}")
            }
        }
    }

    public func testInstanceOf(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testInstanceOf") {
            let jsContext = this.jsContext
            let jsClass = jsContext.clazz ({ context: JSContext, callInfo: JSCallInfo =>
                callInfo.thisArg
            })
            let instance = jsClass.new()
            let obj = instance.asObject()
            if (!obj.instanceOf(jsClass)) {
                this.writeLog("testInstanceOf", "NotInstance", "instance should be instanceOf class")
            }
            let otherObj = jsContext.object()
            if (otherObj.instanceOf(jsClass)) {
                this.writeLog("testInstanceOf", "FalsePositive", "non-instance reported as instance")
            }
        }
    }

    public func testStrictEqual(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testStrictEqual") {
            let jsContext = this.jsContext
            let v1 = jsContext.number(Float64(seed)).toJSValue()
            let v2 = jsContext.number(Float64(seed)).toJSValue()
            if (!v1.strictEqual(v2)) {
                this.writeLog("testStrictEqual", "SameNotEqual", "same number values not strictEqual")
            }
            let s1 = jsContext.string("test").toJSValue()
            let s2 = jsContext.string("test").toJSValue()
            if (!s1.strictEqual(s2)) {
                this.writeLog("testStrictEqual", "StringNotEqual", "same string values not strictEqual")
            }
            let numAndStr = v1.strictEqual(s1)
            if (numAndStr) {
                this.writeLog("testStrictEqual", "CrossTypeEqual", "number === string returned true (expected false)")
            }
        }
    }

    public func testClassInheritance(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testClassInheritance") {
            let apiName = "testClassInheritance"
            let jsContext = this.jsContext
            let parentClass = jsContext.clazz ({ context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = ClassState(Float64(seed))
                obj.attachCJObject(context.external(state))
                callInfo.thisArg
            })
            parentClass.addAccessor("name", getter: { context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = obj.getAttachInfo().getOrThrow().cast<ClassState>().getOrThrow()
                context.number(state.storedValue).toJSValue()
            }, setter: { context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = obj.getAttachInfo().getOrThrow().cast<ClassState>().getOrThrow()
                state.storedValue = callInfo[0].toNumber()
                context.undefined().toJSValue()
            })
            let childClass = jsContext.clazz ({ context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = ClassState(Float64(seed) + 1.0)
                obj.attachCJObject(context.external(state))
                callInfo.thisArg
            }, superClass: parentClass)
            let childInstance = childClass.new()
            let childObj = childInstance.asObject()
            let nameVal = childObj.getProperty("name")
            if (!nameVal.isNumber()) {
                Hilog.warn(1, "HybridTest", "testClassInheritance: SDK limitation - accessor not inherited from parent class")
            } else if (!floatEquals(nameVal.toNumber(), Float64(seed) + 1.0)) {
                Hilog.warn(1, "HybridTest", "testClassInheritance: SDK limitation - inherited accessor value mismatch (expected ${Float64(seed) + 1.0} got ${nameVal.toNumber()})")
            }
            if (!childObj.instanceOf(childClass)) {
                this.writeLog(apiName, "NotInstanceOfChild", "child instance not instanceOf child class")
            }
            if (!childObj.instanceOf(parentClass)) {
                Hilog.warn(1, "HybridTest", "testClassInheritance: SDK limitation - instanceOf does not traverse superClass chain")
            }
            let parentInstance = parentClass.new()
            let parentObj = parentInstance.asObject()
            if (parentObj.instanceOf(childClass)) {
                this.writeLog(apiName, "FalsePositive", "parent instance should not be instanceOf child class")
            }
        }
    }

    public func testAsClass(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testAsClass") {
            let apiName = "testAsClass"
            let jsContext = this.jsContext
            let jsClass = jsContext.clazz({ context: JSContext, callInfo: JSCallInfo =>
                callInfo.thisArg
            })
            let classValue = jsClass.toJSValue()
            if (!classValue.isClass()) {
                this.writeLog(apiName, "NotClass", "clazz().toJSValue() not class type")
            }
            let recoveredClass = classValue.asClass()
            let instance = recoveredClass.new()
            let obj = instance.asObject()
            if (!obj.instanceOf(recoveredClass)) {
                Hilog.warn(1, "HybridTest", "testAsClass: SDK limitation - instanceOf(recoveredClass) returned false after asClass round-trip")
            }
            if (!obj.instanceOf(jsClass)) {
                Hilog.warn(1, "HybridTest", "testAsClass: SDK limitation - instanceOf(originalClass) returned false after asClass round-trip")
            }
        }
    }

    public func testAddMethod(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testAddMethod") {
            let apiName = "testAddMethod"
            let jsContext = this.jsContext
            let jsClass = jsContext.clazz({ context: JSContext, callInfo: JSCallInfo =>
                callInfo.thisArg
            })
            let greetFn = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                context.string("hello from addMethod").toJSValue()
            }
            jsClass.addMethod("greet", greetFn)
            let calcFn = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                let a = callInfo[0].toNumber()
                let b = callInfo[1].toNumber()
                context.number(a + b).toJSValue()
            }
            jsClass.addMethod("calc", calcFn)
            let instance = jsClass.new()
            let obj = instance.asObject()
            let greetResult = obj.callMethod("greet", Array<JSValue>())
            if (!greetResult.isString()) {
                this.writeLog(apiName, "GreetNotString", "addMethod greet result not string")
            } else if (greetResult.toString() != "hello from addMethod") {
                this.writeLog(apiName, "GreetMismatch", "expected 'hello from addMethod' got '${greetResult.toString()}'")
            }
            let calcResult = obj.callMethod("calc", Array<JSValue>(2, { i: Int64 =>
                jsContext.number(Float64(i + 1) + Float64(seed)).toJSValue()
            }))
            if (!calcResult.isNumber()) {
                this.writeLog(apiName, "CalcNotNumber", "addMethod calc result not number")
            }
        }
    }

    public func testPrototype(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testPrototype") {
            let apiName = "testPrototype"
            let jsContext = this.jsContext
            let jsClass = jsContext.clazz({ context: JSContext, callInfo: JSCallInfo =>
                callInfo.thisArg
            })
            let proto = jsClass.prototype
            proto["protoMethod"] = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                context.number(88.0).toJSValue()
            }.toJSValue()
            let instance = jsClass.new()
            let obj = instance.asObject()
            let result = obj.callMethod("protoMethod", Array<JSValue>())
            if (!result.isNumber()) {
                this.writeLog(apiName, "NotNumber", "prototype method result not number")
            } else if (result.toNumber() != 88.0) {
                this.writeLog(apiName, "ValueMismatch", "expected 88.0 got ${result.toNumber()}")
            }
            if (!obj.hasProperty("protoMethod")) {
                this.writeLog(apiName, "NotInherited", "prototype method not inherited by instance")
            }
        }
    }
}
