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
    func testJSValueBigInt00() {
        let jsContext = getJSContext()
        let random = Random()
        let originals = [0, 123456798, -321457896564, random.nextInt64(), random.nextInt64(), random.nextInt64(),
            random.nextInt64(), Int64.Max, Int64.Min, Int64(Int32.Max), Int64(Int32.Min), Int64(UInt32.Max)]
        for (originI64 in originals) {
            let jsBigint = await(jsContext) {jsContext.bigint(originI64)}
            let jsValue = await(jsContext) {jsBigint.toJSValue()}
            let jsValueType = await(jsContext) {jsValue.typeof()}
            @Expect(jsValueType == JSType.BIGINT)
            @Expect(await(jsContext){jsValue.isBigInt()}, true)
            @Expect(await(jsContext){jsValue.isNull()}, false)
            @Expect(await(jsContext){jsValue.isBoolean()}, false)
            @Expect(await(jsContext){jsValue.isUndefined()}, false)
            @Expect(await(jsContext){jsValue.isArray()}, false)
            @Expect(await(jsContext){jsValue.isClass()}, false)
            @Expect(await(jsContext){jsValue.isNumber()}, false)
            @Expect(await(jsContext){jsValue.isString()}, false)
            @Expect(await(jsContext){jsValue.isObject()}, false)
            @Expect(await(jsContext){jsValue.isSymbol()}, false)
            @Expect(await(jsContext){jsValue.isPromise()}, false)
            @Expect(await(jsContext){jsValue.isFunction()}, false)
            await(jsContext) {jsValue.asBigInt()}
            let received0 = await(jsContext) {jsBigint.toBigInt()}
            let received1 = await(jsContext) {jsValue.toBigInt()}
            @Expect(received0, received1)
            @Expect(received0.toInt64(), originI64)
        }
    }

    @TestCase
    func testJSValueBigInt11() {
        let jsContext = getJSContext()
        await (jsContext) {
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

    }
}
