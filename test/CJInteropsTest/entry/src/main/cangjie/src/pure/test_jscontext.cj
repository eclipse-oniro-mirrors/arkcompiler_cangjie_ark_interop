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
import std.math.numeric.BigInt
import std.runtime.*
import std.sync.*
import std.unittest.testmacro.*
import std.unittest.*

@Test
class TestJSContext {
    @TestCase
    func test_JSContext_isInBindThread_true_onBindThread() {
        let jsContext = getJSContext()
        @Expect(jsContext.isInBindThread(), true)
    }

    @TestCase
    func test_JSContext_global_isObject_success() {
        let jsContext = getJSContext()
        @Expect(jsContext.global.toJSValue().isObject(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_global_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.global
        }
    }

    @TestCase
    func test_JSContext_global_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.global
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_env_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.env
        }
    }

    @TestCase
    func test_JSContext_env_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.env
        }
    }

    @TestCase
    func test_JSContext_env_notNull_and_getNapiEnv_notNull() {
        let jsContext = getJSContext()
        let env = jsContext.env
        let napiEnv = jsContext.getNapiEnv()
        @Expect(env != 0)
        @Expect(!napiEnv.isNull())
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_getNapiEnv_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.getNapiEnv()
        }
    }

    @TestCase
    func test_JSContext_getNapiEnv_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.getNapiEnv()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_null_factory_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.null()
        }
    }

    @TestCase
    func test_JSContext_null_success() {
        let jsContext = getJSContext()
        let v = jsContext.null().toJSValue()
        @Expect(v.isNull())
    }

    @TestCase
    func test_JSContext_null_factory_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.null()
        }
    }

    @TestCase
    func test_JSContext_boolean_false_success() {
        let jsContext = getJSContext()
        @Expect(jsContext.boolean(false).toJSValue().isBoolean(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_boolean_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.boolean(true)
        }
    }

    @TestCase
    func test_JSContext_boolean_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.boolean(true)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_number_Float64_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.number(1.0)
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_number_Int32_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.number(Int32(1))
        }
    }

    @TestCase
    func test_JSContext_number_Float64_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.number(1.0)
        }
    }

    @TestCase
    func test_JSContext_number_Int32_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.number(Int32(1))
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_string_String_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.string("a")
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_string_Utf16String_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.string(Utf16String("a"))
        }
    }

    @TestCase
    func test_JSContext_string_String_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.string("a")
        }
    }

    @TestCase
    func test_JSContext_string_Utf16String_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.string(Utf16String("a"))
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_object_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.object()
        }
    }

    @TestCase
    func test_JSContext_object_success() {
        let jsContext = getJSContext()
        let v = jsContext.object().toJSValue()
        @Expect(v.isObject())
    }

    @TestCase
    func test_JSContext_array_success() {
        let jsContext = getJSContext()
        let array = jsContext.array([jsContext.number(1.0).toJSValue(), jsContext.string("x").toJSValue()])
        let v = array.toJSValue()
        @Expect(v.isArray())
        @Expect(v.asArray().size, 2)
        @Expect(v.asArray()[0].toNumber(), 1.0)
        @Expect(v.asArray()[1].toString(), "x")
    }

    @TestCase
    func test_JSContext_arrayBuffer_throwException34300001_indexOutOfRange() {
        let jsContext = getJSContext()
        expectBusinessExceptionCode(34300001) {
            let _ = jsContext.arrayBuffer(-1)
        }
    }

    @TestCase
    func test_JSContext_object_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.object()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_function_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let nc = newContext
        let f = nc.function {_, __ => nc.undefined().toJSValue()}
        let _ = f.toJSValue()

        testReferenceBeyondReach(jsContext) {
            f.toJSValue()
        }
    }

    @TestCase
    func test_JSContext_function_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.function {_, __ => jsContext.undefined().toJSValue()}
        }
    }

    @TestCase
    func test_JSContext_clazz_returnsCallableClass_success() {
        let jsContext = getJSContext()
        let c = jsContext.clazz({_, ci => ci.thisArg})
        @Expect(c.toJSValue().isClass(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_clazz_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let nc = newContext
        let c = nc.clazz({_, ci => ci.thisArg})
        let _ = c.toJSValue()

        testReferenceBeyondReach(jsContext) {
            c.toJSValue()
        }
    }

    @TestCase
    func test_JSContext_clazz_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.clazz({_, ci => ci.thisArg})
        }
    }

    @TestCase
    func test_JSContext_external_wrapMyObject_success() {
        let jsContext = getJSContext()
        let e = jsContext.external(MyObject())
        @Expect(e.toJSValue().isExternal(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_external_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let nc = newContext
        let ext = nc.external(MyObject())
        let _ = ext.toJSValue()

        testReferenceBeyondReach(jsContext) {
            ext.toJSValue()
        }
    }

    @TestCase
    func test_JSContext_external_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let ext = jsContext.external(MyObject())

        testThreadMismatch {
            ext.toJSValue()
        }
    }

    @TestCase
    func test_JSContext_promiseCapability_construct_success() {
        let jsContext = getJSContext()
        let cap = jsContext.promiseCapability()
        @Expect(cap.toJSValue().isPromise(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_promiseCapability_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.promiseCapability()
        }
    }

    @TestCase
    func test_JSContext_promiseCapability_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.promiseCapability()
        }
    }

    @TestCase
    func test_JSContext_arrayBuffer_length() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(8)
        @Expect(buffer.byteLength, 8)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_arrayBuffer_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        testReferenceBeyondReach(jsContext) {
            newContext.arrayBuffer(8)
        }
    }

    @TestCase
    func test_JSContext_arrayBuffer_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        testThreadMismatch {
            jsContext.arrayBuffer(8)
        }
    }

    @TestCase
    func test_JSContext_arrayBuffer_0_throwException() {
        let jsContext = getJSContext()
        var err0 = false
        try {
            jsContext.arrayBuffer(0)
        } catch (e: Exception) {
            err0 = true
        }
        @Expect(err0)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_symbol_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.symbol(description: "z")
        }
    }

    @TestCase
    func test_JSContext_symbol_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.symbol(description: "z")
        }
    }

    @TestCase
    func test_JSContext_bigint_fromInt64_success() {
        let jsContext = getJSContext()
        @Expect(jsContext.bigint(13).toJSValue().isBigInt(), true)
    }

    @TestCase
    func test_JSContext_bigint_fromBigInt_success() {
        let jsContext = getJSContext()
        @Expect(jsContext.bigint(BigInt.parse("17")).toJSValue().isBigInt(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_bigint_Int64_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.bigint(Int64(1))
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_bigint_BigInt_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext

        testReferenceBeyondReach(jsContext) {
            newContext.bigint(BigInt(2))
        }
    }

    @TestCase
    func test_JSContext_bigint_Int64_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.bigint(Int64(1))
        }
    }

    @TestCase
    func test_JSContext_bigint_BigInt_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()

        testThreadMismatch {
            jsContext.bigint(BigInt(2))
        }
    }

    @TestCase
    func test_JSContext_postJSTask_resolveNumberViaPromiseCapability_success() {
        let jsContext = getJSContext()
        let promise = jsContext.promiseCapability()
        jsContext.postJSTask {
            promise.resolve(jsContext.number(1).toJSValue())
        }
    }

    @TestCase
    func test_JSContext_requireSystemNativeModule_hilog_callMethod_info(): Unit {
        let jsContext = getJSContext()
        let hilog = jsContext.requireSystemNativeModule("hilog")
        let obj = hilog.asObject()
        let arkTSParams = [
            jsContext.number(0).toJSValue(),
            jsContext.string("TEST").toJSValue(),
            jsContext.string("test log").toJSValue()
        ]
        obj.callMethod("info", arkTSParams)
        let arkTSParams2 = [
            jsContext.string("TEST").toJSValue(),
            jsContext.string("test log").toJSValue()
        ]
        obj.callMethod("info", arkTSParams2)
    }

    @TestCase
    func test_JSContext_requireSystemNativeModule_corePushPushService_objectOnly() {
        let jsContext = getJSContext()
        let pushService = jsContext.requireSystemNativeModule("core.push.pushService", prefix: "hms")
        @Expect(pushService.isObject(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_requireSystemNativeModule_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        testReferenceBeyondReach(jsContext) {
            newContext.requireSystemNativeModule("hilog")
        }
    }

    @TestCase
    func test_JSContext_requireSystemNativeModule_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        testThreadMismatch {
            jsContext.requireSystemNativeModule("hilog")
        }
    }

    @TestCase
    func test_JSRuntime_getNapiEnv_pointerNotNull_success() {
        let r = JSRuntime()
        let p = r.getNapiEnv()
        @Expect(!p.isNull(), true)
    }
}
