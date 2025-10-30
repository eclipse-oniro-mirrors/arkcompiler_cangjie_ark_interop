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

internal import std.math.numeric.BigInt

@FastNative
foreign func ARKTS_CreateBigInt(env: JSEnv, value: Int64): JSValue_

@FastNative
foreign func ARKTS_CreateBigIntWithBytes(env: JSEnv, isNegative: Bool, size: Int64, words: CPointer<UInt8>): JSValue_

@FastNative
foreign func ARKTS_IsBigInt(env: JSEnv, value: JSValue_): Bool

@FastNative
foreign func ARKTS_BigIntGetByteSize(env: JSEnv, value: JSValue_): Int64

@FastNative
foreign func ARKTS_BigIntReadBytes(env: JSEnv, value: JSValue_, isNegative: CPointer<Bool>, byteCount: Int64,
    words: CPointer<UInt8>): Int64

/**
 * The JSBigInt object is used to represent a safe reference to the ArkTS bigint type.
 * It can be converted to Cangjie BigInt.
 */
@!APILevel[since: "22"]
public class JSBigInt <: JSHeapObject {
    init(context: JSContext, value: JSValue_) {
        super(context, value)
    }

    init(context: JSContext, value: Int64) {
        super(context, createWithInt64(context, value))
        context.checkJSException() // in case of ArkTS OOM
    }

    init(context: JSContext, value: BigInt) {
        super(context, createWithBigInt(context, value))
        context.checkJSException() // in case of ArkTS OOM
    }

    ~init() {
        unsafe { ARKTS_DisposeGlobal(context.env_, globalValue_) }
    }

    static func createWithInt64(context: JSContext, value: Int64): JSValue_ {
        unsafe { ARKTS_CreateBigInt(context.env, value) }
    }

    static func createWithBigInt(context: JSContext, value: BigInt): JSValue_ {
        let isNegative = value.sign < 0
        let digits = if (isNegative) {
            (-value).toBytes()
        } else {
            value.toBytes()
        }
        unsafe {
            let handle = acquireArrayRawData(digits)
            let result = ARKTS_CreateBigIntWithBytes(context.env, isNegative, digits.size, handle.pointer)
            releaseArrayRawData(handle)
            return result
        }
    }

    @OverflowWrapping
    static func readAsBigInt(env: JSEnv, value: JSValue_): BigInt {
        unsafe {
            let totalBytes = ARKTS_BigIntGetByteSize(env, value)
            let rawArr = Array<UInt8>(totalBytes, repeat: 0)

            let handle = acquireArrayRawData(rawArr)
            var isNegative = false

            ARKTS_BigIntReadBytes(env, value, inout isNegative, totalBytes, handle.pointer)
            releaseArrayRawData(handle)

            let abs = BigInt(true, rawArr)
            if (isNegative) {
                -abs
            } else {
                abs
            }
        }
    }

    /**
     * Convert JSBigInt to Cangjie BigInt.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBigInt(): BigInt {
        let env = context.env // do lifecycle check and thread check here.
        readAsBigInt(env, innerValue)
    }
}
