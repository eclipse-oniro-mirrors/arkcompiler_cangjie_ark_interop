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

 // The Cangjie API is in Beta. For Details on its capabilities and limitations, please refer to the README file.
 
package ohos.ark_interop

internal import ohos.labels.APILevel

@FastNative
foreign func ARKTS_CreateArrayBuffer(env: JSEnv, len: Int32): JSValue_

@FastNative
foreign func ARKTS_CreateArrayBufferWithData(env: JSEnv, buffer: CPointer<Byte>, len: Int32, finalizerHint: Int64): JSValue_

@FastNative
foreign func ARKTS_GetArrayBufferLength(env: JSEnv, buffer: JSValue_): Int32

@FastNative
foreign func ARKTS_IsArrayBuffer(env: JSEnv, value: JSValue_): Bool

@FastNative
foreign func ARKTS_GetArrayBufferRawPtr(env: JSEnv, value: JSValue_): CPointer<Unit>

@FastNative
foreign func memcpy_s(dst: CPointer<Unit>, dstSize: UIntNative, src: CPointer<Unit>, srcSize: UIntNative): Unit

@FastNative
foreign func ARKTS_ArrayBufferReadBytes(env: JSEnv, value: JSValue_, dest: CPointer<Byte>, count: Int32): Int32

/**
 * Alias for function which is `(CPointer<Byte>) -> Unit`.
 */
public type JSBufferFinalizer = (CPointer<Byte>) -> Unit

@C
func JSBufferFinalizerStub(buffer: CPointer<Byte>, hint: Int64): Unit {
    if (let Some(callback) <- JSArrayBuffer.bufferFinalizers_.remove(hint)) {
        callback(buffer)
    }
}

/**
 * ArrayBuffer relative operation class, interop ArrayBuffer, DataView and TypedArrays	
 */
@!APILevel[22, stagemodelonly: true]
public class JSArrayBuffer <: JSHeapObject {
    static var bufferFinalizers_ = SlabMT<JSBufferFinalizer>()

    private var byteLength_: ?Int32
    private var buffer_: ?Array<Byte> = None

    init(context: JSContext, value: JSValue_) {
        super(context, value)
        byteLength_ = None
    }

    init(context: JSContext, length: Int32) {
        super(context, unsafe { ARKTS_CreateArrayBuffer(context.env, length) })
        context.checkJSException() // in case of ArkTS OOM
        byteLength_ = length
    }

    init(context: JSContext, buffer: Array<Byte>) {
        super(context, createArrayBuffer(context, buffer))
        byteLength_ = Int32(buffer.size)
        buffer_ = buffer
    }

    init(context: JSContext, buffer: Array<Int8>) {
        super(context, createArrayBuffer(context, buffer))
        byteLength_ = Int32(buffer.size)
        buffer_ = None
    }

    init(context: JSContext, buffer: Array<Int16>) {
        super(context, createArrayBuffer(context, buffer))
        byteLength_ = Int32(buffer.size) * 2
        buffer_ = None
    }

    init(context: JSContext, buffer: Array<UInt16>) {
        super(context, createArrayBuffer(context, buffer))
        byteLength_ = Int32(buffer.size) * 2
        buffer_ = None
    }

    init(context: JSContext, buffer: Array<UInt32>) {
        super(context, createArrayBuffer(context, buffer))
        byteLength_ = Int32(buffer.size) * 4
        buffer_ = None
    }

    init(context: JSContext, buffer: Array<Int32>) {
        super(context, createArrayBuffer(context, buffer))
        byteLength_ = Int32(buffer.size) * 4
        buffer_ = None
    }

    init(context: JSContext, buffer: Array<Float32>) {
        super(context, createArrayBuffer(context, buffer))
        byteLength_ = Int32(buffer.size) * 4
        buffer_ = None
    }

    init(context: JSContext, buffer: Array<Int64>) {
        super(context, createArrayBuffer(context, buffer))
        byteLength_ = Int32(buffer.size) * 8
        buffer_ = None
    }

    init(context: JSContext, buffer: Array<UInt64>) {
        super(context, createArrayBuffer(context, buffer))
        byteLength_ = Int32(buffer.size) * 8
        buffer_ = None
    }

    init(context: JSContext, buffer: Array<Float64>) {
        super(context, createArrayBuffer(context, buffer))
        byteLength_ = Int32(buffer.size) * 8
        buffer_ = None
    }

    init(context: JSContext, buffer: CPointer<Byte>, length: Int32, finalizer: JSBufferFinalizer) {
        super(context, createArrayBuffer(context, buffer, length, finalizer))
        byteLength_ = length
    }

    ~init() {
        unsafe { ARKTS_DisposeGlobal(context.env_, globalValue_) }
    }

    /**
     * Binding memory's size in byte.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public prop byteLength: Int32 {
        get() {
            let env = context.env // do lifecycle check and thread check here.
            if (let Some(length) <- byteLength_) {
                length
            } else {
                let length = unsafe { ARKTS_GetArrayBufferLength(env, innerValue) }
                byteLength_ = length
                length
            }
        }
    }

    /**
     * Read binding memory in bytes.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func readBytes(): Array<Byte> {
        let env = context.env // do lifecycle check and thread check here.
        if (let Some(bytes) <- buffer_) {
            bytes
        } else {
            let size = Int64(byteLength)
            let bytes = Array<Byte>(size, repeat: 0)
            unsafe {
                let rawHandle = acquireArrayRawData(bytes)
                ARKTS_ArrayBufferReadBytes(env, innerValue, rawHandle.pointer, byteLength)
                releaseArrayRawData(rawHandle)
            }
            buffer_ = bytes
            bytes
        }
    }

    /**
     * Read binding memory to Array<bytes>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toUInt8Array(): Array<UInt8> {
        let env = context.env // do lifecycle check and thread check here.
        let size = Int64(byteLength)
        let bytes = Array<Byte>(size, repeat: 0)
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, rawHandle.pointer, byteLength)
            releaseArrayRawData(rawHandle)
        }
        bytes
    }

    /**
     * Read binding memory to Array<Int8>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toInt8Array(): Array<Int8> {
        let env = context.env // do lifecycle check and thread check here.
        let size = Int64(byteLength)
        let bytes = Array<Int8>(size, repeat: 0)
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, CPointer<UInt8>(rawHandle.pointer), byteLength)
            releaseArrayRawData(rawHandle)
        }
        bytes
    }

    /**
     * Read binding memory to Array<UInt16>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toUInt16Array(): Array<UInt16> {
        let env = context.env // do lifecycle check and thread check here.
        if ((byteLength % 2) != 0) {
            throw sizeError(2, "UInt16")
        }
        let size = Int64(byteLength) >> 1
        let bytes = Array<UInt16>(size, repeat: 0)
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, CPointer<UInt8>(rawHandle.pointer), byteLength)
            releaseArrayRawData(rawHandle)
        }
        bytes
    }

    /**
     * Read binding memory to Array<Int16>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toInt16Array(): Array<Int16> {
        let env = context.env // do lifecycle check and thread check here.
        if ((byteLength % 2) != 0) {
            throw sizeError(2, "Int16")
        }
        let size = Int64(byteLength) >> 1
        let bytes = Array<Int16>(size, repeat: 0)
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, CPointer<UInt8>(rawHandle.pointer), byteLength)
            releaseArrayRawData(rawHandle)
        }
        bytes
    }

    /**
     * Read binding memory to Array<Int32>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toInt32Array(): Array<Int32> {
        let env = context.env // do lifecycle check and thread check here.
        if ((byteLength % 4) != 0) {
            throw sizeError(4, "Int32")
        }
        let size = Int64(byteLength) >> 2
        let bytes = Array<Int32>(size, repeat: 0)
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, CPointer<UInt8>(rawHandle.pointer), byteLength)
            releaseArrayRawData(rawHandle)
        }
        bytes
    }

    /**
     * Read binding memory to Array<UInt32>.
     * 
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toUInt32Array(): Array<UInt32> {
        let env = context.env // do lifecycle check and thread check here.
        if ((byteLength % 4) != 0) {
            throw sizeError(4, "UInt32")
        }
        let size = Int64(byteLength) >> 2
        let bytes = Array<UInt32>(size, repeat: 0)
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, CPointer<UInt8>(rawHandle.pointer), byteLength)
            releaseArrayRawData(rawHandle)
        }
        bytes
    }

    /**
     * Read binding memory to Array<Float32>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toFloat32Array(): Array<Float32> {
        let env = context.env // do lifecycle check and thread check here.
        if ((byteLength % 4) != 0) {
            throw sizeError(4, "Float32")
        }
        let size = Int64(byteLength) >> 2
        let bytes = Array<Float32>(size, repeat: 0.0)
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, CPointer<UInt8>(rawHandle.pointer), byteLength)
            releaseArrayRawData(rawHandle)
        }
        bytes
    }

    /**
     * Read binding memory to Array<UInt64>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toUInt64Array(): Array<UInt64> {
        let env = context.env // do lifecycle check and thread check here.
        if ((byteLength % 8) != 0) {
            throw sizeError(8, "UInt64")
        }
        let size = Int64(byteLength) >> 3
        let bytes = Array<UInt64>(size, repeat: 0)
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, CPointer<UInt8>(rawHandle.pointer), byteLength)
            releaseArrayRawData(rawHandle)
        }
        bytes
    }

    /**
     * Read binding memory to Array<Int64>.
     * 
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toInt64Array(): Array<Int64> {
        let env = context.env // do lifecycle check and thread check here.
        if ((byteLength % 8) != 0) {
            throw sizeError(8, "Int64")
        }
        let size = Int64(byteLength) >> 3
        let bytes = Array<Int64>(size, repeat: 0)
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, CPointer<UInt8>(rawHandle.pointer), byteLength)
            releaseArrayRawData(rawHandle)
        }
        bytes
    }

    /**
     * Read binding memory to Array<Float64>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toFloat64Array(): Array<Float64> {
        let env = context.env // do lifecycle check and thread check here.
        if ((byteLength % 8) != 0) {
            throw sizeError(8, "Float64")
        }
        let size = Int64(byteLength) >> 3
        let bytes = Array<Float64>(size, repeat: 0.0)
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, CPointer<UInt8>(rawHandle.pointer), byteLength)
            releaseArrayRawData(rawHandle)
        }
        bytes
    }

    /**
     * Return the JSValue of arrayBuffer in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toArrayBufferJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let arrayBufferCls = context.constants.typedArray.arrayBuffer.data
        if (JSObject.instanceOfByValue(env, innerValue, arrayBufferCls.innerValue)) {
            return JSValue(context, innerValue)
        }
        let object = JSValue(context, innerValue).asObject()
        let buffer = object["buffer"].asObject()
        let offset = object["byteOffset"]
        let length = object["byteLength"]
        return buffer.callMethod("slice", [offset, context.number(offset.toNumber() + length.toNumber()).toJSValue()])
    }

    private func toArrayJSValue(): Array<JSValue> {
        let arrayBufferCls = context.constants.typedArray.arrayBuffer.data
        let currentValue = JSValue(context, innerValue)
        if (JSObject.instanceOfByValue(context.env, innerValue, arrayBufferCls.innerValue)) {
            return [currentValue]
        }
        let object = currentValue.asObject()
        return [object["buffer"], object["byteOffset"], object["byteLength"]]
    }

    /**
     * Return the JSValue of uint8Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toUInt8ArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.uint8Array.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of uint8ClampedArray in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toUInt8ClampedArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.uint8Clamped.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of int8Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toInt8ArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.int8Array.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of uint16Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toUInt16ArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.uint16Array.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of int16Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toInt16ArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.int16Array.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of uint32Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toUInt32ArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.uint32Array.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of int32Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toInt32ArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.int32Array.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of uint64Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toUInt64ArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.uint64Array.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of int64Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toInt64ArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.int64Array.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of float32Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toFloat32ArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.float32Array.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of float64Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toFloat64ArrayJSValue(): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let clazz = context.constants.typedArray.float64Array.data
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    static func createArrayBuffer(context: JSContext, buffer: Array<UInt64>): JSValue_ {
        let length = Int32(buffer.size) * 8
        unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, length)
            context.checkJSException() // in case of ArkTS OOM
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let rawHandle = acquireArrayRawData(buffer)
            memcpy_s(dst, UIntNative(length), CPointer<Unit>(rawHandle.pointer), UIntNative(length))
            releaseArrayRawData(rawHandle)
            result
        }
    }

    static func createArrayBuffer(context: JSContext, buffer: Array<Int64>): JSValue_ {
        let length = Int32(buffer.size) * 8
        unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, length)
            context.checkJSException() // in case of ArkTS OOM
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let rawHandle = acquireArrayRawData(buffer)
            memcpy_s(dst, UIntNative(length), CPointer<Unit>(rawHandle.pointer), UIntNative(length))
            releaseArrayRawData(rawHandle)
            result
        }
    }

    static func createArrayBuffer(context: JSContext, buffer: Array<Float64>): JSValue_ {
        let length = Int32(buffer.size) * 8
        unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, length)
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let rawHandle = acquireArrayRawData(buffer)
            memcpy_s(dst, UIntNative(length), CPointer<Unit>(rawHandle.pointer), UIntNative(length))
            releaseArrayRawData(rawHandle)
            context.checkJSException() // in case of ArkTS OOM
            result
        }
    }

    static func createArrayBuffer(context: JSContext, buffer: Array<Float32>): JSValue_ {
        let length = Int32(buffer.size) * 4
        unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, length)
            context.checkJSException() // in case of ArkTS OOM
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let rawHandle = acquireArrayRawData(buffer)
            memcpy_s(dst, UIntNative(length), CPointer<Unit>(rawHandle.pointer), UIntNative(length))
            releaseArrayRawData(rawHandle)
            result
        }
    }

    static func createArrayBuffer(context: JSContext, buffer: Array<Int32>): JSValue_ {
        let length = Int32(buffer.size) * 4
        unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, length)
            context.checkJSException() // in case of ArkTS OOM
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let rawHandle = acquireArrayRawData(buffer)
            memcpy_s(dst, UIntNative(length), CPointer<Unit>(rawHandle.pointer), UIntNative(length))
            releaseArrayRawData(rawHandle)
            result
        }
    }

    static func createArrayBuffer(context: JSContext, buffer: Array<UInt32>): JSValue_ {
        let length = Int32(buffer.size) * 4
        unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, length)
            context.checkJSException() // in case of ArkTS OOM
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let rawHandle = acquireArrayRawData(buffer)
            memcpy_s(dst, UIntNative(length), CPointer<Unit>(rawHandle.pointer), UIntNative(length))
            releaseArrayRawData(rawHandle)
            result
        }
    }

    static func createArrayBuffer(context: JSContext, buffer: Array<Int16>): JSValue_ {
        let length = Int32(buffer.size) * 2
        unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, length)
            context.checkJSException() // in case of ArkTS OOM
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let rawHandle = acquireArrayRawData(buffer)
            memcpy_s(dst, UIntNative(length), CPointer<Unit>(rawHandle.pointer), UIntNative(length))
            releaseArrayRawData(rawHandle)
            result
        }
    }

    static func createArrayBuffer(context: JSContext, buffer: Array<UInt16>): JSValue_ {
        let length = Int32(buffer.size) * 2
        unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, length)
            context.checkJSException() // in case of ArkTS OOM
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let rawHandle = acquireArrayRawData(buffer)
            memcpy_s(dst, UIntNative(length), CPointer<Unit>(rawHandle.pointer), UIntNative(length))
            releaseArrayRawData(rawHandle)
            result
        }
    }

    static func createArrayBuffer(context: JSContext, buffer: Array<Int8>): JSValue_ {
        let length = Int32(buffer.size)
        unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, length)
            context.checkJSException() // in case of ArkTS OOM
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let rawHandle = acquireArrayRawData(buffer)
            memcpy_s(dst, UIntNative(length), CPointer<Unit>(rawHandle.pointer), UIntNative(length))
            releaseArrayRawData(rawHandle)
            result
        }
    }

    static func createArrayBuffer(context: JSContext, buffer: Array<Byte>): JSValue_ {
        let length = Int32(buffer.size)
        unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, length)
            context.checkJSException() // in case of ArkTS OOM
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let rawHandle = acquireArrayRawData(buffer)
            memcpy_s(dst, UIntNative(length), CPointer<Unit>(rawHandle.pointer), UIntNative(length))
            releaseArrayRawData(rawHandle)
            result
        }
    }

    static func createArrayBuffer(context: JSContext, buffer: CPointer<Byte>, length: Int32,
        finalizer: JSBufferFinalizer): JSValue_ {
        let finalizerId = bufferFinalizers_.append(finalizer)

        let result = unsafe {
            ARKTS_CreateArrayBufferWithData(context.env, buffer, length, finalizerId)
        }
        context.checkJSException() // in case of ArkTS OOM
        result
    }
}
