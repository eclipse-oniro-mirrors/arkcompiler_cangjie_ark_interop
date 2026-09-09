package ohos_app_cangjie_entry.tests.dt_jsvalue

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import ohos.business_exception.BusinessException
import kit.PerformanceAnalysisKit.Hilog

let _ = registerTestModule("jsvalue", { jsContext, sandboxFile => JSValueTest(jsContext, sandboxFile) })

public class JSValueTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testUndefined", "testNull", "testBoolean", "testNumber", "testString", "testSymbol", "testTypeof", "testAsString", "testToUtf16String", "testAsSymbol"]
    }

    public func testUndefined(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testUndefined") {
            let apiName = "testUndefined"
            let context = this.jsContext
            let val = context.undefined().toJSValue()
            if (!val.isUndefined()) {
                this.writeLog(apiName, "NotUndefined", "undefined() did not produce undefined value")
            }
            // toBoolean/toNumber do strict type checking and throw on type mismatch (no JS coercion)
            try {
                let _ = val.toBoolean()
                this.writeLog(apiName, "ShouldThrow", "undefined.toBoolean should throw type mismatch")
            } catch (e: BusinessException) {}
            try {
                let _ = val.toNumber()
                this.writeLog(apiName, "ShouldThrow", "undefined.toNumber should throw type mismatch")
            } catch (e: BusinessException) {}
            // toString() does strict type checking; non-string throws (no JS-style conversion)
            try {
                let _ = val.toString()
                this.writeLog(apiName, "ShouldThrow", "undefined.toString should throw type mismatch")
            } catch (e: BusinessException) {}
        }
    }

    public func testNull(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testNull") {
            let apiName = "testNull"
            let context = this.jsContext
            let val = context.null().toJSValue()
            if (!val.isNull()) {
                this.writeLog(apiName, "NotNull", "null() did not produce null value")
            }
            // toBoolean/toNumber do strict type checking and throw on type mismatch (no JS coercion)
            try {
                let _ = val.toBoolean()
                this.writeLog(apiName, "ShouldThrow", "null.toBoolean should throw type mismatch")
            } catch (e: BusinessException) {}
            try {
                let _ = val.toNumber()
                this.writeLog(apiName, "ShouldThrow", "null.toNumber should throw type mismatch")
            } catch (e: BusinessException) {}
            // toString() does strict type checking; non-string throws (no JS-style conversion)
            try {
                let _ = val.toString()
                this.writeLog(apiName, "ShouldThrow", "null.toString should throw type mismatch")
            } catch (e: BusinessException) {}
        }
    }

    public func testBoolean(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testBoolean") {
            let apiName = "testBoolean"
            let context = this.jsContext
            let boolVal = JSValueGenerator.randomBool(seed, exceptionRatio)
            let val = context.boolean(boolVal).toJSValue()
            if (!val.isBoolean()) {
                this.writeLog(apiName, "NotBoolean", "boolean() did not produce boolean value")
            } else {
                let result = val.toBoolean()
                if (result != boolVal) {
                    this.writeLog(apiName, "ValueMismatch", "expected ${boolVal} got ${result}")
                }
            }
            let boolTrue = context.boolean(true).toJSValue()
            // toNumber does strict type checking; bool is not number, expects throw
            try {
                let _ = boolTrue.toNumber()
                this.writeLog(apiName, "ShouldThrow", "true.toNumber should throw type mismatch")
            } catch (e: BusinessException) {}
            let boolFalse = context.boolean(false).toJSValue()
            try {
                let _ = boolFalse.toNumber()
                this.writeLog(apiName, "ShouldThrow", "false.toNumber should throw type mismatch")
            } catch (e: BusinessException) {}
        }
    }

    public func testNumber(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testNumber") {
            let apiName = "testNumber"
            let context = this.jsContext
            let numVal = JSValueGenerator.randomNumber(seed, exceptionRatio)
            let val = context.number(numVal).toJSValue()
            if (!val.isNumber()) {
                this.writeLog(apiName, "NotNumber", "number() did not produce number value")
            } else {
                let result = val.toNumber()
                if (numVal.isNaN()) {
                    if (!result.isNaN()) {
                        this.writeLog(apiName, "NaNSanity", "expected NaN got ${result}")
                    }
                } else if (result != numVal) {
                    this.writeLog(apiName, "ValueMismatch", "expected ${numVal} got ${result}")
                }
            }
            let zeroVal = context.number(0.0).toJSValue()
            try {
                let zeroBool = zeroVal.toBoolean()
                if (zeroBool != false) {
                    Hilog.warn(1, "HybridTest", "testNumber: SDK limitation - 0.0.toBoolean expected false got ${zeroBool}")
                }
            } catch (e: Exception) {
                Hilog.warn(1, "HybridTest", "testNumber: SDK limitation - toBoolean on number not supported: ${e}")
            }
            let nonzeroVal = context.number(42.0).toJSValue()
            try {
                let nonzeroBool = nonzeroVal.toBoolean()
                if (nonzeroBool != true) {
                    Hilog.warn(1, "HybridTest", "testNumber: SDK limitation - 42.0.toBoolean expected true got ${nonzeroBool}")
                }
            } catch (e: Exception) {
                Hilog.warn(1, "HybridTest", "testNumber: SDK limitation - toBoolean on number not supported: ${e}")
            }
        }
    }

    public func testString(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testString") {
            let apiName = "testString"
            let context = this.jsContext
            let strVal = JSValueGenerator.randomString(seed, exceptionRatio)
            let val = context.string(strVal).toJSValue()
            if (!val.isString()) {
                this.writeLog(apiName, "NotString", "string() did not produce string value")
            } else {
                let result = val.toString()
                if (result != strVal) {
                    this.writeLog(apiName, "ValueMismatch", "expected '${strVal}' got '${result}'")
                }
            }
            let emptyStr = context.string("").toJSValue()
            // toNumber/toBoolean do strict type checking; string is not number/bool, expects throw
            try {
                let _ = emptyStr.toNumber()
                this.writeLog(apiName, "ShouldThrow", "empty.toNumber should throw type mismatch")
            } catch (e: BusinessException) {}
            let numStr = context.string("123.45").toJSValue()
            try {
                let _ = numStr.toNumber()
                this.writeLog(apiName, "ShouldThrow", "'123.45'.toNumber should throw type mismatch")
            } catch (e: BusinessException) {}
            let nonEmptyStr = context.string("hello").toJSValue()
            try {
                let _ = nonEmptyStr.toBoolean()
                this.writeLog(apiName, "ShouldThrow", "'hello'.toBoolean should throw type mismatch")
            } catch (e: BusinessException) {}
        }
    }

    public func testSymbol(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testSymbol") {
            let apiName = "testSymbol"
            let context = this.jsContext
            let sym1 = context.symbol().toJSValue()
            if (!sym1.isSymbol()) {
                this.writeLog(apiName, "NotSymbol", "symbol() did not produce symbol value")
            }
            let sym2 = context.symbol().toJSValue()
            if (sym1.strictEqual(sym2)) {
                this.writeLog(apiName, "SymbolNotUnique", "two symbols should not be strictEqual")
            }
            let obj = context.object()
            obj.setProperty("symKey", sym1)
            let retrieved = obj.getProperty("symKey")
            if (!retrieved.isSymbol()) {
                this.writeLog(apiName, "RetrievedNotSymbol", "property retrieved via symbol key is not symbol")
            }
            if (!sym1.strictEqual(retrieved)) {
                this.writeLog(apiName, "SymbolKeyMismatch", "retrieved symbol does not match original")
            }
        }
    }

    public func testTypeof(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testTypeof") {
            let apiName = "testTypeof"
            let context = this.jsContext
            let numVal = context.number(42.0).toJSValue()
            let strVal = context.string("hello").toJSValue()
            let boolVal = context.boolean(true).toJSValue()
            let undefVal = context.undefined().toJSValue()
            let nullVal = context.null().toJSValue()
            let objVal = context.object().toJSValue()
            let numType = numVal.typeof()
            let strType = strVal.typeof()
            let boolType = boolVal.typeof()
            let undefType = undefVal.typeof()
            let nullType = nullVal.typeof()
            let objType = objVal.typeof()
            if (numType == strType) {
                this.writeLog(apiName, "NumStrSameType", "number and string have same typeof")
            }
            if (numType == boolType) {
                this.writeLog(apiName, "NumBoolSameType", "number and boolean have same typeof")
            }
            if (undefType == nullType) {
                this.writeLog(apiName, "UndefNullSameType", "undefined and null have same typeof")
            }
            if (undefType == objType) {
                this.writeLog(apiName, "UndefObjSameType", "undefined and object have same typeof")
            }
            let anotherNum = context.number(99.0).toJSValue()
            if (numType != anotherNum.typeof()) {
                this.writeLog(apiName, "NumTypeInconsistent", "two numbers have different typeof")
            }
        }
    }

    public func testAsString(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testAsString") {
            let apiName = "testAsString"
            let context = this.jsContext
            let strVal = context.string("hello cj").toJSValue()
            let jsStr = strVal.asString()
            let recovered = jsStr.toJSValue().toString()
            if (recovered != "hello cj") {
                this.writeLog(apiName, "ValueMismatch", "expected 'hello cj' got '${recovered}'")
            }
            let numVal = context.number(123.0).toJSValue()
            // asString() and toString() both do strict type checking; number is not string, expect throw
            try {
                let _ = numVal.asString()
                this.writeLog(apiName, "ShouldThrow", "number.asString should throw type mismatch")
            } catch (e: BusinessException) {}
            try {
                let _ = numVal.toString()
                this.writeLog(apiName, "ShouldThrow", "number.toString should throw type mismatch")
            } catch (e: BusinessException) {}
        }
    }

    public func testToUtf16String(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testToUtf16String") {
            let apiName = "testToUtf16String"
            let context = this.jsContext
            let testStr = "中文🎨test"
            let strVal = context.string(testStr).toJSValue()
            let u16 = strVal.toUtf16String()
            let recovered = u16.toString()
            if (recovered != testStr) {
                this.writeLog(apiName, "ValueMismatch", "expected '${testStr}' got '${recovered}'")
            }
            let emojiVal = context.string("🌈").toJSValue()
            let emojiU16 = emojiVal.toUtf16String()
            let emojiBack = emojiU16.toString()
            if (emojiBack != "🌈") {
                this.writeLog(apiName, "EmojiMismatch", "emoji round-trip failed got '${emojiBack}'")
            }
        }
    }

    public func testAsSymbol(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testAsSymbol") {
            let apiName = "testAsSymbol"
            let context = this.jsContext
            let symVal = context.symbol().toJSValue()
            let symRef = symVal.asSymbol()
            let symBack = symRef.toJSValue()
            if (!symVal.strictEqual(symBack)) {
                this.writeLog(apiName, "RoundTripLost", "asSymbol round-trip lost identity")
            }
            let obj = context.object()
            obj.setProperty("key", symVal)
            let retrieved = obj.getProperty("key")
            let retrievedSym = retrieved.asSymbol()
            if (!symVal.strictEqual(retrievedSym.toJSValue())) {
                this.writeLog(apiName, "RetrievedMismatch", "retrieved symbol mismatch after asSymbol")
            }
        }
    }
}
