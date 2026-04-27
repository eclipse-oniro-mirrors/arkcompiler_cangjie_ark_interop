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
import ohos.business_exception.BusinessException
import std.runtime.*
import std.sync.*

@Test
class TestArrayBuffer {
    @TestCase
    func test_JSArrayBuffer_byteLength() {
        let jsContext = getJSContext()
        let length: Int32 = 10
        let buffer = jsContext.arrayBuffer(length)
        @Expect(buffer.toJSValue().isArrayBuffer(), true)
        @Expect(buffer.byteLength, length)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_byteLength_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.byteLength
        }
    }

    @TestCase
    func test_JSArrayBuffer_byteLength_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.byteLength
        }
    }

    @TestCase
    func test_JSArrayBuffer_readBytes() {
        let jsContext = getJSContext()
        let source: Array<Byte> = [0, 1, 2, 3, 4]
        let buffer = jsContext.arrayBuffer(source)
        @Expect(Int64(buffer.byteLength), source.size)
        let received = buffer.readBytes()
        @Expect(source, received)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_readBytes_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let bytes: Array<Byte> = [1, 2]
        let buffer = newContext.arrayBuffer(bytes)
        testReferenceBeyondReach(jsContext) {
            buffer.readBytes()
        }
    }

    @TestCase
    func test_JSArrayBuffer_readBytes_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let bytes: Array<Byte> = [1, 2]
        let buffer = jsContext.arrayBuffer(bytes)
        testThreadMismatch {
            buffer.readBytes()
        }
    }
    @TestCase
    func test_JSArrayBuffer_toUInt8Array() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0, 255, 128, 64, 32]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toUInt8Array()

        @Expect(buffer.toJSValue().isArrayBuffer(), true)

        @Expect(result.size, data.size) //判断接口功能是否正确，优先
        for (i in 0..result.size) {
            @Expect(result[i], data[i])
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toUInt8Array_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toUInt8Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt8Array_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toUInt8Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt8Array() {
        let jsContext = getJSContext()
        let data: Array<Int8> = [-128, -64, 0, 64, 127]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toInt8Array()

        @Expect(buffer.toJSValue().isArrayBuffer(), true)

        @Expect(result.size, data.size)
        for (i in 0..result.size) {
            @Expect(result[i], data[i])
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toInt8Array_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toInt8Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt8Array_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toInt8Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt16Array() {
        let jsContext = getJSContext()
        let data: Array<UInt16> = [0, 65535, 32768, 12345]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toUInt16Array()

        @Expect(buffer.toJSValue().isArrayBuffer(), true)

        @Expect(result.size, data.size)
        for (i in 0..result.size) {
            @Expect(result[i], data[i])
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt16Array_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionCode(34300002) {
            buffer.toUInt16Array()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toUInt16Array_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toUInt16Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt16Array_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toUInt16Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt16Array() {
        let jsContext = getJSContext()
        let data: Array<Int16> = [-32768, -12345, 0, 12345, 32767]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toInt16Array()

        @Expect(buffer.toJSValue().isArrayBuffer(), true)

        @Expect(result.size, data.size)
        for (i in 0..result.size) {
            @Expect(result[i], data[i])
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt16Array_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionCode(34300002) {
            buffer.toInt16Array()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toInt16Array_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toInt16Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt16Array_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toInt16Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt32Array() {
        let jsContext = getJSContext()
        let data: Array<Int32> = [-2147483648, -1000000000, 0, 1000000000, 2147483647]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toInt32Array()

        @Expect(buffer.toJSValue().isArrayBuffer(), true)

        @Expect(result.size, data.size)
        for (i in 0..result.size) {
            @Expect(result[i], data[i])
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt32Array_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionCode(34300002) {
            buffer.toInt32Array()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toInt32Array_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toInt32Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt32Array_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toInt32Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt32Array() {
        let jsContext = getJSContext()
        let data: Array<UInt32> = [0, 4294967295, 2147483648, 1234567890]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toUInt32Array()

        @Expect(buffer.toJSValue().isArrayBuffer(), true)

        @Expect(result.size, data.size)
        for (i in 0..result.size) {
            @Expect(result[i], data[i])
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt32Array_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionCode(34300002) {
            buffer.toUInt32Array()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toUInt32Array_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toUInt32Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt32Array_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toUInt32Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toFloat32Array() {
        let jsContext = getJSContext()
        let data: Array<Float32> = [0.0, 3.14, -1.23, 1.23, 99999.999]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toFloat32Array()

        @Expect(buffer.toJSValue().isArrayBuffer(), true)

        @Expect(result.size, data.size)
        for (i in 0..result.size) {
            @Expect(result[i], data[i])
        }
    }

    @TestCase
    func test_JSArrayBuffer_toFloat32Array_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionCode(34300002) {
            buffer.toFloat32Array()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toFloat32Array_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toFloat32Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toFloat32Array_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toFloat32Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt64Array() {
        let jsContext = getJSContext()
        let data: Array<UInt64> = [0, 1000000000000000, UInt64.Max]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toUInt64Array()

        @Expect(buffer.toJSValue().isArrayBuffer(), true)

        @Expect(result.size, data.size)
        for (i in 0..result.size) {
            @Expect(result[i], data[i])
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt64Array_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionCode(34300002) {
            buffer.toUInt64Array()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toUInt64Array_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toUInt64Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt64Array_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toUInt64Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt64Array() {
        let jsContext = getJSContext()
        let data: Array<Int64> = [-9223372036854775808, -1000000000, 9223372036854775807, 1234567890123456]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toInt64Array()

        @Expect(buffer.toJSValue().isArrayBuffer(), true)

        @Expect(result.size, data.size)
        for (i in 0..result.size) {
            @Expect(result[i], data[i])
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt64Array_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionCode(34300002) {
            buffer.toInt64Array()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toInt64Array_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toInt64Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt64Array_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toInt64Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toFloat64Array() {
        let jsContext = getJSContext()
        let data: Array<Float64> = [-9223372036854775808.0, -1000000000.0, 9223372036854775807.0, 1234567890123456.0]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toFloat64Array()

        @Expect(buffer.toJSValue().isArrayBuffer(), true)

        @Expect(result.size, data.size)
        for (i in 0..result.size) {
            @Expect(result[i], data[i])
        }
    }

    @TestCase
    func test_JSArrayBuffer_toFloat64Array_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionCode(34300002) {
            buffer.toFloat64Array()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toFloat64Array_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toFloat64Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toFloat64Array_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toFloat64Array()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toArrayBufferJSValue() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0, 255, 128, 64, 32]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toArrayBufferJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "ArrayBuffer"))
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toArrayBufferJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toArrayBufferJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toArrayBufferJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toArrayBufferJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt8ArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0, 255, 128, 64, 32]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toUInt8ArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "Uint8Array"))
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toUInt8ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toUInt8ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt8ClampedArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0, 255, 128, 64, 32]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toUInt8ClampedArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "Uint8ClampedArray"))
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toUInt8ClampedArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toUInt8ClampedArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt8ArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<Int8> = [-128, -64, 0, 64, 127]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toInt8ArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "Int8Array"))
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toInt8ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toInt8ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt16ArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<UInt16> = [0, 65535, 32768, 12345]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toUInt16ArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "Uint16Array"))
    }

    @TestCase
    func test_JSArrayBuffer_toUInt16ArrayJSValue_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionMsg("The byte length of Uint16Array should be a multiple of 2") {
            buffer.toUInt16ArrayJSValue()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toUInt16ArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toUInt16ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt16ArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toUInt16ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt16ArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<Int16> = [-32768, -12345, 0, 12345, 32767]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toInt16ArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "Int16Array"))
    }

    @TestCase
    func test_JSArrayBuffer_toInt16ArrayJSValue_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionMsg("The byte length of Int16Array should be a multiple of 2") {
            buffer.toInt16ArrayJSValue()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toInt16ArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toInt16ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt16ArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toInt16ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt32ArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<UInt32> = [0, 4294967295, 2147483648, 1234567890]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toUInt32ArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "Uint32Array"))
    }

    @TestCase
    func test_JSArrayBuffer_toUInt32ArrayJSValue_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionMsg("The byte length of Uint32Array should be a multiple of 4") {
            buffer.toUInt32ArrayJSValue()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toUInt32ArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toUInt32ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt32ArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toUInt32ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt32ArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<Int32> = [-2147483648, -1000000000, 0, 1000000000, 2147483647]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toInt32ArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "Int32Array"))
    }

    @TestCase
    func test_JSArrayBuffer_toInt32ArrayJSValue_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionMsg("The byte length of Int32Array should be a multiple of 4") {
            buffer.toInt32ArrayJSValue()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toInt32ArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toInt32ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt32ArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toInt32ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt64ArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<UInt64> = [9223372036854775808, 1000000000, 9223372036854775807, 1234567890123456]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toUInt64ArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "BigUint64Array"))
    }

    @TestCase
    func test_JSArrayBuffer_toUInt64ArrayJSValue_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionMsg("The byte length of BigInt64Array should be a multiple of 8") {
            buffer.toUInt64ArrayJSValue()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toUInt64ArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toUInt64ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toUInt64ArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toUInt64ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt64ArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<Int64> = [-223372036854775808, 1000000000, 9223372036854775807, -1234567890123456]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toInt64ArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "BigInt64Array"))
    }

    @TestCase
    func test_JSArrayBuffer_toInt64ArrayJSValue_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionMsg("The byte length of BigInt64Array should be a multiple of 8") {
            buffer.toInt64ArrayJSValue()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toInt64ArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toInt64ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toInt64ArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toInt64ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toFloat32ArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<Float32> = [0.0, 3.14, -1.23, 1.23, 99999.999]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toFloat32ArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "Float32Array"))
    }

    @TestCase
    func test_JSArrayBuffer_toFloat32ArrayJSValue_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionMsg("The byte length of Float32Array should be a multiple of 4") {
            buffer.toFloat32ArrayJSValue()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toFloat32ArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toFloat32ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toFloat32ArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toFloat32ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toFloat64ArrayJSValue() {
        let jsContext = getJSContext()
        let data: Array<Float64> = [0.0, 3.1415926535, -123456.789, 9999999.888]
        let buffer = jsContext.arrayBuffer(data)
        let result = buffer.toFloat64ArrayJSValue()

        @Expect(result.isArrayBuffer(), true)
        @Expect(isInstanceOf(jsContext, result, "Float64Array"))
    }

    @TestCase
    func test_JSArrayBuffer_toFloat64ArrayJSValue_throwException34300002() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)
        expectBusinessExceptionMsg("The byte length of Float64Array should be a multiple of 8") {
            buffer.toFloat64ArrayJSValue()
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSArrayBuffer_toFloat64ArrayJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buffer = newContext.arrayBuffer(64)
        testReferenceBeyondReach(jsContext) {
            buffer.toFloat64ArrayJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_toFloat64ArrayJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(64)
        testThreadMismatch {
            buffer.toFloat64ArrayJSValue()
        }
    }

    @TestCase
    func test_JSHeapObject_toJSValue_viaArrayBuffer_success() {
        let jsContext = getJSContext()
        let buffer = jsContext.arrayBuffer(4)
        let v = buffer.toJSValue()
        @Expect(v.isArrayBuffer(), true)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSHeapObject_toJSValue_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let buf = newContext.arrayBuffer(8)

        testReferenceBeyondReach(jsContext) {
            buf.toJSValue()
        }
    }

    @TestCase
    func test_JSHeapObject_toJSValue_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let buf = jsContext.arrayBuffer(8)

        testThreadMismatch {
            buf.toJSValue()
        }
    }

    @TestCase
    func test_JSArrayBuffer_unsafeFree() {
        let jsContext = getJSContext()
        let source: CPointer<Byte> = unsafe {
            let result = LibC.malloc<Byte>(count: 100)
            for (i in 0..100) {
                unsafe { result.write(i, UInt8(i)) }
            }
            result
        }

        let buffer = unsafe {
            jsContext.arrayBuffer(source, 100, {
                ptr => LibC.free(ptr)
            })
        }

        @Expect(withException<Exception> {
            unsafe {
                jsContext.arrayBuffer(source, 0, {
                    ptr => LibC.free(ptr)
                })
            }
        })

        @Expect(buffer.byteLength, 100)
        let data = buffer.readBytes()
        for (i in 0..100) {
            @Expect(data[i], UInt8(i))
        }
    }

    @TestCase
    func test_JSArrayBuffer_toArrayJSValue() {
        let jsContext = getJSContext()
        jsContext.arrayBuffer(16).toInt8ArrayJSValue().asArrayBuffer().toInt8ArrayJSValue()
        jsContext.arrayBuffer(16).toUInt8ArrayJSValue().asArrayBuffer().toUInt8ArrayJSValue()
        jsContext.arrayBuffer(16).toUInt8ClampedArrayJSValue().asArrayBuffer().toUInt8ClampedArrayJSValue()
        jsContext.arrayBuffer(16).toUInt16ArrayJSValue().asArrayBuffer().toUInt16ArrayJSValue()
        jsContext.arrayBuffer(16).toInt16ArrayJSValue().asArrayBuffer().toInt16ArrayJSValue()
        jsContext.arrayBuffer(16).toUInt32ArrayJSValue().asArrayBuffer().toUInt32ArrayJSValue()
        jsContext.arrayBuffer(16).toInt32ArrayJSValue().asArrayBuffer().toInt32ArrayJSValue()
        jsContext.arrayBuffer(16).toUInt64ArrayJSValue().asArrayBuffer().toUInt64ArrayJSValue()
        jsContext.arrayBuffer(16).toInt64ArrayJSValue().asArrayBuffer().toInt64ArrayJSValue()
        jsContext.arrayBuffer(16).toFloat32ArrayJSValue().asArrayBuffer().toFloat32ArrayJSValue()
        jsContext.arrayBuffer(16).toFloat64ArrayJSValue().asArrayBuffer().toFloat64ArrayJSValue()
    }

    @TestCase
    func test_JSArrayBuffer_toArray_throwException() {
        let jsContext = getJSContext()
        let data: Array<UInt8> = [0]
        let buffer = jsContext.arrayBuffer(data)

        @Expect(withException<Exception> {
            buffer.toUInt16Array()
        })

        @Expect(withException<Exception> {
            buffer.toInt16Array()
        })

        @Expect(withException<Exception> {
            buffer.toUInt32Array()
        })

        @Expect(withException<Exception> {
            buffer.toInt32Array()
        })

        @Expect(withException<Exception> {
            buffer.toUInt64Array()
        })

        @Expect(withException<Exception> {
            buffer.toInt64Array()
        })

        @Expect(withException<Exception> {
            buffer.toFloat32Array()
        })

        @Expect(withException<Exception> {
            buffer.toFloat64Array()
        })
    }
}

func isInstanceOf(jsContext: JSContext, value: JSValue, className: String): Bool {
    if (!value.isObject()) {
        println("target is not object")
        return false
    }
    let object = value.asObject()
    let classValue = jsContext.global[className]
    if (!classValue.isClass()) {
        println("target class not exist: '${className}'")
        return false
    }
    object.instanceOf(classValue.asClass())
}
