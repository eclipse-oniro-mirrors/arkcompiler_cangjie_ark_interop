/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
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

package entry

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSObject}
import ohos.business_exception.*
import std.runtime.gc

let _ = JSModule.registerModule {
    jsContext: JSContext, jsObject: JSObject =>
        jsObject["test_JSArrayBuffer_toArrayBufferJSValue_throwException34300002"] = jsContext
            .function(test_JSArrayBuffer_toArrayBufferJSValue_throwException34300002)
            .toJSValue()
        jsObject["test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300002"] = jsContext
            .function(test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300002)
            .toJSValue()
        jsObject["test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300002"] = jsContext
            .function(test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300002)
            .toJSValue()
        jsObject["test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300002"] = jsContext
            .function(test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300002)
            .toJSValue()
        jsObject["test_JSArrayBuffer_WithException"] = jsContext.function(test_JSArrayBuffer_WithException).toJSValue()
}

func test_JSArrayBuffer_toArrayBufferJSValue_throwException34300002(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let msg = try {
        let buffer = jsCallInfo[0].asArrayBuffer()
        buffer.toArrayBufferJSValue()
        "NO_EXCEPTION"
    } catch (e: BusinessException) {
        e.message.toString()
    }
    jsContext.string(msg).toJSValue()
}

func test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300002(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let msg = try {
        let buffer = jsCallInfo[0].asArrayBuffer()
        buffer.toUInt8ArrayJSValue()
        "NO_EXCEPTION"
    } catch (e: BusinessException) {
        e.message.toString()
    }
    jsContext.string(msg).toJSValue()
}

func test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300002(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let msg = try {
        let buffer = jsCallInfo[0].asArrayBuffer()
        buffer.toUInt8ClampedArrayJSValue()
        "NO_EXCEPTION"
    } catch (e: BusinessException) {
        e.message.toString()
    }
    jsContext.string(msg).toJSValue()
}

func test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300002(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let msg = try {
        let buffer = jsCallInfo[0].asArrayBuffer()
        buffer.toInt8ArrayJSValue()
        "NO_EXCEPTION"
    } catch (e: BusinessException) {
        e.message.toString()
    }
    jsContext.string(msg).toJSValue()
}

func expectException<T>(callback: ()->Unit): Unit where T <: Exception {
    try {
        callback()
        Assert.isUnreachable()
    } catch (e: T) {
        // do nothing
    } catch (_: OutOfMemoryError) {
        // ignore
    } finally {
        gc()
        sleep(Duration.millisecond * 10)
    }
}

func expectBusinessError(code: Int32, callback: ()->Unit): Unit {
    try {
        callback()
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(code, e.code)
    }
}

func expectRangeError(callback: ()->Unit): Unit {
    try {
        callback()
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.isTrue(e.toString().startsWith("Error name:RangeError"))
    }
}

func test_JSArrayBuffer_WithException(context: JSContext, _: JSCallInfo): JSValue {
    expectException<OverflowException> {
        let arr = Array<Int8>(0x1_0000_0000, repeat: 0)
        context.arrayBuffer(arr)
    }
    expectException<OverflowException> {
        let arr = Array<Int16>(0x1_0000_0000, repeat: 0)
        context.arrayBuffer(arr)
    }
    expectException<OverflowException> {
        let arr = Array<Int32>(0x1_0000_0000, repeat: 0)
        context.arrayBuffer(arr)
    }
    expectException<OverflowException> {
        let arr = Array<Int64>(0x1_0000_0000, repeat: 0)
        context.arrayBuffer(arr)
    }
    expectException<OverflowException> {
        let arr = Array<UInt8>(0x1_0000_0000, repeat: 0)
        context.arrayBuffer(arr)
    }
    expectException<OverflowException> {
        let arr = Array<UInt16>(0x1_0000_0000, repeat: 0)
        context.arrayBuffer(arr)
    }
    expectException<OverflowException> {
        let arr = Array<UInt32>(0x1_0000_0000, repeat: 0)
        context.arrayBuffer(arr)
    }
    expectException<OverflowException> {
        let arr = Array<UInt64>(0x1_0000_0000, repeat: 0)
        context.arrayBuffer(arr)
    }
    expectException<OverflowException> {
        let arr = Array<Float32>(0x1_0000_0000, repeat: 0.0)
        context.arrayBuffer(arr)
    }
    expectException<OverflowException> {
        let arr = Array<Float64>(0x1_0000_0000, repeat: 0.0)
        context.arrayBuffer(arr)
    }
    let arr: Array<UInt8> = [1]
    let buffer = context.arrayBuffer(arr)
    expectBusinessError(34300002) {
        buffer.toInt16Array()
    }
    expectBusinessError(34300002) {
        buffer.toInt32Array()
    }
    expectBusinessError(34300002) {
        buffer.toInt64Array()
    }
    expectBusinessError(34300002) {
        buffer.toUInt16Array()
    }
    expectBusinessError(34300002) {
        buffer.toUInt32Array()
    }
    expectBusinessError(34300002) {
        buffer.toUInt64Array()
    }
    expectBusinessError(34300002) {
        buffer.toFloat32Array()
    }
    expectBusinessError(34300002) {
        buffer.toFloat64Array()
    }
    expectRangeError {
        buffer.toInt16ArrayJSValue()
    }
    expectRangeError {
        buffer.toInt32ArrayJSValue()
    }
    expectRangeError {
        buffer.toInt64ArrayJSValue()
    }
    expectRangeError {
        buffer.toUInt16ArrayJSValue()
    }
    expectRangeError {
        buffer.toUInt32ArrayJSValue()
    }
    expectRangeError {
        buffer.toUInt64ArrayJSValue()
    }
    expectRangeError {
        buffer.toFloat32ArrayJSValue()
    }
    expectRangeError {
        buffer.toFloat64ArrayJSValue()
    }
    context.undefined().toJSValue()
}