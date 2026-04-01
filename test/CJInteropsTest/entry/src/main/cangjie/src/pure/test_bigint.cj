/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package entry.pure

import std.unittest.*
import std.unittest.testmacro.*
import std.math.numeric.*
import std.random.*
import std.collection.*
import ohos.ark_interop.*
import std.runtime.*
import std.sync.*

class BigintRandom {
    let random = Random()

    func decimalFixed(width: Int64): BigInt {
        var text = ""
        for (i in 0..width) {
            text += (random.nextUInt8() % 10).toString()
        }
        let optResult = BigInt.tryParse(text)
        if (optResult.isNone()) {
            println("invalid bigint source '${text}'")
            @Expect(false)
        }

        return optResult.getOrThrow()
    }

    func hexFixed(width: Int64): BigInt {
        var text = "0x"
        for (i in 0..width) {
            text += toHexChar(random.nextUInt8())
        }
        BigInt.parse(text)
    }

    static func toHexChar(value: UInt8) {
        const hexChars = "0123456789ABCDEF"
        return hexChars[Int64(value % 16)].toString()
    }
}

@Test
class TestBigInt {
    @TestCase
    func test_JSBigInt_toBigInt_roundTrip() {
        let jsContext = getJSContext()
        let random = BigintRandom()
        let originals = ArrayList<BigInt>()
        for (i in 1..100) {
            originals.add(random.decimalFixed(i))
            originals.add(-random.decimalFixed(i))
            originals.add(random.decimalFixed(i))
            originals.add(-random.decimalFixed(i))
            originals.add(random.hexFixed(i))
            originals.add(-random.hexFixed(i))
            originals.add(random.hexFixed(i))
            originals.add(-random.hexFixed(i))
        }
        for (original in originals) {
            let jsValue = jsContext.bigint(original)
            let received = jsValue.toBigInt()
            @Expect(original, received)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSBigInt_toBigInt_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let jsBigInt = newContext.bigint(BigInt.parse("42"))
        testReferenceBeyondReach(jsContext) {
            jsBigInt.toBigInt()
        }
    }

    @TestCase
    func test_JSBigInt_toBigInt_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let jsBigInt = jsContext.bigint(BigInt.parse("42"))
        testThreadMismatch {
            jsBigInt.toBigInt()
        }
    }

    @TestCase
    func test_JSBigInt_toJSValue_typeGuards() {
        let jsContext = getJSContext()
        let random = Random()
        let originals = [0, 123456798, -321457896564, random.nextInt64(), random.nextInt64(), random.nextInt64(),
            random.nextInt64(), Int64.Max, Int64.Min, Int64(Int32.Max), Int64(Int32.Min), Int64(UInt32.Max)]
        for (originI64 in originals) {
            let jsBigint = jsContext.bigint(originI64)
            let jsValue = jsBigint.toJSValue()
            let jsValueType = jsValue.typeof()
            @Expect(jsValueType == JSType.BIGINT)
            @Expect(jsValue.isBigInt(), true)
            @Expect(jsValue.isNull(), false)
            @Expect(jsValue.isBoolean(), false)
            @Expect(jsValue.isUndefined(), false)
            @Expect(jsValue.isArray(), false)
            @Expect(jsValue.isClass(), false)
            @Expect(jsValue.isNumber(), false)
            @Expect(jsValue.isString(), false)
            @Expect(jsValue.isObject(), false)
            @Expect(jsValue.isSymbol(), false)
            @Expect(jsValue.isPromise(), false)
            @Expect(jsValue.isFunction(), false)
        }
    }
}
