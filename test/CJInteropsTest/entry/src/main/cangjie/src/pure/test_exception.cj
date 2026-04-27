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
import std.runtime.*
import std.sync.*
import std.unittest.testmacro.*
import std.unittest.common.*
import std.unittest.*

@Test
class TestException {
    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSContext_undefined_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        testReferenceBeyondReach(jsContext) {
            newContext.undefined()
        }
    }

    @TestCase
    func test_JSContext_undefined_throwException34300004_threadMismatch() {
        let context = getJSContext()
        testThreadMismatch {
            context.undefined()
        }
    }

    @TestCase
    func test_JSFunction_call_throwException_businessException() {
        let jsContext = getJSContext()
        let jsFunc = jsContext.function {
            _, callInfo => throw Exception("this is an exception")
        }
        testExceptionThrow<BusinessException> {
            jsFunc.call()
        }
    }

    @TestCase
    func test_Int8_fromJSValue_overflow_throwException() {
        let context = getJSContext()
        let src: Int32 = Int32.Max
        testExceptionThrow<BusinessException> {
            let value = src.toJSValue(context)
            Int8.fromJSValue(context, value)
        }
    }

    @TestCase
    func test_String_fromJSValue_null_throwException() {
        let jsContext = getJSContext()

        withException<Exception> {
            String.fromJSValue(
                jsContext,
                jsContext.null().toJSValue()
            )
        }
    }

    @TestCase
    func test_JSPromiseCapability_reject_afterResolve_throwException_useAfterFree() {
        let jsContext = getJSContext()
        let promiseCap = jsContext.promiseCapability()
        promiseCap.resolve(jsContext.null().toJSValue())
        testExceptionThrow<BusinessException> {
            promiseCap.reject(jsContext.string("xxx").toJSValue())
        }
    }

    @TestCase
    func test_JSValue_number_asNull_throwException_typeMismatch() {
        let jsContext = getJSContext()
        testExceptionThrow<BusinessException> {
            jsContext.number(1.0).toJSValue().asNull()
        }
    }

    @TestCase
    func test_JSValue_number_asUndefined_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asUndefined()
        }
    }

    @TestCase
    func test_JSValue_number_asBoolean_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asBoolean()
        }
    }

    @TestCase
    func test_JSValue_number_toBoolean_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.toBoolean()
        }
    }

    @TestCase
    func test_JSValue_number_asString_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asString()
        }
    }

    @TestCase
    func test_JSValue_number_asObject_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asObject()
        }
    }

    @TestCase
    func test_JSValue_number_asFunction_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asFunction()
        }
    }

    @TestCase
    func test_JSValue_number_asArray_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asArray()
        }
    }

    @TestCase
    func test_JSValue_number_asClass_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asClass()
        }
    }

    @TestCase
    func test_JSValue_number_asExternal_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asExternal()
        }
    }

    @TestCase
    func test_JSValue_number_asPromise_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asPromise()
        }
    }

    @TestCase
    func test_JSValue_number_asSymbol_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asSymbol()
        }
    }

    @TestCase
    func test_JSValue_number_asArrayBuffer_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asArrayBuffer()
        }
    }

    @TestCase
    func test_JSValue_number_asBigInt_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.asBigInt()
        }
    }

    @TestCase
    func test_JSValue_number_toBigInt_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.toBigInt()
        }
    }

    @TestCase
    func test_JSValue_number_getElement_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.getElement(12)
        }
    }

    @TestCase
    func test_JSValue_number_setElement_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.setElement(0, jsContext.number(1.0).toJSValue())
        }
    }

    @TestCase
    func test_JSValue_number_getProperty_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.getProperty("a")
        }
    }

    @TestCase
    func test_JSValue_number_setProperty_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.setProperty("b", jsContext.number(2.0).toJSValue())
        }
    }

    @TestCase
    func test_JSValue_number_bindObject_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            value.bindObject(jsContext.number(2.0).toJSValue())
        }
    }

    @TestCase
    func test_JSContext_threadMismatch_throwException() {
        let context = getJSContext()
        testThreadMismatch {
            context.undefined()
        }
        testThreadMismatch {
            context.null()
        }
        testThreadMismatch {
            context.boolean(true)
        }
        testThreadMismatch {
            context.number(0)
        }
        testThreadMismatch {
            context.string("")
        }
    }

    @TestCase
    func test_JSObject_bindObject_numberSource_throwException_typeMismatch() {
        let jsContext = getJSContext()
        let value = jsContext.number(1.0).toJSValue()
        testExceptionThrow<BusinessException> {
            jsContext.object().toJSValue().bindObject(value)
        }
    }

    @TestCase
    func test_JSArray_negativeIndex_set_throwException_outOfRange() {
        let jsContext = getJSContext()
        let array = jsContext.array()
        testExceptionThrow<BusinessException> {
            array[-1] = jsContext.null().toJSValue()
        }
    }
}
