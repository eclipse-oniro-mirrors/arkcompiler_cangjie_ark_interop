package ohos_app_cangjie_entry.tests.mech_exception

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import ohos.business_exception.BusinessException

let _ = registerTestModule("exception", { jsContext, sandboxFile => ExceptionTest(jsContext, sandboxFile) })

public class ExceptionTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testThrowFromCJ", "testThrowBusinessException", "testInvalidTypeConversion", "testCrossLangExceptionChain", "testBusinessExceptionCodes", "testJSCodeErrorCatch", "testMultilayerExceptionChain"]
    }

    public func testThrowFromCJ(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testThrowFromCJ") {
            let errorMsg = ExceptionGenerator.randomErrorMessage(UInt64(seed), exceptionRatio)
            try {
                throw Exception(errorMsg)
            } catch (e: Exception) {
                if (e.message != errorMsg) {
                    this.writeLog("testThrowFromCJ", "MessageMismatch", "expected '${errorMsg}' got '${e.message}'")
                }
            }
        }
    }

    public func testThrowBusinessException(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testThrowBusinessException") {
            let jsContext = this.jsContext
            let errorType = ExceptionGenerator.randomErrorType(UInt64(seed))
            try {
                if (errorType == 0) {
                    let numVal = jsContext.number(42.0).toJSValue()
                    let obj = numVal.asObject()
                } else if (errorType == 1) {
                    let arr = jsContext.array(Array<JSValue>(1, { i: Int64 => jsContext.number(1.0).toJSValue() })).toJSValue()
                    let jsArr = arr.asArray()
                    let val = jsArr[Int64(seed) % 100 + 100]
                } else {
                    let undefVal = jsContext.undefined().toJSValue()
                    let obj = undefVal.asObject()
                }
            } catch (be: BusinessException) {
            } catch (e: Exception) {
                this.writeLog("testThrowBusinessException", "NonBusinessException", "errorType=${errorType} msg=${e.message}")
            }
        }
    }

    public func testInvalidTypeConversion(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testInvalidTypeConversion") {
            let jsContext = this.jsContext
            let numVal = jsContext.number(123.45).toJSValue()
            let strVal = jsContext.string("test_str").toJSValue()
            let nullVal = jsContext.null().toJSValue()
            let boolVal = jsContext.boolean(true).toJSValue()
            let undefVal = jsContext.undefined().toJSValue()

            try {
                let objFromNum = numVal.asObject()
            } catch (e: Exception) {
            }

            try {
                let numFromStr = strVal.toNumber()
            } catch (e: Exception) {
            }

            try {
                let strFromNull = nullVal.toString()
            } catch (e: Exception) {
            }

            try {
                let objFromBool = boolVal.asObject()
            } catch (e: Exception) {
            }

            try {
                let numFromUndef = undefVal.toNumber()
            } catch (e: Exception) {
            }
        }
    }

    public func testCrossLangExceptionChain(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCrossLangExceptionChain") {
            let jsContext = this.jsContext
            let arktsThrowError = jsContext.global.getProperty("arktsThrowError")
            if (!arktsThrowError.isFunction()) {
                this.writeLog("testCrossLangExceptionChain", "NotFound", "arktsThrowError not injected")
                return
            }
            let capturedFunc = arktsThrowError.asFunction()
            try {
                try {
                    capturedFunc.call()
                    this.writeLog("testCrossLangExceptionChain", "NoException", "arkts function did not throw")
                } catch (arktsErr: Exception) {
                    throw Exception("rethrown-from-cj: ${arktsErr.message}")
                }
            } catch (rethrown: Exception) {
                if (!rethrown.message.contains("rethrown-from-cj:")) {
                    this.writeLog("testCrossLangExceptionChain", "ChainBroken", "rethrown message missing prefix: ${rethrown.message}")
                }
            }
        }
    }

    public func testBusinessExceptionCodes(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testBusinessExceptionCodes") {
            let jsContext = this.jsContext
            let arr = jsContext.array(Array<JSValue>(3, { _ => jsContext.number(1.0).toJSValue() })).toJSValue()
            let jsArr = arr.asArray()
            try {
                let _ = jsArr[Int64(100)]
                this.writeLog("testBusinessExceptionCodes", "NoOOBException", "expected BusinessException for out-of-bounds")
            } catch (be: BusinessException) {
            } catch (e: Exception) {
                this.writeLog("testBusinessExceptionCodes", "OOBWrongType", "expected BusinessException, got ${e}")
            }

            let numVal = jsContext.number(42.0).toJSValue()
            try {
                let _ = numVal.asObject()
                this.writeLog("testBusinessExceptionCodes", "NoTypeException", "expected BusinessException for type mismatch")
            } catch (be: BusinessException) {
            } catch (e: Exception) {
                this.writeLog("testBusinessExceptionCodes", "TypeWrongType", "expected BusinessException, got ${e}")
            }
        }
    }

    public func testJSCodeErrorCatch(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testJSCodeErrorCatch") {
            let apiName = "testJSCodeErrorCatch"
            let jsContext = this.jsContext
            let arktsThrowError = jsContext.global.getProperty("arktsThrowError")
            if (!arktsThrowError.isFunction()) {
                this.writeLog(apiName, "NotFound", "arktsThrowError not injected")
                return
            }
            try {
                arktsThrowError.asFunction().call()
                this.writeLog(apiName, "NoException", "arktsThrowError should have thrown")
            } catch (e: Exception) {
                let msg = e.message
                if (!msg.contains("arkts_err")) {
                    this.writeLog(apiName, "MessageMismatch", "expected 'arkts_err' in: ${msg}")
                }
            }
        }
    }

    public func testMultilayerExceptionChain(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testMultilayerExceptionChain") {
            let apiName = "testMultilayerExceptionChain"
            let jsContext = this.jsContext
            let arktsThrowError = jsContext.global.getProperty("arktsThrowError")
            if (!arktsThrowError.isFunction()) {
                this.writeLog(apiName, "NotFound", "arktsThrowError not injected")
                return
            }
            let capturedFunc = arktsThrowError.asFunction()
            try {
                try {
                    try {
                        try {
                            capturedFunc.call()
                            this.writeLog(apiName, "NoException", "arktsThrowError should have thrown")
                        } catch (e0: Exception) {
                            throw Exception("cj-layer1:[${e0.message}]")
                        }
                    } catch (e1: Exception) {
                        throw Exception("cj-layer2:[${e1.message}]")
                    }
                } catch (e2: Exception) {
                    throw Exception("cj-layer3:[${e2.message}]")
                }
            } catch (e3: Exception) {
                let msg = e3.message
                if (!msg.contains("cj-layer3:")) {
                    this.writeLog(apiName, "Layer3Missing", "expected 'cj-layer3:' in: ${msg}")
                }
                if (!msg.contains("cj-layer2:")) {
                    this.writeLog(apiName, "Layer2Missing", "expected 'cj-layer2:' in: ${msg}")
                }
                if (!msg.contains("cj-layer1:")) {
                    this.writeLog(apiName, "Layer1Missing", "expected 'cj-layer1:' in: ${msg}")
                }
                if (!msg.contains("arkts_err")) {
                    this.writeLog(apiName, "ArktsErrMissing", "expected 'arkts_err' in: ${msg}")
                }
            }
        }
    }
}
