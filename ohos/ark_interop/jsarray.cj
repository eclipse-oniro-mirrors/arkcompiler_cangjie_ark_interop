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

@FastNative
foreign func ARKTS_CreateArray(env: JSEnv, size: UInt32): JSValue_

@FastNative
foreign func ARKTS_CreateArrayWithInit(env: JSEnv, size: UInt32, data: CPointer<JSValue_>): JSValue_

@FastNative
foreign func ARKTS_GetArrayLength(env: JSEnv, arr: JSValue_): UInt32

@FastNative
foreign func ARKTS_SetElement(env: JSEnv, arr: JSValue_, index: UInt32, setValue: JSValue_): Unit

@FastNative
foreign func ARKTS_GetElement(env: JSEnv, arr: JSValue_, index: UInt32): JSValue_

/**
 * The JSArray object is used to represent a safe reference to the ArkTS array.
 * It supports getting length, reading and writing elements.
 */
@!APILevel[
    since: "22"
]
public class JSArray <: JSHeapObject {
    init(context: JSContext, value: JSValue_) {
        super(context, value)
    }

    init(context: JSContext, arr: Array<JSValue>) {
        super(context, createWithInit(context, arr))
    }

    static func createWithInit(context: JSContext, arr: Array<JSValue>): JSValue_ {
        if (arr.size > Int64(UInt32.Max)) {
            throw jsArrayRangeMisMatch(0, Int64(UInt32.Max), arr.size)
        }
        if (arr.size > 0) {
            let jsArr = Array<JSValue_>(arr.size) {
                index => arr[index].value
            }
            unsafe {
                let rawArr = acquireArrayRawData(jsArr)
                let result = ARKTS_CreateArrayWithInit(context.env, UInt32(arr.size), rawArr.pointer)
                releaseArrayRawData(rawArr)
                result
            }
        } else {
            unsafe { ARKTS_CreateArrayWithInit(context.env, 0, CPointer<JSValue_>()) }
        }
    }

    ~init() {
        unsafe { ARKTS_DisposeGlobal(context.env_, globalValue_) }
    }

    /**
     * Array length.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public prop size: Int64 {
        get() {
            let env = context.env // do lifecycle check and thread check here.
            Int64(unsafe { ARKTS_GetArrayLength(env, innerValue) })
        }
    }

    /**
     * Get the element at index.
     *
     * @param { Int64 } index - Input index, safe range: [0, input count).
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     * @returns { JSValue } - ArkTS unified type.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        if (index < 0 || index >= Int64(UInt32.Max)) {
            throw jsArrayRangeMisMatch(0, Int64(UInt32.Max), index)
        }
        let result = unsafe { ARKTS_GetElement(env, innerValue, UInt32(index)) }
        JSValue(context, result)
    }

    /**
     * Set the element at index.
     *
     * @param { Int64 } index - Write index.
     * @param { JSValue } value - Value to write.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64, value!: JSValue): Unit {
        let env = context.env // do lifecycle check and thread check here.
        if (index < 0 || index > Int64(UInt32.Max)) {
            throw jsArrayRangeMisMatch(0, Int64(UInt32.Max), index)
        }
        unsafe { ARKTS_SetElement(env, innerValue, UInt32(index), value.value) }
    }

    /**
     * Set the element at index.
     *
     * @param { Int64 } index - Write index.
     * @param { JSHeapObject } [value] - Value to write.
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64, value!: JSHeapObject): Unit {
        let env = context.env // do lifecycle check and thread check here.
        if (index < 0) {
            throw jsArrayRangeMisMatch(0, size, index)
        }
        unsafe { ARKTS_SetElement(env, innerValue, UInt32(index), value.innerValue) }
    }
}
