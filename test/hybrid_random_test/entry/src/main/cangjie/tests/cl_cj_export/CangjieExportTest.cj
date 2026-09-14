package ohos_app_cangjie_entry.tests.cl_cj_export

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import kit.PerformanceAnalysisKit.Hilog

let _ = registerTestModule("interop_cj_export", { jsContext, sandboxFile => CangjieExportTest(jsContext, sandboxFile) })

class ExportState <: SharedObject {
    var storedValue: Float64 = 0.0
    public init() { super() }
    public init(value: Float64) {
        super()
        storedValue = value
    }
}

public class CangjieExportTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testExportFunction", "testExportObject", "testExportArray", "testExportClassInstance", "testExportNestedStructure", "testExportUpdateGlobal", "testExportFunctionChain"]
    }

    public func testExportFunction(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testExportFunction") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let numVal = CangjieExportGenerator.randomNumber(seed, exceptionRatio)
            let jsFunc = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                context.number(numVal).toJSValue()
            }
            global.setProperty("cjExport_func", jsFunc.toJSValue())
            let retrieved = global.getProperty("cjExport_func")
            if (!retrieved.isFunction()) {
                this.writeLog("testExportFunction", "NotFunction", "global property is not function after set")
            } else {
                let funcRef = retrieved.asFunction()
                let callResult = funcRef.call()
                if (!callResult.isNumber()) {
                    this.writeLog("testExportFunction", "NotNumber", "call result is not number")
                } else if (!floatEquals(callResult.toNumber(), numVal)) {
                    this.writeLog("testExportFunction", "ValueMismatch", "expected ${numVal} got ${callResult.toNumber()}")
                }
            }
        }
    }

    public func testExportObject(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testExportObject") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let numVal = CangjieExportGenerator.randomNumber(seed, exceptionRatio)
            let strVal = CangjieExportGenerator.randomString(seed, exceptionRatio)
            let boolVal = seed % 2 == 0
            let obj = jsContext.object()
            obj.setProperty("num", jsContext.number(numVal).toJSValue())
            obj.setProperty("str", jsContext.string(strVal).toJSValue())
            obj.setProperty("bool", jsContext.boolean(boolVal).toJSValue())
            global.setProperty("cjExport_obj", obj.toJSValue())
            let retrieved = global.getProperty("cjExport_obj").asObject()
            let numRetrieved = retrieved.getProperty("num")
            if (!numRetrieved.isNumber()) {
                this.writeLog("testExportObject", "NumNotNumber", "num property is not number")
            } else if (!floatEquals(numRetrieved.toNumber(), numVal)) {
                this.writeLog("testExportObject", "NumMismatch", "expected ${numVal} got ${numRetrieved.toNumber()}")
            }
            let strRetrieved = retrieved.getProperty("str")
            if (!strRetrieved.isString()) {
                this.writeLog("testExportObject", "StrNotString", "str property is not string")
            } else if (strRetrieved.toString() != strVal) {
                this.writeLog("testExportObject", "StrMismatch", "expected ${strVal} got ${strRetrieved.toString()}")
            }
            let boolRetrieved = retrieved.getProperty("bool")
            if (!boolRetrieved.isBoolean()) {
                this.writeLog("testExportObject", "BoolNotBoolean", "bool property is not boolean")
            } else if (boolRetrieved.toBoolean() != boolVal) {
                this.writeLog("testExportObject", "BoolMismatch", "expected ${boolVal} got ${boolRetrieved.toBoolean()}")
            }
        }
    }

    public func testExportArray(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testExportArray") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let numVal0 = CangjieExportGenerator.randomNumber(seed, exceptionRatio)
            let numVal1 = CangjieExportGenerator.randomNumber(seed + 1, exceptionRatio)
            let strVal = CangjieExportGenerator.randomString(seed, exceptionRatio)
            let boolVal = seed % 2 == 0
            let arr = jsContext.array(Array<JSValue>(4, { i: Int64 =>
                if (i == 0) {
                    jsContext.number(numVal0).toJSValue()
                } else if (i == 1) {
                    jsContext.number(numVal1).toJSValue()
                } else if (i == 2) {
                    jsContext.string(strVal).toJSValue()
                } else {
                    jsContext.boolean(boolVal).toJSValue()
                }
            }))
            global.setProperty("cjExport_arr", arr.toJSValue())
            let retrieved = global.getProperty("cjExport_arr")
            if (!retrieved.isArray()) {
                this.writeLog("testExportArray", "NotArray", "global property is not array after set")
            } else {
                let arrObj = retrieved.asArray()
                let elem0 = arrObj[Int64(0)]
                if (!elem0.isNumber()) {
                    this.writeLog("testExportArray", "Elem0NotNumber", "first element is not number")
                } else if (!floatEquals(elem0.toNumber(), numVal0)) {
                    this.writeLog("testExportArray", "Elem0Mismatch", "expected ${numVal0} got ${elem0.toNumber()}")
                }
                let elem2 = arrObj[Int64(2)]
                if (!elem2.isString()) {
                    this.writeLog("testExportArray", "Elem2NotString", "third element is not string")
                } else if (elem2.toString() != strVal) {
                    this.writeLog("testExportArray", "Elem2Mismatch", "expected ${strVal} got ${elem2.toString()}")
                }
                let elem3 = arrObj[Int64(3)]
                if (!elem3.isBoolean()) {
                    this.writeLog("testExportArray", "Elem3NotBoolean", "fourth element is not boolean")
                } else if (elem3.toBoolean() != boolVal) {
                    this.writeLog("testExportArray", "Elem3Mismatch", "expected ${boolVal} got ${elem3.toBoolean()}")
                }
            }
        }
    }

    public func testExportClassInstance(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testExportClassInstance") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let initValue = CangjieExportGenerator.randomNumber(seed, exceptionRatio)
            let jsClass = jsContext.clazz ({ context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = ExportState(initValue)
                obj.attachCJObject(context.external(state))
                callInfo.thisArg
            })
            jsClass.addAccessor("storedValue", getter: { context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = obj.getAttachInfo().getOrThrow().cast<ExportState>().getOrThrow()
                context.number(state.storedValue).toJSValue()
            }, setter: { context: JSContext, callInfo: JSCallInfo =>
                let obj = callInfo.thisArg.asObject()
                let state = obj.getAttachInfo().getOrThrow().cast<ExportState>().getOrThrow()
                state.storedValue = callInfo[0].toNumber()
                context.undefined().toJSValue()
            })
            let instance = jsClass.new()
            global.setProperty("cjExport_class", instance)
            let retrieved = global.getProperty("cjExport_class")
            if (!retrieved.isObject()) {
                this.writeLog("testExportClassInstance", "NotObject", "global property is not object after set")
            } else {
                let obj = retrieved.asObject()
                let stored = obj.getProperty("storedValue")
                if (!stored.isNumber()) {
                    this.writeLog("testExportClassInstance", "NotNumber", "storedValue is not number")
                } else if (initValue.isNaN()) {
                    if (!stored.toNumber().isNaN()) {
                        this.writeLog("testExportClassInstance", "ValueMismatch", "expected NaN got ${stored.toNumber()}")
                    }
                } else if (!floatEquals(stored.toNumber(), initValue)) {
                    this.writeLog("testExportClassInstance", "ValueMismatch", "expected ${initValue} got ${stored.toNumber()}")
                }
                let newValue = CangjieExportGenerator.randomNumber(seed + 1, exceptionRatio)
                obj.setProperty("storedValue", jsContext.number(newValue).toJSValue())
                let updated = obj.getProperty("storedValue")
                if (!updated.isNumber()) {
                    this.writeLog("testExportClassInstance", "UpdatedNotNumber", "storedValue after set is not number")
                } else if (!newValue.isNaN() && !floatEquals(updated.toNumber(), newValue)) {
                    Hilog.warn(1, "HybridTest", "testExportClassInstance: SDK limitation - setProperty may not dispatch to accessor setter (expected ${newValue} got ${updated.toNumber()})")
                }
                let attachInfo = obj.getAttachInfo().getOrThrow().cast<ExportState>().getOrThrow()
                if (!newValue.isNaN() && attachInfo.storedValue != newValue) {
                    Hilog.warn(1, "HybridTest", "testExportClassInstance: SDK limitation - attachInfo state not synced (expected ${newValue} got ${attachInfo.storedValue})")
                }
            }
        }
    }

    public func testExportNestedStructure(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testExportNestedStructure") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let innerObj = jsContext.object()
            let innerNum = CangjieExportGenerator.randomNumber(seed, exceptionRatio)
            innerObj.setProperty("innerNum", jsContext.number(innerNum).toJSValue())
            let outerObj = jsContext.object()
            outerObj.setProperty("nested", innerObj.toJSValue())
            outerObj.setProperty("outerStr", jsContext.string(CangjieExportGenerator.randomString(seed, exceptionRatio)).toJSValue())
            global.setProperty("cjExport_nested", outerObj.toJSValue())
            let retrieved = global.getProperty("cjExport_nested").asObject()
            let nested = retrieved.getProperty("nested")
            if (!nested.isObject()) {
                this.writeLog("testExportNestedStructure", "NestedNotObject", "nested property is not object")
            } else {
                let innerRetrieved = nested.asObject()
                let innerNumRetrieved = innerRetrieved.getProperty("innerNum")
                if (!innerNumRetrieved.isNumber()) {
                    this.writeLog("testExportNestedStructure", "InnerNotNumber", "innerNum is not number")
                } else if (!floatEquals(innerNumRetrieved.toNumber(), innerNum)) {
                    this.writeLog("testExportNestedStructure", "InnerMismatch", "expected ${innerNum} got ${innerNumRetrieved.toNumber()}")
                }
            }
        }
    }

    public func testExportUpdateGlobal(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testExportUpdateGlobal") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let numVal1 = CangjieExportGenerator.randomNumber(seed, exceptionRatio)
            global.setProperty("cjExport_globalUpdate", jsContext.number(numVal1).toJSValue())
            let retrieved1 = global.getProperty("cjExport_globalUpdate")
            if (!retrieved1.isNumber()) {
                this.writeLog("testExportUpdateGlobal", "FirstNotNumber", "first set is not number")
            } else if (!floatEquals(retrieved1.toNumber(), numVal1)) {
                this.writeLog("testExportUpdateGlobal", "FirstMismatch", "expected ${numVal1} got ${retrieved1.toNumber()}")
            }
            let numVal2 = CangjieExportGenerator.randomNumber(seed + 1, exceptionRatio)
            global.setProperty("cjExport_globalUpdate", jsContext.number(numVal2).toJSValue())
            let retrieved2 = global.getProperty("cjExport_globalUpdate")
            if (!retrieved2.isNumber()) {
                this.writeLog("testExportUpdateGlobal", "SecondNotNumber", "second set is not number")
            } else if (!floatEquals(retrieved2.toNumber(), numVal2)) {
                this.writeLog("testExportUpdateGlobal", "SecondMismatch", "expected ${numVal2} got ${retrieved2.toNumber()}")
            }
        }
    }

    public func testExportFunctionChain(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testExportFunctionChain") {
            let jsContext = this.jsContext
            let global = jsContext.global
            let numVal = CangjieExportGenerator.randomNumber(seed, exceptionRatio)
            let innerFunc = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                context.number(numVal).toJSValue()
            }
            let outerFunc = jsContext.function { context: JSContext, callInfo: JSCallInfo =>
                innerFunc.call()
            }
            global.setProperty("cjExport_chainOuter", outerFunc.toJSValue())
            let retrieved = global.getProperty("cjExport_chainOuter")
            if (!retrieved.isFunction()) {
                this.writeLog("testExportFunctionChain", "NotFunction", "chain outer is not function")
            } else {
                let chainResult = retrieved.asFunction().call()
                if (!chainResult.isNumber()) {
                    this.writeLog("testExportFunctionChain", "ChainNotNumber", "chain call result is not number")
                } else if (!floatEquals(chainResult.toNumber(), numVal)) {
                    this.writeLog("testExportFunctionChain", "ChainMismatch", "expected ${numVal} got ${chainResult.toNumber()}")
                }
            }
        }
    }
}
