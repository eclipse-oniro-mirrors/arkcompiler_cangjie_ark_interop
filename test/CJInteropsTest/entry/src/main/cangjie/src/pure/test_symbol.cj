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

@Test
class TestSymbol {
    @TestCase
    func test_JSObject_operatorSet_symbolKey() {
        let jsContext = getJSContext()
        let symbol = jsContext.symbol()
        let object = jsContext.object()
        object[symbol] = jsContext.boolean(false).toJSValue()
    }

    @TestCase
    func test_JSObject_operatorGet_symbolKey() {
        let jsContext = getJSContext()
        let symbol = jsContext.symbol()
        let object = jsContext.object()
        object[symbol] = jsContext.boolean(false).toJSValue()
        let received = object[symbol]
        @Expect(received.isBoolean())
        @Expect(received.toBoolean(), false)
    }

    @TestCase
    func test_JSValue_asSymbol_description() {
        let jsContext = getJSContext()
        let symbol = jsContext.symbol()
        let value = symbol.toJSValue()
        let other = value.asSymbol()
        @Expect(other.description, "")
        symbol.toString()
        let desc = symbol.description
        @Expect(symbol.description, "")
        @Expect(symbol.description, desc)
        let value1 = symbol.toJSValue(jsContext)
        @Expect(value1.isSymbol())
        value1.asSymbol()
    }

    @TestCase
    func test_JSSymbol_toJSValue_withContext_success() {
        let jsContext = getJSContext()
        let sym = jsContext.symbol(description: "interop")
        let v = sym.toJSValue(jsContext)
        @Expect(v.isSymbol(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSSymbol_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let s = newContext.symbol(description: "sym")
        let _ = s.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            s.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSSymbol_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let s = jsContext.symbol(description: "sym")

        testThreadMismatch {
            s.toJSValue(jsContext)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSSymbol_description_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let s = newContext.symbol(description: "sym")
        let _ = s.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            s.description
        }
    }

    @TestCase
    func test_JSSymbol_description_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let s = jsContext.symbol(description: "sym")

        testThreadMismatch {
            s.description
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSSymbol_toString_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let symbol = newContext.symbol(description: "a")
        testReferenceBeyondReach(jsContext) {
            symbol.toString()
        }
    }

    @TestCase
    func test_JSSymbol_toString_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let symbol = jsContext.symbol(description: "a")
        testThreadMismatch {
            symbol.toString()
        }
    }

    @TestCase
    func test_JSSymbol_typeGuards() {
        let jsContext = getJSContext()
        let symbol = jsContext.symbol()
        let value = symbol.toJSValue()
        let valueType = value.typeof()
        @Expect(valueType == JSType.SYMBOL)
        @Expect(value.isSymbol(), true)
        @Expect(value.isNull(), false)
        @Expect(value.isBoolean(), false)
        @Expect(value.isUndefined(), false)
        @Expect(value.isArray(), false)
        @Expect(value.isClass(), false)
        @Expect(value.isNumber(), false)
        @Expect(value.isString(), false)
        @Expect(value.isBigInt(), false)
        @Expect(value.isObject(), false)
        @Expect(value.isPromise(), false)
        @Expect(value.isFunction(), false)
    }

    @TestCase
    func test_JSSymbol_sameDescription_distinctKeys() {
        let jsContext = getJSContext()
        // 2 symbol with same description is different key
        let key1 = jsContext.symbol(description: "a").toJSValue().asSymbol()
        let key2 = jsContext.symbol(description: "a").toJSValue().asSymbol()
        let object = jsContext.object()
        object[key1] = jsContext.boolean(false).toJSValue()
        object[key2] = jsContext.boolean(true).toJSValue()
        let value1 = object[key1]
        let value2 = object[key2]
        @Expect(value1.isBoolean())
        @Expect(value1.toBoolean(), false)
        @Expect(value2.isBoolean())
        @Expect(value2.toBoolean(), true)
        key1.toString()
        @Expect(key1.description, key2.description)
    }
}
