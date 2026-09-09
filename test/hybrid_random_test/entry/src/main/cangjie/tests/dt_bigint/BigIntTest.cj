package ohos_app_cangjie_entry.tests.dt_bigint

import ohos_app_cangjie_entry.utils.*
import ohos.ark_interop.*
import std.math.numeric.BigInt
import std.random.Random

let _ = registerTestModule("dt_bigint", { jsContext, sandboxFile => BigIntTest(jsContext, sandboxFile) })

public class BigIntTest <: KitTest {
    public init(jsContext: JSContext, sandboxFile: String) {
        super(jsContext, sandboxFile)
    }

    public override func getTestMethodNames(): Array<String> {
        ["testCreateBigIntFromInt64", "testCreateBigIntFromString", "testReadBigInt", "testBigIntSign", "testBigIntLargeString", "testBigIntArithmetic", "testBitLen", "testRandomBigIntRoundTrip"]
    }

    public func testCreateBigIntFromInt64(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCreateBigIntFromInt64") {
            let jsContext = this.jsContext
            let intVal = Int64(seed)
            let jsBigInt = jsContext.bigint(intVal).toJSValue()
            if (!jsBigInt.isBigInt()) {
                this.writeLog("testCreateBigIntFromInt64", "NotBigInt", "bigint from Int64 not detected as bigint")
            } else {
                let recovered = jsBigInt.asBigInt().toBigInt().toInt64()
                if (recovered != intVal) {
                    this.writeLog("testCreateBigIntFromInt64", "ValueMismatch", "expected ${intVal} got ${recovered}")
                }
            }
        }
    }

    public func testCreateBigIntFromString(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testCreateBigIntFromString") {
            let jsContext = this.jsContext
            let largeStr = "123456789012345678901234567890"
            let bigVal = BigInt(largeStr)
            let jsBigInt = jsContext.bigint(bigVal).toJSValue()
            if (!jsBigInt.isBigInt()) {
                this.writeLog("testCreateBigIntFromString", "NotBigInt", "bigint from string not detected")
            } else {
                let recovered = jsBigInt.asBigInt().toBigInt()
                if (recovered.toString() != largeStr) {
                    this.writeLog("testCreateBigIntFromString", "ValueMismatch", "expected ${largeStr} got ${recovered.toString()}")
                }
            }
        }
    }

    public func testReadBigInt(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testReadBigInt") {
            let jsContext = this.jsContext
            let obj = jsContext.object()
            let testVal = Int64(seed) * 1000000
            obj.setProperty("big", jsContext.bigint(testVal).toJSValue())
            let retrieved = obj.getProperty("big")
            if (!retrieved.isBigInt()) {
                this.writeLog("testReadBigInt", "NotBigInt", "retrieved property is not bigint")
            } else {
                let recovered = retrieved.asBigInt().toBigInt().toInt64()
                if (recovered != testVal) {
                    this.writeLog("testReadBigInt", "ValueMismatch", "expected ${testVal} got ${recovered}")
                }
            }
        }
    }

    public func testBigIntSign(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testBigIntSign") {
            let jsContext = this.jsContext
            let posVal = jsContext.bigint(Int64(seed) + 1).toJSValue()
            let negVal = jsContext.bigint(-(Int64(seed) + 1)).toJSValue()
            let zeroVal = jsContext.bigint(0).toJSValue()
            let posSign = posVal.asBigInt().toBigInt().sign
            let negSign = negVal.asBigInt().toBigInt().sign
            let zeroSign = zeroVal.asBigInt().toBigInt().sign
            if (posSign != 1) {
                this.writeLog("testBigIntSign", "PositiveSign", "expected 1 got ${posSign}")
            }
            if (negSign != -1) {
                this.writeLog("testBigIntSign", "NegativeSign", "expected -1 got ${negSign}")
            }
            if (zeroSign != 0) {
                this.writeLog("testBigIntSign", "ZeroSign", "expected 0 got ${zeroSign}")
            }
        }
    }

    public func testBigIntLargeString(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testBigIntLargeString") {
            let apiName = "testBigIntLargeString"
            let jsContext = this.jsContext
            var largeStr = ""
            var i: Int64 = 0
            while (i < 120) {
                largeStr = largeStr + "1234567890"
                i = i + 1
            }
            let bigVal = BigInt(largeStr)
            let jsBigInt = jsContext.bigint(bigVal).toJSValue()
            if (!jsBigInt.isBigInt()) {
                this.writeLog(apiName, "NotBigInt", "large bigint not detected")
            } else {
                let recovered = jsBigInt.asBigInt().toBigInt()
                if (recovered.toString() != largeStr) {
                    this.writeLog(apiName, "ValueMismatch", "large bigint round-trip failed")
                }
            }
        }
    }

    public func testBigIntArithmetic(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testBigIntArithmetic") {
            let apiName = "testBigIntArithmetic"
            let jsContext = this.jsContext
            let a = BigInt("99999999999999999999")
            let b = BigInt("1")
            let sum = a + b
            let expected = BigInt("100000000000000000000")
            if (sum != expected) {
                this.writeLog(apiName, "AddMismatch", "99999999999999999999 + 1 expected 100000000000000000000 got ${sum.toString()}")
            }
            let jsSum = jsContext.bigint(sum).toJSValue()
            if (!jsSum.isBigInt()) {
                this.writeLog(apiName, "NotBigInt", "sum is not bigint")
            } else {
                let recovered = jsSum.asBigInt().toBigInt()
                if (recovered != expected) {
                    this.writeLog(apiName, "RoundTripMismatch", "round-trip failed expected ${expected.toString()} got ${recovered.toString()}")
                }
            }
            let product = a * b
            let jsProduct = jsContext.bigint(product).toJSValue()
            if (jsProduct.asBigInt().toBigInt() != a) {
                this.writeLog(apiName, "MulMismatch", "a * 1 should equal a")
            }
        }
    }

    public func testBitLen(seed: UInt32, exceptionRatio: Float64): String {
        runWithCatch("testBitLen") {
            let apiName = "testBitLen"
            let jsContext = this.jsContext
            let zeroBig = BigInt(0)
            let jsZero = jsContext.bigint(zeroBig).toJSValue()
            let zeroLen = jsZero.asBigInt().toBigInt().bitLen
            // Cangjie BigInt(0).bitLen returns 1 (stdlib behavior, not 0 like Python/Java)
            if (zeroLen != 1) {
                this.writeLog(apiName, "ZeroBitLen", "expected 1 got ${zeroLen}")
            }
            let val255 = BigInt(255)
            let js255 = jsContext.bigint(val255).toJSValue()
            let len255 = js255.asBigInt().toBigInt().bitLen
            if (len255 != 8) {
                this.writeLog(apiName, "255BitLen", "expected 8 got ${len255}")
            }
            let val256 = BigInt(256)
            let js256 = jsContext.bigint(val256).toJSValue()
            let len256 = js256.asBigInt().toBigInt().bitLen
            if (len256 != 9) {
                this.writeLog(apiName, "256BitLen", "expected 9 got ${len256}")
            }
            let largeBig = BigInt("123456789012345678901234567890")
            let jsLarge = jsContext.bigint(largeBig).toJSValue()
            let largeLen = jsLarge.asBigInt().toBigInt().bitLen
            if (largeLen < 90) {
                this.writeLog(apiName, "LargeBitLen", "expected >=90 got ${largeLen}")
            }
        }
    }

    public func testRandomBigIntRoundTrip(seed: UInt32, exceptionRatio: Float64): String {
        let apiName = "testRandomBigIntRoundTrip"
        runWithCatch(apiName) {
            let jsContext = this.jsContext
            let digitCount = Int64(RandomUtil.randomInt(UInt64(seed), exceptionRatio, allowNegative: false, allowSpecial: false, bitWidth: 32) % 100) + 10
            var sb = StringBuilder()
            let rng = Random(UInt64(seed))
            sb.append(if (rng.nextBool()) { "-" } else { "" })
            for (i in 0..digitCount) {
                let d = rng.nextInt64(10)
                if (i == 0 && d == 0) {
                    sb.append("1")
                } else {
                    sb.append("${d}")
                }
            }
            let bigStr = sb.toString()
            let bigVal = BigInt(bigStr)
            let jsBigInt = jsContext.bigint(bigVal).toJSValue()
            if (!jsBigInt.isBigInt()) {
                this.writeLog(apiName, "NotBigInt", "random BigInt not detected")
            } else {
                let recovered = jsBigInt.asBigInt().toBigInt()
                if (recovered.toString() != bigStr) {
                    this.writeLog(apiName, "RoundTripMismatch", "expected ${bigStr} got ${recovered.toString()}")
                }
            }
        }
    }
}
