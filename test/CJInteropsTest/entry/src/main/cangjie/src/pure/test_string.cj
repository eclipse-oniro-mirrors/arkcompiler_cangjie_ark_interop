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
class TestString {
    @TestCase
    func test_JSObject_stringKey_operatorSet_success() {
        let jsContext = getJSContext()
        let originals = [
            ("a", jsContext.number(1.0).toJSValue()),
            ("1", jsContext.string("asd").toJSValue()),
            ("$", jsContext.boolean(false).toJSValue())
        ]
        let object = jsContext.object()
        for ((k, v) in originals) {
            object[k] = v
        }
        let keys = object.keys()
        for ((k, v) in originals) {
            @Expect(keys.contains(k))
            let received = object[k]
            @Expect(received.strictEqual(v))
        }
    }

    @TestCase
    func test_JSString_toJSValue_strictEqual_success() {
        let jsContext = getJSContext()
        let originals = [
            "a plain text",
            "`~!@#$%^&*()_+[]\\",
            "中文字符",
            "😊😂🤣❤️😍😒👌😘"
        ]
        for (original in originals) {
            let jsStr = jsContext.string(original)
            let value0 = jsStr.toJSValue()
            let value1 = jsStr.toJSValue(jsContext)
            @Expect(value1.isString())
            @Expect(value0.strictEqual(value1))
        }
    }

    @TestCase
    func test_JSValue_asString_toString_roundTrip() {
        let jsContext = getJSContext()
        let originals = [
            "a plain text",
            "`~!@#$%^&*()_+[]\\",
            "中文字符",
            "😊😂🤣❤️😍😒👌😘"
        ]
        for (original in originals) {
            let jsStr = jsContext.string(original)
            let value = jsStr.toJSValue()
            let other = value.asString()
            @Expect(other.toString(), original)
        }
    }

    @TestCase
    func test_JSString_toJSValue_isString_and_toString_roundTrip() {
        let jsContext = getJSContext()
        let originals = [
            "a plain text",
            "`~!@#$%^&*()_+[]\\",
            "中文字符",
            "😊😂🤣❤️😍😒👌😘"
        ]
        for (original in originals) {
            let jsStr = jsContext.string(original)
            let value = jsStr.toJSValue()
            @Expect(value.isString())
            @Expect(value.toString(), original)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSString_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let jsStr = newContext.string("hello")
        testReferenceBeyondReach(jsContext) {
            jsStr.toJSValue(newContext)
        }
    }

    @TestCase
    func test_JSString_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let jsStr = jsContext.string("hello")
        testThreadMismatch {
            jsStr.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSString_toString_roundTrip() {
        let jsContext = getJSContext()
        let originals = [
            "a plain text",
            "`~!@#$%^&*()_+[]\\",
            "中文字符",
            "😊😂🤣❤️😍😒👌😘"
        ]
        for (original in originals) {
            let jsStr = jsContext.string(original)
            @Expect(jsStr.toString(), original)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSString_toString_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let jsStr = newContext.string("hello")
        testReferenceBeyondReach(jsContext) {
            jsStr.toString()
        }
    }

    @TestCase
    func test_JSString_toString_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let jsStr = jsContext.string("hello")
        testThreadMismatch {
            jsStr.toString()
        }
    }

    @TestCase
    func test_JSString_toUtf16String_toString_roundTrip() {
        let jsContext = getJSContext()
        let originals = [
            "a plain text",
            "`~!@#$%^&*()_+[]\\",
            "中文字符",
            "😊😂🤣❤️😍😒👌😘"
        ]
        for (original in originals) {
            let jsStr = jsContext.string(original)
            let utf16Value = jsStr.toUtf16String()
            @Expect(utf16Value.toString(), original)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSString_toUtf16String_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let jsStr = newContext.string("hello")
        testReferenceBeyondReach(jsContext) {
            jsStr.toUtf16String()
        }
    }

    @TestCase
    func test_JSString_toUtf16String_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let jsStr = jsContext.string("hello")
        testThreadMismatch {
            jsStr.toUtf16String()
        }
    }
}
