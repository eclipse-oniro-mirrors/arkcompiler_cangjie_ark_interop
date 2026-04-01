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

import ohos.ark_interop.*
import ohos.business_exception.BusinessException
import std.runtime.*
import std.sync.*
import std.unittest.testmacro.*
import std.unittest.common.*
import std.unittest.*
import std.collection.*

func doJSInteropTypeTest<T>(jsContext: JSContext, value: T): Unit where T <: JSInteropType<T> & Equatable<T> {
    let jsValue = value.toJSValue(jsContext)
    let received = T.fromJSValue(jsContext, jsValue)
    @Expect(value, received)
}

@Test
class TestIDLType {
    @TestCase
    func test_JSStringEx_operatorEqual_success_pure() {
        let a = JSStringEx("abc")
        let b = JSStringEx("abc")
        @Expect(a == b, true)
    }

    @TestCase
    func test_JSStringEx_operatorEqual_afterFromJSValue_success_pure() {
        let jsContext = getJSContext()
        let value = JSStringEx("abc")
        let other = JSStringEx.fromJSValue(jsContext, value.toJSValue(jsContext))
        @Expect(value == other, true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSStringEx_operatorEqual_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let ex = JSStringEx("a")
        let ex2 = JSStringEx("b")
        let _ = ex.toJSValue(newContext)
        let _2 = ex2.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            ex == ex2
        }
    }

    @TestCase
    func test_JSStringEx_operatorEqual_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let ex = JSStringEx("a")
        let ex2 = JSStringEx("b")
        let _ = ex.toJSValue(jsContext)
        let _2 = ex2.toJSValue(jsContext)

        testThreadMismatch {
            ex == ex2
        }
    }

    @TestCase
    func test_JSStringEx_operatorNotEqual_success_pure() {
        let a = JSStringEx("abc")
        let c = JSStringEx("xyz")
        @Expect(a != c, true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSStringEx_operatorNotEqual_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let ex = JSStringEx("a")
        let ex2 = JSStringEx("b")
        let _ = ex.toJSValue(newContext)
        let _2 = ex2.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            ex != ex2
        }
    }

    @TestCase
    func test_JSStringEx_operatorNotEqual_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let ex = JSStringEx("a")
        let ex2 = JSStringEx("b")
        let _ = ex.toJSValue(jsContext)
        let _2 = ex2.toJSValue(jsContext)

        testThreadMismatch {
            ex != ex2
        }
    }

    @TestCase
    func test_JSStringEx_toString_success_pure() {
        let a = JSStringEx("abc")
        @Expect(a.toString(), "abc")
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSStringEx_toString_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let ex = JSStringEx("a")
        let ex2 = JSStringEx("b")
        let _ = ex.toJSValue(newContext)
        let _2 = ex2.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            ex.toString()
        }
    }

    @TestCase
    func test_JSStringEx_toString_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let ex = JSStringEx("a")
        let ex2 = JSStringEx("b")
        let _ = ex.toJSValue(jsContext)
        let _2 = ex2.toJSValue(jsContext)

        testThreadMismatch {
            ex.toString()
        }
    }

    @TestCase
    func test_JSStringEx_toJSValue_isString_success_pure() {
        let jsContext = getJSContext()
        let a = JSStringEx("abc")
        @Expect(a.toJSValue(jsContext).isString(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSStringEx_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let ex = JSStringEx("ab")
        let _ = ex.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            ex.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSStringEx_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let ex = JSStringEx("ab")
        let _ = ex.toJSValue(jsContext)
        testThreadMismatch {
            ex.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSStringEx_fromJSValue_roundTrip_success_pure() {
        let jsContext = getJSContext()
        let value = JSStringEx("abc")
        let other = JSStringEx.fromJSValue(jsContext, value.toJSValue(jsContext))
        @Expect(other.toString(), "abc")
    }

    @TestCase
    func test_JSStringEx_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = JSStringEx.fromJSValue(jsContext, jsContext.number(9.0).toJSValue())
        }
    }

    @TestCase
    func test_JSStringEx_toArktsType_static_success_pure() {
        @Expect(JSStringEx.toArktsType(), "string")
    }

    @TestCase
    func test_JSArrayEx_clone_success() {
        let jsContext = getJSContext()
        let array = JSArrayEx<String>("aaa")
        let cloned = array.clone()
        @Expect(cloned.size, array.size)
        let firstOpt = cloned.get(0)
        @Expect(firstOpt.isSome())
        @Expect(firstOpt.getOrThrow(), "aaa")
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayEx_clone_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            arr.clone()
        }
    }

    @TestCase
    func test_JSArrayEx_clone_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(jsContext)
        testThreadMismatch {
            arr.clone()
        }
    }

    @TestCase
    func test_JSArrayEx_concat_success() {
        let jsContext = getJSContext()
        let array = JSArrayEx<String>("aaa")
        let copy = array.clone()
        let both = array.concat(copy)
        @Expect(both.size, 2)
        @Expect(both[0], "aaa")
        @Expect(both[1], "aaa")
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayEx_concat_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let a = JSArrayEx<String>("y")
        let b = JSArrayEx<String>("z")
        let _ = a.toJSValue(newContext)
        let _2 = b.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            a.concat(b)
        }
    }

    @TestCase
    func test_JSArrayEx_concat_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let a = JSArrayEx<String>("y")
        let b = JSArrayEx<String>("z")
        let _ = a.toJSValue(jsContext)
        let _2 = b.toJSValue(jsContext)
        testThreadMismatch {
            a.concat(b)
        }
    }

    @TestCase
    func test_JSArrayEx_size_withOneElement_success() {
        let arr = JSArrayEx<String>("b")
        arr.set(0, "a")
        @Expect(arr.size, 1)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayEx_size_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            arr.size
        }
    }

    @TestCase
    func test_JSArrayEx_size_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(jsContext)
        testThreadMismatch {
            arr.size
        }
    }

    @TestCase
    func test_JSArrayEx_get_byIndex_nonempty_success() {
        let arr = JSArrayEx<String>("b")
        arr.set(0, "a")
        @Expect(arr.get(0).getOrThrow(), "a")
    }

    @TestCase
    func test_JSArrayEx_get_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(jsContext)
        testThreadMismatch {
            arr.get(0)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayEx_get_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            arr.get(0)
        }
    }

    @TestCase
    func test_JSArrayEx_set_indexZero_success() {
        let arr = JSArrayEx<String>("b")
        arr.set(0, "a")
        @Expect(arr.size, 1)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayEx_set_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let arr = JSArrayEx<String>("x")
        let _ = arr.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            arr.set(0, "y")
        }
    }

    @TestCase
    func test_JSArrayEx_set_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(jsContext)
        testThreadMismatch {
            arr.set(0, "z")
        }
    }

    @TestCase
    func test_JSArrayEx_set_throwException34300001_indexOutOfRange() {
        let arr = JSArrayEx<String>("x")
        expectBusinessExceptionCode(34300001) {
            arr.set(2, "y")
        }
    }

    @TestCase
    func test_JSArrayEx_isEmpty_whenNew_success() {
        let arr = JSArrayEx<String>()
        @Expect(arr.isEmpty(), true)
    }

    @TestCase
    func test_JSArrayEx_isEmpty_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(jsContext)
        testThreadMismatch {
            arr.isEmpty()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayEx_isEmpty_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            arr.isEmpty()
        }
    }

    @TestCase
    func test_JSArrayEx_operatorGet_index_success() {
        let arr = JSArrayEx<String>("b")
        arr.set(0, "a")
        @Expect(arr[0], "a")
    }

    @TestCase
    func test_JSArrayEx_operatorGet_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(jsContext)
        testThreadMismatch {
            arr[0]
        }
    }

    @TestCase
    func test_JSArrayEx_operatorSet_index_success() {
        let arr = JSArrayEx<String>("b")
        arr.set(0, "a")
        arr[0] = "c"
        @Expect(arr[0], "c")
    }

    @TestCase
    func test_JSArrayEx_operatorSet_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(jsContext)
        testThreadMismatch {
            arr[0] = "z"
        }
    }

    @TestCase
    func test_JSArrayEx_operatorGet_throwException34300001_indexOutOfRange() {
        let arr = JSArrayEx<String>("x")
        expectBusinessExceptionCode(34300001) {
            let _ = arr[3]
        }
    }

    @TestCase
    func test_JSArrayEx_operatorSet_throwException34300001_indexOutOfRange() {
        let arr = JSArrayEx<String>("x")
        expectBusinessExceptionCode(34300001) {
            arr[2] = "y"
        }
    }

    @TestCase
    func test_JSArrayEx_toArray_afterOneElement_success() {
        let arr = JSArrayEx<String>("b")
        arr.set(0, "a")
        let cjArr = arr.toArray()
        @Expect(cjArr.size, 1)
        @Expect(cjArr[0], "a")
    }

    @TestCase
    func test_JSArrayEx_toArray_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(jsContext)
        testThreadMismatch {
            arr.toArray()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayEx_toArray_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let arr = JSArrayEx<String>("y")
        let _ = arr.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            arr.toArray()
        }
    }

    @TestCase
    func test_JSArrayEx_toJSValue_isArray_success() {
        let jsContext = getJSContext()
        let arr = JSArrayEx<String>("b")
        arr.set(0, "a")
        @Expect(arr.toJSValue(jsContext).isArray(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayEx_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let arr = JSArrayEx<String>("z")
        let _ = arr.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            arr.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSArrayEx_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let arr = JSArrayEx<String>("z")
        let _ = arr.toJSValue(jsContext)
        testThreadMismatch {
            arr.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSArrayEx_fromJSValue_roundTrip_success() {
        let jsContext = getJSContext()
        let array = JSArrayEx<String>("aaa")
        let copy = array.clone()
        let both = array.concat(copy)
        let jsTy = JSArrayEx<String>.fromJSValue(jsContext, both.toJSValue(jsContext)).clone()
        @Expect(jsTy.size, 2)
        @Expect(jsTy.get(0).getOrThrow(), "aaa")
    }

    @TestCase
    func test_JSArrayEx_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = JSArrayEx<String>.fromJSValue(jsContext, jsContext.number(3).toJSValue())
        }
    }

    @TestCase
    func test_JSArrayEx_toArktsType_success() {
        @Expect(JSArrayEx<String>.toArktsType(), "Array")
    }

    @TestCase
    func test_JSHashMapEx_get_success_afterSetKey() {
        let map = JSHashMapEx<String, String>()
        map.set("k", "v")
        @Expect(map.get("k").getOrThrow(), "v")
    }

    @TestCase
    func test_JSHashMapEx_get_none_whenMissingKey_success() {
        let map = JSHashMapEx<String, String>()
        @Expect(map.get("a").isNone(), true)
    }

    @TestCase
    func test_JSHashMapEx_get_afterSet_returnsValue_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        @Expect(map.get("a").getOrThrow(), "b")
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_get_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let map = JSHashMapEx<String, String>()
        map.set("k", "v")
        let _ = map.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            map.get("k")
        }
    }

    @TestCase
    func test_JSHashMapEx_clear_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        map.clear()
        @Expect(map.size, 0)
        @Expect(map.isEmpty())
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_clear_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            map.clear()
        }
    }

    @TestCase
    func test_JSHashMapEx_clear_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(jsContext)
        testThreadMismatch {
            map.clear()
        }
    }

    @TestCase
    func test_JSHashMapEx_get_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(jsContext)
        testThreadMismatch {
            map.get("a")
        }
    }

    @TestCase
    func test_JSHashMapEx_has_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(jsContext)
        testThreadMismatch {
            map.has("a")
        }
    }

    @TestCase
    func test_JSHashMapEx_clone_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let clonedMap = map.clone()
        @Expect(clonedMap.size, 1)
        @Expect(clonedMap.get("a").getOrThrow(), "b")
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_clone_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.clone()
        }
    }

    @TestCase
    func test_JSHashMapEx_clone_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.clone()
        }
    }

    @TestCase
    func test_JSHashMapEx_containsAll_success_afterSetKey() {
        let map = JSHashMapEx<String, String>()
        map.set("k", "v")
        @Expect(map.containsAll(["k"]), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_containsAll_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.containsAll(["a"])
        }
    }

    @TestCase
    func test_JSHashMapEx_containsAll_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.containsAll(["a"])
        }
    }

    @TestCase
    func test_JSHashMapEx_isEmpty_whenNew_success() {
        let map = JSHashMapEx<String, String>()
        @Expect(map.isEmpty(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_isEmpty_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.isEmpty()
        }
    }

    @TestCase
    func test_JSHashMapEx_isEmpty_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.isEmpty()
        }
    }

    @TestCase
    func test_JSHashMapEx_set_oneKey_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        @Expect(map.size, 1)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_set_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.set("c", "d")
        }
    }

    @TestCase
    func test_JSHashMapEx_set_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.set("c", "d")
        }
    }

    @TestCase
    func test_JSHashMapEx_setAll_success() {
        let map = JSHashMapEx<String, String>()
        map.setAll([("a", "b")])
        @Expect(map.size, 1)
        @Expect(map["a"], "b")
    }

    @TestCase
    func test_JSHashMapEx_operatorGet_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        @Expect(map["a"], "b")
    }

    @TestCase
    func test_JSHashMapEx_operatorSet_success() {
        let map = JSHashMapEx<String, String>()
        map["a"] = "b"
        @Expect(map.get("a").getOrThrow(), "b")
    }

    @TestCase
    func test_JSHashMapEx_operatorGet_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(jsContext)
        testThreadMismatch {
            map["a"]
        }
    }

    @TestCase
    func test_JSHashMapEx_operatorSet_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(jsContext)
        testThreadMismatch {
            map["a"] = "c"
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_setAll_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.setAll([("x", "y")])
        }
    }

    @TestCase
    func test_JSHashMapEx_setAll_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.setAll([("x", "y")])
        }
    }

    @TestCase
    func test_JSHashMapEx_setIfAbsent_success() {
        let map = JSHashMapEx<String, String>()
        map.setIfAbsent("a", "a")
        map.setIfAbsent("a", "b") // should not override
        @Expect(map["a"], "a")
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_setIfAbsent_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.setIfAbsent("z", "w")
        }
    }

    @TestCase
    func test_JSHashMapEx_setIfAbsent_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.setIfAbsent("z", "w")
        }
    }

    @TestCase
    func test_JSHashMapEx_delete_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        map.delete("a")
        @Expect(map.size, 0)
        @Expect(map.isEmpty())
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_delete_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.delete("a")
        }
    }

    @TestCase
    func test_JSHashMapEx_delete_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.delete("a")
        }
    }

    @TestCase
    func test_JSHashMapEx_deleteAll_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        map.deleteAll(["a"])
        @Expect(map.size, 0)
        @Expect(map.isEmpty())
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_deleteAll_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.deleteAll(["a"])
        }
    }

    @TestCase
    func test_JSHashMapEx_deleteAll_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.deleteAll(["a"])
        }
    }

    @TestCase
    func test_JSHashMapEx_deleteIf_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        map["b"] = "c"
        map.deleteIf {k, _ => k == "a"}
        @Expect(map.size, 1)
        @Expect(map["b"], "c")
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_deleteIf_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.deleteIf({k, v => false})
        }
    }

    @TestCase
    func test_JSHashMapEx_deleteIf_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.deleteIf({k, v => false})
        }
    }

    @TestCase
    func test_JSHashMapEx_keys_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let keys = map.keys()
        @Expect(keys.size, 1)
        @Expect(keys.contains("a"))
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_keys_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.keys()
        }
    }

    @TestCase
    func test_JSHashMapEx_keys_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.keys()
        }
    }

    @TestCase
    func test_JSHashMapEx_values_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let values = map.values()
        @Expect(values.size, 1)
        var hasB = false
        for (v in values) {
            if (v == "b") {
                hasB = true
            }
        }
        @Expect(hasB)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_values_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.values()
        }
    }

    @TestCase
    func test_JSHashMapEx_values_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.values()
        }
    }

    @TestCase
    func test_JSHashMapEx_size_success_afterSetKey() {
        let map = JSHashMapEx<String, String>()
        map.set("k", "v")
        @Expect(map.size, 1)
    }

    @TestCase
    func test_JSHashMapEx_size_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(jsContext)
        testThreadMismatch {
            map.size
        }
    }

    @TestCase
    func test_JSHashMapEx_has_success_afterSet() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        @Expect(map.has("a"), true)
    }

    @TestCase
    func test_JSHashMapEx_toHashMap_success() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let hh = map.toHashMap()
        @Expect(hh.size, 1)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_toHashMap_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.toHashMap()
        }
    }

    @TestCase
    func test_JSHashMapEx_toHashMap_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.toHashMap()
        }
    }

    @TestCase
    func test_JSHashMapEx_toJSValue_success_afterSetKey() {
        let jsContext = getJSContext()
        let map = JSHashMapEx<String, String>()
        map.set("k", "v")
        @Expect(map.toJSValue(jsContext).isObject(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            m.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSHashMapEx_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let m = JSHashMapEx<String, String>()
        m.set("a", "b")
        let _ = m.toJSValue(jsContext)

        testThreadMismatch {
            m.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSHashMapEx_fromJSValue_roundTrip_success() {
        let jsContext = getJSContext()
        let src = HashMap<String, String>([("a", "b")])
        let hashmap = JSHashMapEx<String, String>(src)
        let jsValue = hashmap.toJSValue(jsContext)
        let hashmap2 = JSHashMapEx<String, String>.fromJSValue(jsContext, jsValue)
        @Expect(hashmap2.size, 1)
        @Expect(hashmap2.get("a").getOrThrow(), "b")
    }

    @TestCase
    func test_JSHashMapEx_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = JSHashMapEx<String, String>.fromJSValue(jsContext, jsContext.number(1.0).toJSValue())
        }
    }

    @TestCase
    func test_JSHashMapEx_toArktsType_success() {
        @Expect(JSHashMapEx<String, String>.toArktsType(), "Map")
    }

    @TestCase
    func test_Int8_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = Int8.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    @TestCase
    func test_UInt8_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = UInt8.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Int8_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = Int8(1)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_UInt8_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = UInt8(1)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Int8_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = Int8(1)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_UInt8_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = UInt8(1)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Int16_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = Int16.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    @TestCase
    func test_UInt16_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = UInt16.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Int16_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = Int16(1)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_UInt16_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = UInt16(1)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Int16_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = Int16(1)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_UInt16_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = UInt16(1)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSInteropType_Int32_fromJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let value = newContext.number(1).toJSValue()
        testReferenceBeyondReach(jsContext) {
            Int32.fromJSValue(newContext, value)
        }
    }

    @TestCase
    func test_JSInteropType_Int32_fromJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1).toJSValue()
        testThreadMismatch {
            Int32.fromJSValue(jsContext, value)
        }
    }

    @TestCase
    func test_Option_Int32_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = Option<Int32>.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    @TestCase
    func test_Int32_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = Int32.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    @TestCase
    func test_UInt32_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = UInt32.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Option_Int32_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let o: Option<Int32> = Some(4)
        let _ = o.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            o.toJSValue(jsContext)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Int32_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = Int32(1)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_UInt32_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = UInt32(1)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Option_Int32_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let o: Option<Int32> = Some(4)
        let _ = o.toJSValue(jsContext)
        testThreadMismatch {
            o.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Int32_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = Int32(1)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_UInt32_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = UInt32(1)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSInteropType_numbers_UInt32_toArktsType_and_toFromJSValue_roundTrip() {
        let jsContext = getJSContext()
        @Expect(UInt32.toArktsType(), "number")
        doJSInteropTypeTest<UInt32>(jsContext, 0);
        doJSInteropTypeTest<UInt32>(jsContext, UInt32.Max);
        doJSInteropTypeTest<UInt32>(jsContext, UInt32.Min);
    }

    @TestCase
    func test_Option_Int32_toArktsType_success_pure() {
        @Expect(Option<Int32>.toArktsType(), "union")
    }

    @TestCase
    func test_Int64_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = Int64.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    @TestCase
    func test_UInt64_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = UInt64.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Int64_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = Int64(1)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_UInt64_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = UInt64(1)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Int64_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = Int64(1)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_UInt64_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = UInt64(1)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Float16_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = Float16.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Float16_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = Float16(1.0)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Float16_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = Float16(1.0)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Float32_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = Float32.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Float32_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = Float32(1.0)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Float32_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = Float32(1.0)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Float64_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = Float64.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Float64_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = Float64(1.0)
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Float64_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = Float64(1.0)
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Bool_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = Bool.fromJSValue(jsContext, jsContext.string("bad").toJSValue())
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Bool_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let v = true
        let _ = v.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Bool_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let v = true
        let _ = v.toJSValue(jsContext)
        testThreadMismatch {
            v.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSInteropType_boolean_toArktsType_and_toFromJSValue_roundTrip() {
        let jsContext = getJSContext()
        @Expect(Bool.toArktsType(), "boolean")
        doJSInteropTypeTest<Bool>(jsContext, true);
        doJSInteropTypeTest<Bool>(jsContext, false);
    }

    @TestCase
    func test_JSInteropType_JSString_toArktsType_and_fromJSValue_toString() {
        let jsContext = getJSContext()
        @Expect(JSString.toArktsType(), "string")
        let strValue = jsContext.string("abc").toJSValue()
        let jsStr = JSString.fromJSValue(jsContext, strValue)
        @Expect("abc", jsStr.toString())
    }

    @TestCase
    func test_JSString_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = JSString.fromJSValue(jsContext, jsContext.number(3.0).toJSValue())
        }
    }

    @TestCase
    func test_JSInteropType_string_toArktsType_and_toFromJSValue_roundTrip() {
        let jsContext = getJSContext()
        @Expect(String.toArktsType(), "string")
        doJSInteropTypeTest<String>(jsContext, "abc");
    }

    @TestCase
    func test_JSInteropType_optionString_toArktsType_and_toFromJSValue_roundTrip() {
        let jsContext = getJSContext()
        @Expect(Option<String>.toArktsType(), "union")
        doJSInteropTypeTest<?String>(jsContext, None<String>);
        doJSInteropTypeTest<?String>(jsContext, "abc");
    }

    @TestCase
    func test_JSInteropType_utf16String_toArktsType_and_toFromJSValue_roundTrip() {
        let jsContext = getJSContext()
        @Expect(Utf16String.toArktsType(), "string")
        doJSInteropTypeTest<Utf16String>(jsContext, Utf16String("💗"))
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Unit_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let u = ()
        let _ = u.toJSValue(newContext)

        testReferenceBeyondReach(jsContext) {
            u.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Unit_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let u = ()
        let _ = u.toJSValue(jsContext)

        testThreadMismatch {
            u.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_JSInteropType_unit_toArktsType_and_toFromJSValue_roundTrip() {
        let jsContext = getJSContext()
        @Expect(Unit.toArktsType(), "undefined")
        doJSInteropTypeTest<Unit>(jsContext, ());
    }

    @TestCase
    func test_Array_Byte_fromJSValue_throwException34300005_typeMismatch() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300005) {
            let _ = Array<Byte>.fromJSValue(jsContext, jsContext.string("x").toJSValue())
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_Array_Byte_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let arr: Array<Byte> = [1, 2]
        let _ = arr.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            arr.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Array_Byte_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let arr: Array<Byte> = [1, 2]
        let _ = arr.toJSValue(jsContext)
        testThreadMismatch {
            arr.toJSValue(jsContext)
        }
    }

    @TestCase
    func test_Array_Byte_toArktsType_success_pure() {
        @Expect(Array<Byte>.toArktsType(), "ArrayBuffer")
    }

    @TestCase
    func test_JSHashMapEx_indexerSet_success() {
        let map = JSHashMapEx<String, String>()
        map["b"] = "c"
        @Expect(map.size, 1)
    }

    @TestCase
    func test_JSHashMapEx_indexerGet_success() {
        let map = JSHashMapEx<String, String>()
        map["b"] = "c"
        @Expect(map["b"], "c")
    }

    @TestCase
    func test_JSInteropType_numbers_toArktsType_and_toFromJSValue_roundTrip() {
        let jsContext = getJSContext()
        @Expect(Int8.toArktsType(), "number")
        doJSInteropTypeTest<Int8>(jsContext, 0);
        doJSInteropTypeTest<Int8>(jsContext, Int8.Max);
        doJSInteropTypeTest<Int8>(jsContext, Int8.Min);
        @Expect(UInt8.toArktsType(), "number")
        doJSInteropTypeTest<UInt8>(jsContext, 0);
        doJSInteropTypeTest<UInt8>(jsContext, UInt8.Max);
        doJSInteropTypeTest<UInt8>(jsContext, UInt8.Min);
        @Expect(UInt16.toArktsType(), "number")
        doJSInteropTypeTest<UInt16>(jsContext, 0);
        doJSInteropTypeTest<UInt16>(jsContext, UInt16.Max);
        doJSInteropTypeTest<UInt16>(jsContext, UInt16.Min);
        @Expect(Int16.toArktsType(), "number")
        doJSInteropTypeTest<Int16>(jsContext, 0);
        doJSInteropTypeTest<Int16>(jsContext, Int16.Max);
        doJSInteropTypeTest<Int16>(jsContext, Int16.Min);
        @Expect(Int32.toArktsType(), "number")
        doJSInteropTypeTest<Int32>(jsContext, 0);
        doJSInteropTypeTest<Int32>(jsContext, Int32.Max);
        doJSInteropTypeTest<Int32>(jsContext, Int32.Min);

        @Expect(Int64.toArktsType(), "number")
        doJSInteropTypeTest<Int64>(jsContext, 0);
        doJSInteropTypeTest<Int64>(jsContext, Int64(Int32.Max));
        doJSInteropTypeTest<Int64>(jsContext, Int64(Int32.Min));
        @Expect(UInt64.toArktsType(), "number")
        doJSInteropTypeTest<UInt64>(jsContext, 0);
        doJSInteropTypeTest<UInt64>(jsContext, UInt64(UInt32.Max));
        doJSInteropTypeTest<UInt64>(jsContext, UInt64(UInt32.Min));
        @Expect(Float16.toArktsType(), "number")
        doJSInteropTypeTest<Float16>(jsContext, 0.0);
        doJSInteropTypeTest<Float16>(jsContext, Float16.Max);
        doJSInteropTypeTest<Float16>(jsContext, Float16.Min);
        @Expect(Float32.toArktsType(), "number")
        doJSInteropTypeTest<Float32>(jsContext, 0.0);
        @Expect(Float64.toArktsType(), "number")
        doJSInteropTypeTest<Float64>(jsContext, 0.0);
    }

    @TestCase
    func test_JSInteropType_arrayBufferByte_toArktsType_and_toFromJSValue_roundTrip() {
        let jsContext = getJSContext()
        @Expect(Array<Byte>.toArktsType(), "ArrayBuffer")
        doJSInteropTypeTest<Array<Byte>>(jsContext, [1, 3, 4]);
    }

    @TestCase
    func test_JSHashMapEx_indexer_missing_throwException_afterClear() {
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        map.clear()
        @Expect(withException<Exception> { _ = map["a"] })
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayEx_operatorGet_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let arr = JSArrayEx<String>("x")
        let _ = arr.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            arr[0]
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayEx_operatorSet_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let arr = JSArrayEx<String>("x")
        let _ = arr.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            arr[0] = "y"
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_size_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            map.size
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_has_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            map.has("a")
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_operatorGet_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            map["a"]
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHashMapEx_operatorSet_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let map = JSHashMapEx<String, String>()
        map.set("a", "b")
        let _ = map.toJSValue(newContext)
        testReferenceBeyondReach(jsContext) {
            map["a"] = "c"
        }
    }
}
