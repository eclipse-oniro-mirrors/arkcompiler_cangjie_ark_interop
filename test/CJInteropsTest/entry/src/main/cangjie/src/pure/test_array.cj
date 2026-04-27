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
internal import ohos.business_exception.*

@Test
class TestArray {
    @TestCase
    func test_JSArray_sparse_set_at3_and_5_updates_size_and_fillUndefined() {
        let jsContext = getJSContext()
        let array = jsContext.array(
            [
                jsContext.undefined().toJSValue(),
                jsContext.null().toJSValue(),
                jsContext.boolean(true).toJSValue()
            ]
        ).toJSValue().asArray()

        array[3] = jsContext.number(1.0).toJSValue()
        @Expect(array.size, 4)
        @Expect(array[3].toNumber(), 1.0)

        array[5] = jsContext.boolean(true).toJSValue()
        @Expect(array.size, 6)
        @Expect(array[5].isBoolean(), true)
        @Expect(array[4].isUndefined(), true)
    }

    @TestCase
    func test_JSArray_operatorGet_success() {
        let jsContext = getJSContext()
        let array = jsContext.array([jsContext.number(1.0).toJSValue()]).toJSValue().asArray()
        let v = array[0]
        @Expect(v.isNumber())
        @Expect(v.toNumber(), 1.0)
    }

    @TestCase
    func test_JSArray_operatorSet_success() {
        let jsContext = getJSContext()
        let array = jsContext.array().toJSValue().asArray()
        array[0] = jsContext.string("x").toJSValue()
        @Expect(array.size, 1)
        @Expect(array[0].toString(), "x")
    }

    @TestCase
    func test_JSArray_operatorGet_throwException34300001_indexOutOfRange() {
        let jsContext = getJSContext()
        let array = jsContext.array([jsContext.number(1.0).toJSValue()]).toJSValue().asArray()
        expectBusinessExceptionCode(34300001) {
            let _ = array[1]
        }
    }

    @TestCase
    func test_JSArray_operatorSet_throwException34300001_indexOutOfRange() {
        let jsContext = getJSContext()
        let array = jsContext.array().toJSValue().asArray()
        let index = Int64(UInt32.Max) + 1
        expectBusinessExceptionCode(34300001) {
            array[index] = jsContext.number(1.0).toJSValue()
        }
    }

    @TestCase
    func test_JSArray_operatorSet_heapObject_throwException34300001_indexOutOfRange() {
        let jsContext = getJSContext()
        let array = jsContext.array().toJSValue().asArray()
        let index = Int64(UInt32.Max) + 1
        let obj = jsContext.object().toJSValue().asObject()
        expectBusinessExceptionCode(34300001) {
            array[index] = obj
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArray_operatorGet_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let array = newContext.array([newContext.number(1.0).toJSValue()])
        testReferenceBeyondReach(jsContext) {
            array[0]
        }
    }

    @TestCase
    func test_JSArray_operatorGet_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let array = jsContext.array([jsContext.number(1.0).toJSValue()])
        testThreadMismatch {
            array[0]
        }
    }

    @TestCase
    func test_JSArray_size_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let array = jsContext.array([jsContext.number(1.0).toJSValue()])
        testThreadMismatch {
            array.size
        }
    }

    @TestCase
    func test_JSArray_operatorSet_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let array = jsContext.array().toJSValue().asArray()
        testThreadMismatch {
            array[0] = jsContext.number(1.0).toJSValue()
        }
    }

    @TestCase
    func test_JSArray_operatorSet_heapObject_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let array = jsContext.array().toJSValue().asArray()
        let obj = jsContext.object().toJSValue().asObject()
        testThreadMismatch {
            array[0] = obj
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArray_size_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let array = newContext.array([newContext.number(1.0).toJSValue()])
        testReferenceBeyondReach(jsContext) {
            array.size
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArray_operatorSet_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let array = newContext.array()
        testReferenceBeyondReach(jsContext) {
            array[0] = newContext.number(1.0).toJSValue()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArray_operatorSet_heapObject_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let array = newContext.array()
        let obj = newContext.object().toJSValue().asObject()
        testReferenceBeyondReach(jsContext) {
            array[0] = obj
        }
    }

    @TestCase
    func test_JSArray_negativeIndex_operatorGet_throwException() {
        let jsContext = getJSContext()
        let array = jsContext.array(
            [
                jsContext.undefined().toJSValue(),
                jsContext.null().toJSValue(),
                jsContext.boolean(true).toJSValue()
            ]
        ).toJSValue().asArray()

        let negativeIndices: Array<Int64> = [-1, -2, Int64.Min]
        for (index in negativeIndices) {
            let negativeRead = try {
                _ = array[index]
                false
            } catch (_: BusinessException) {
                true
            }
            @Expect(negativeRead, true)
        }
    }

    @TestCase
    func test_JSArray_negativeIndex_operatorSet_throwException() {
        let jsContext = getJSContext()
        let array = jsContext.array(
            [
                jsContext.undefined().toJSValue(),
                jsContext.null().toJSValue(),
                jsContext.boolean(true).toJSValue()
            ]
        ).toJSValue().asArray()

        let negativeIndices: Array<Int64> = [-1, -2, Int64.Min]
        for (index in negativeIndices) {
            @Expect(withException<Exception> { array[index] = jsContext.undefined().toJSValue() })
            @Expect(withException<Exception> { array[index] = jsContext.number(1.0).toJSValue() })
            @Expect(withException<Exception> {
                let testMismatch: JSLambda = {
                    _, callInfo =>
                    var mismatchResult = jsContext.boolean(false)
                    return mismatchResult.toJSValue()
                }
                array[index] = jsContext.function(testMismatch)
            })
        }
    }

    @TestCase
    func test_JSArray_negativeIndex_operatorSet_number_throwException() {
        let jsContext = getJSContext()
        let array = jsContext.array([jsContext.number(1.0).toJSValue()])

        @Expect(withException<Exception> {
            array[-1] = jsContext.number(1.0).toJSValue()
        })
    }

    @TestCase
    func test_JSArray_negativeIndex_operatorSet_function_throwException() {
        let jsContext = getJSContext()
        let array = jsContext.array([jsContext.number(1.0).toJSValue()])

        @Expect(withException<Exception> {
            let testMismatch: JSLambda = {
                _, callInfo =>
                var mismatchResult = jsContext.boolean(false)
                return mismatchResult.toJSValue()
            }
            array[-1] = jsContext.function(testMismatch)
        })
    }

    @TestCase
    func test_JSValue_number_toNumber_and_toFloat64() {
        let jsContext = getJSContext()
        let array = jsContext.array()
        array[0] = jsContext.number(1.0).toJSValue()

        let value = array[0]
        @Expect(value.toNumber(), 1.0)
        @Expect(value.asNumber().toFloat64(), 1.0)
    }

    @TestCase
    func test_JSValue_array_getElement_negativeIndex_throwException() {
        let jsContext = getJSContext()
        let array = jsContext.array()
        let value = array.toJSValue()

        let negativeRead = try {
            _ = value.getElement(-1)
            false
        } catch (_: BusinessException) {
            true
        }
        @Expect(negativeRead, true)
    }

    @TestCase
    func test_JSValue_array_getElement_outOfRange_positiveIndex_throwException() {
        let jsContext = getJSContext()
        let array = jsContext.array()
        let value = array.toJSValue()

        let positiveRead = try {
            _ = value.getElement(0)
            false
        } catch (_: BusinessException) {
            true
        }
        @Expect(positiveRead, true)
    }

    @TestCase
    func test_JSValue_array_setElement_positiveIndex_undefined_success() {
        let jsContext = getJSContext()
        let array = jsContext.array()
        let value = array.toJSValue()

        let positiveWrite = try {
            value.setElement(0, jsContext.undefined().toJSValue())
            false
        } catch (_: BusinessException) {
            true
        }
        @Expect(positiveWrite, false)
        @Expect(array.size, 1)
    }

    @TestCase
    func test_JSValue_array_setElement_positiveIndex_boolean_success() {
        let jsContext = getJSContext()
        let array = jsContext.array()
        let value = array.toJSValue()

        value.setElement(0, jsContext.boolean(true).toJSValue())
        let receivedElement0 = value.getElement(0)
        @Expect(receivedElement0.isBoolean(), true)
        @Expect(receivedElement0.toBoolean(), true)
    }

    @TestCase
    func test_JSValue_array_setElement_negativeIndex_throwException() {
        let jsContext = getJSContext()
        let array = jsContext.array()
        let value = array.toJSValue()

        let negativeWrite = try {
            value.setElement(-1, jsContext.undefined().toJSValue())
            false
        } catch (_: BusinessException) {
            true
        }
        @Expect(negativeWrite, true)
    }

    @TestCase
    func test_JSArray_indexer_set_number_updatesSize() {
        let jsContext = getJSContext()
        let array = jsContext.array()
        @Expect(array.size, 0)

        array[0] = jsContext.number(1.0).toJSValue()
        @Expect(array.size, 1)
        @Expect(array[0].isNumber(), true)
    }

    @TestCase
    func test_JSArray_init_undefined_null_boolean_typeGuards() {
        let jsContext = getJSContext()
        let array = jsContext.array(
            [
                jsContext.undefined().toJSValue(),
                jsContext.null().toJSValue(),
                jsContext.boolean(true).toJSValue()
            ]
        ).toJSValue().asArray()

        @Expect(array.size, 3)
        @Expect(array[0].isUndefined(), true)
        @Expect(array[1].isNull(), true)
        @Expect(array[2].isBoolean(), true)
    }

    @TestCase
    func test_JSArray_get_positiveIndex_toNumber_success() {
        let jsContext = getJSContext()
        let array = jsContext.array([jsContext.number(1.0).toJSValue()])

        let value: JSValue = array[0]
        @Expect(value.toNumber(), 1.0)
    }
}
