package ohos_app_cangjie_entry.tests.dt_boundary

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import std.math.*

let _ = registerTestModule("dt_boundary", { jsContext, sandboxFile => BoundaryTest(jsContext, sandboxFile) })

public class BoundaryTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testNumberBoundary", "testStringBoundary", "testSpecialFloatEqual", "testLargeStringStress", "testLargeArrayStress", "testDeepNestingStress"]
    }

    public func testNumberBoundary(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testNumberBoundary") {
            let jsContext = this.jsContext
            let specialVals: Array<Float64> = [
                Float64.NaN,
                1.7976931348623157e308,
                -1.7976931348623157e308,
                0.0,
                -0.0,
                5e-324,
                1.0,
                -1.0
            ]
            for (i in 0..specialVals.size) {
                let v = specialVals[i]
                let jsVal = jsContext.number(v).toJSValue()
                if (!jsVal.isNumber()) {
                    this.writeLog("testNumberBoundary", "NotNumber", "idx=${i} value not detected as number")
                } else {
                    let recovered = jsVal.toNumber()
                    if (v.isNaN()) {
                        if (!recovered.isNaN()) {
                            this.writeLog("testNumberBoundary", "NaNSanity", "idx=${i} expected NaN got ${recovered}")
                        }
                    } else if (recovered != v) {
                        this.writeLog("testNumberBoundary", "ValueMismatch", "idx=${i} expected ${v} got ${recovered}")
                    }
                }
            }
        }
    }

    public func testStringBoundary(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testStringBoundary") {
            let jsContext = this.jsContext
            let emptyStr = ""
            let jsEmpty = jsContext.string(emptyStr).toJSValue()
            if (!jsEmpty.isString()) {
                this.writeLog("testStringBoundary", "EmptyNotString", "empty string not detected as string")
            } else if (jsEmpty.toString() != emptyStr) {
                this.writeLog("testStringBoundary", "EmptyMismatch", "expected '' got '${jsEmpty.toString()}'")
            }

            let longStr = StringBuilder()
            for (i in 0..1000) {
                longStr.append("x")
            }
            let longStrVal = longStr.toString()
            let jsLong = jsContext.string(longStrVal).toJSValue()
            if (!jsLong.isString()) {
                this.writeLog("testStringBoundary", "LongNotString", "long string not detected as string")
            } else if (jsLong.toString().size != longStrVal.size) {
                this.writeLog("testStringBoundary", "LongSizeMismatch", "expected ${longStrVal.size} got ${jsLong.toString().size}")
            }

            let emojiStr = "Hello 🌍🚀💻 世界"
            let jsEmoji = jsContext.string(emojiStr).toJSValue()
            if (!jsEmoji.isString()) {
                this.writeLog("testStringBoundary", "EmojiNotString", "emoji string not detected as string")
            } else if (jsEmoji.toString() != emojiStr) {
                this.writeLog("testStringBoundary", "EmojiMismatch", "emoji string roundtrip mismatch")
            }
        }
    }

    public func testSpecialFloatEqual(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testSpecialFloatEqual") {
            let jsContext = this.jsContext
            let nan1 = jsContext.number(Float64.NaN).toJSValue()
            let nan2 = jsContext.number(Float64.NaN).toJSValue()
            if (nan1.strictEqual(nan2)) {
                this.writeLog("testSpecialFloatEqual", "NaNStrictEqual", "NaN === NaN returned true (expected false)")
            }

            let posZero = jsContext.number(0.0).toJSValue()
            let negZero = jsContext.number(-0.0).toJSValue()
            if (!posZero.strictEqual(negZero)) {
                this.writeLog("testSpecialFloatEqual", "ZeroStrictEqual", "+0 === -0 returned false (expected true)")
            }

            let inf1 = jsContext.number(1.7976931348623157e308).toJSValue()
            let inf2 = jsContext.number(1.7976931348623157e308).toJSValue()
            if (!inf1.strictEqual(inf2)) {
                this.writeLog("testSpecialFloatEqual", "MaxDoubleStrictEqual", "max double === max double returned false (expected true)")
            }
        }
    }

    public func testLargeStringStress(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testLargeStringStress") {
            let apiName = "testLargeStringStress"
            let jsContext = this.jsContext
            let sizes = [1024, 10240, 102400]
            for (i in 0..sizes.size) {
                let size = sizes[i]
                var sb = StringBuilder()
                for (j in 0..size) {
                    sb.append("a")
                }
                let largeStr = sb.toString()
                let jsStr = jsContext.string(largeStr).toJSValue()
                if (!jsStr.isString()) {
                    this.writeLog(apiName, "NotString_${size}", "size ${size} not detected as string")
                } else {
                    let recovered = jsStr.toString()
                    if (recovered.size != size) {
                        this.writeLog(apiName, "SizeMismatch_${size}", "expected ${size} got ${recovered.size}")
                    }
                }
            }
            let mixedSb = StringBuilder()
            for (j in 0..1000) {
                mixedSb.append(Rune((j % 95) + 32).toString())
            }
            let mixedStr = mixedSb.toString()
            let jsMixed = jsContext.string(mixedStr).toJSValue()
            if (!jsMixed.isString() || jsMixed.toString() != mixedStr) {
                this.writeLog(apiName, "MixedStrMismatch", "printable ASCII roundtrip failed")
            }
        }
    }

    public func testLargeArrayStress(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testLargeArrayStress") {
            let apiName = "testLargeArrayStress"
            let jsContext = this.jsContext
            let sizes = [100, 1000, 10000]
            for (i in 0..sizes.size) {
                let size = sizes[i]
                let content = Array<JSValue>(Int64(size), { j: Int64 =>
                    jsContext.number(Float64(j)).toJSValue()
                })
                let jsArr = jsContext.array(content).toJSValue()
                if (!jsArr.isArray()) {
                    this.writeLog(apiName, "NotArray_${size}", "size ${size} not detected as array")
                } else {
                    let arr = jsArr.asArray()
                    if (arr.size != Int64(size)) {
                        this.writeLog(apiName, "SizeMismatch_${size}", "expected ${size} got ${arr.size}")
                    } else {
                        let lastIdx = Int64(size) - 1
                        let last = arr[lastIdx]
                        if (!last.isNumber() || last.toNumber() != Float64(lastIdx)) {
                            this.writeLog(apiName, "ElemMismatch_${size}", "last elem expected ${lastIdx} got ${last.toNumber()}")
                        }
                    }
                }
            }
        }
    }

    public func testDeepNestingStress(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testDeepNestingStress") {
            let apiName = "testDeepNestingStress"
            let jsContext = this.jsContext
            let depth = Int64(seed % 50) + 10
            let root = jsContext.object()
            var current = root
            for (i in 0..depth) {
                let child = jsContext.object()
                current.setProperty("level_${i}", child.toJSValue())
                current.setProperty("value", jsContext.number(Float64(i)).toJSValue())
                current = child
            }
            var verify = root
            var mismatch = false
            for (i in 0..depth) {
                let val = verify.getProperty("value")
                if (!val.isNumber() || val.toNumber() != Float64(i)) {
                    this.writeLog(apiName, "LevelMismatch_${i}", "expected ${i} got ${val.toNumber()}")
                    mismatch = true
                    break
                }
                let next = verify.getProperty("level_${i}")
                if (!next.isObject()) {
                    if (i < depth - 1) {
                        this.writeLog(apiName, "ChildNotFound_${i}", "expected object at depth ${i}")
                        mismatch = true
                    }
                    break
                }
                verify = next.asObject()
            }
        }
    }
}
