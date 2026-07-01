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
foreign func memcpy_s(dst: CPointer<Unit>, dstSize: UIntNative, src: CPointer<Unit>, srcSize: UIntNative): Int32

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
 * ArrayBuffer relative operation class, interop ArrayBuffer, DataView and TypedArrays.
 */
@!APILevel[
    since: "22"
]
public class JSArrayBuffer <: JSHeapObject {
    static var bufferFinalizers_ = SlabMT<JSBufferFinalizer>()

    private var byteLength_: ?Int32
    private var buffer_: ?Array<Byte> = None

    init(context: JSContext, value: JSValue_) {
        super(context, value, JSType.OBJECT)
        byteLength_ = None
    }

    init(context: JSContext, length: Int32) {
        super(context, unsafe { ARKTS_CreateArrayBuffer(context.env, length) }, JSType.OBJECT)
        context.checkJSException() // in case of ArkTS OOM
        byteLength_ = length
    }

    private init(context: JSContext, jsValue: JSValue_, byteLength: Int32, buffer: ?Array<Byte>) {
        super(context, jsValue, JSType.OBJECT)
        byteLength_ = byteLength
        buffer_ = buffer
    }

    init(context: JSContext, buffer: CPointer<Byte>, length: Int32, finalizer: JSBufferFinalizer) {
        super(context, createArrayBuffer(context, buffer, length, finalizer), JSType.OBJECT)
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
        since: "22",
        throwexception: true
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
     * Read binding memory to Array<Byte>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Byte> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func readBytes(): Array<Byte> {
        return toArray<Byte>("Byte", 0)
    }

    @Frozen
    @OverflowWrapping
    private func toArray<T>(tyName: String, shift: Int64): Array<T> where T <: CType {
        let env = context.env // do lifecycle check and thread check here.
        let byteLen = Int64(byteLength)
        let mask = 1 << shift
        if (byteLen % mask != 0) {
            throw sizeError(mask, tyName)
        }
        let size = byteLen >> shift
        let bytes = Array<T>(size, repeat: unsafe {zeroValue<T>()})
        unsafe {
            let rawHandle = acquireArrayRawData(bytes)
            ARKTS_ArrayBufferReadBytes(env, innerValue, CPointer<Byte>(rawHandle.pointer), byteLength)
            releaseArrayRawData(rawHandle)
        }
        return bytes
    }

    /**
     * Read binding memory to Array<UInt8>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<UInt8> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt8Array(): Array<UInt8> {
        return toArray<UInt8>("UInt8", 0)
    }

    /**
     * Read binding memory to Array<Int8>.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Int8> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt8Array(): Array<Int8> {
        return toArray<Int8>("Int8", 0)
    }

    /**
     * Read binding memory to Array<UInt16>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<UInt16> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt16Array(): Array<UInt16> {
        return toArray<UInt16>("UInt16", 1)
    }

    /**
     * Read binding memory to Array<Int16>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Int16> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt16Array(): Array<Int16> {
        return toArray<Int16>("Int16", 1)
    }

    /**
     * Read binding memory to Array<Int32>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Int32> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt32Array(): Array<Int32> {
        return toArray<Int32>("Int32", 2)
    }

    /**
     * Read binding memory to Array<UInt32>.
     * 
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<UInt32> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt32Array(): Array<UInt32> {
        return toArray<UInt32>("UInt32", 2)
    }

    /**
     * Read binding memory to Array<Float32>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Float32> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toFloat32Array(): Array<Float32> {
        return toArray<Float32>("Float32", 2)
    }

    /**
     * Read binding memory to Array<UInt64>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<UInt64> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt64Array(): Array<UInt64> {
        return toArray<UInt64>("UInt64", 3)
    }

    /**
     * Read binding memory to Array<Int64>.
     * 
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Int64> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt64Array(): Array<Int64> {
        return toArray<Int64>("Int64", 3)
    }

    /**
     * Read binding memory to Array<Float64>.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { Array<Float64> } Cangjie array.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toFloat64Array(): Array<Float64> {
        return toArray<Float64>("Float64", 3)
    }

    /**
     * Return the JSValue of arrayBuffer in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
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

    private func toTypedArrayJSValue(clazz: JSClass): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        if (JSObject.instanceOfByValue(env, innerValue, clazz.innerValue)) {
            return JSValue(context, innerValue)
        }
        clazz.new(toArrayJSValue())
    }

    /**
     * Return the JSValue of uint8Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt8ArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.uint8Array.data)
    }

    /**
     * Return the JSValue of uint8ClampedArray in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt8ClampedArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.uint8Clamped.data)
    }

    /**
     * Return the JSValue of int8Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt8ArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.int8Array.data)
    }

    /**
     * Return the JSValue of uint16Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt16ArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.uint16Array.data)
    }

    /**
     * Return the JSValue of int16Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt16ArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.int16Array.data)
    }

    /**
     * Return the JSValue of uint32Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt32ArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.uint32Array.data)
    }

    /**
     * Return the JSValue of int32Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt32ArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.int32Array.data)
    }

    /**
     * Return the JSValue of uint64Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toUInt64ArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.uint64Array.data)
    }

    /**
     * Return the JSValue of int64Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toInt64ArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.int64Array.data)
    }

    /**
     * Return the JSValue of float32Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toFloat32ArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.float32Array.data)
    }

    /**
     * Return the JSValue of float64Array in ArkTS.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toFloat64ArrayJSValue(): JSValue {
        toTypedArrayJSValue(context.constants.typedArray.float64Array.data)
    }

    /**
     * @throws { BusinessException } 34300002 - Bad C call memcpy_s.
     */
    @Frozen
    @OverflowWrapping
    static func createArrayBuffer<T>(context: JSContext, buffer: Array<T>, shift: Int64): JSArrayBuffer where T <: CType {
        let length = buffer.size << shift
        if (length > Int64(Int32.Max)) {
            throw byteLengthInvalid(length)
        }
        let byteLength = Int32(length)
        let copyLength = UIntNative(length)
        let value = unsafe {
            let result = ARKTS_CreateArrayBuffer(context.env, byteLength)
            context.checkJSException() // in case of ArkTS OOM
            let rawHandle = acquireArrayRawData(buffer)
            let dst = ARKTS_GetArrayBufferRawPtr(context.env, result)
            let status = memcpy_s(dst, copyLength, CPointer<Unit>(rawHandle.pointer), copyLength)
            releaseArrayRawData(rawHandle)
            if (status != 0) {
                throw badCCall("memcpy_s", status)
            }
            result
        }
        JSArrayBuffer(context, value)
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
