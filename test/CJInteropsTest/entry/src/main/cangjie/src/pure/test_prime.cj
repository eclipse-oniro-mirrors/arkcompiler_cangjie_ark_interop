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
import ohos.ark_interop.*
import std.runtime.*
import std.sync.*

@Test
class TestPrime {
    @TestCase
    func test_JSNumber_fromInt32_toJSValue_success() {
        let jsContext = getJSContext()
        let originals: Array<Int32> = [0, 123456, Int32.Max, Int32.Min, -784121]
        for (original in originals) {
            let number = jsContext.number(original)
            let jsValue = number.toJSValue()
            @Expect(jsValue.isNumber())
        }
    }

    @TestCase
    func test_JSBoolean_toBool_success() {
        let jsContext = getJSContext()
        let boolean = jsContext.boolean(true)
        @Expect(boolean.toBool())
        let valueF = jsContext.boolean(false)
        @Expect(valueF.toBool(), false)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSBoolean_toBool_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let boolean = newContext.boolean(true)
        testReferenceBeyondReach(jsContext) {
            boolean.toBool()
        }
    }

    @TestCase
    func test_JSBoolean_toBool_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let boolean = jsContext.boolean(true)
        testThreadMismatch {
            boolean.toBool()
        }
    }

    @TestCase
    func test_JSNumber_toJSValue_success() {
        let jsContext = getJSContext()
        let originals: Array<Float64> = [0.0, 123.123, -5461.13, 12345678812.1245]
        for (original in originals) {
            let number = jsContext.number(original)
            let jsValue = number.toJSValue()
            @Expect(jsValue.isNumber())
        }
    }

    @TestCase
    func test_JSNumber_toFloat64_success() {
        let jsContext = getJSContext()
        let originals: Array<Float64> = [0.0, 123.123, -5461.13, 12345678812.1245]
        for (original in originals) {
            let number = jsContext.number(original)
            let received = number.toFloat64()
            @Expect(original, received)
        }
    }

    @TestCase
    func test_JSNumber_fromInt32_toFloat64_success() {
        let jsContext = getJSContext()
        let originals: Array<Int32> = [0, 123456, Int32.Max, Int32.Min, -784121]
        for (original in originals) {
            let number = jsContext.number(original)
            let received = Int32(await(jsContext) {number.toFloat64()})
            @Expect(original, received)
        }
    }
}
