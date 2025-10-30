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
foreign func ARKTS_CreateSymbol(env: JSEnv, description: CPointer<UInt8>, length: Int32): JSValue_

@FastNative
foreign func ARKTS_IsSymbol(env: JSEnv, value: JSValue_): Bool

@FastNative
foreign func ARKTS_GetSymbolDesc(env: JSEnv, symbol: JSValue_): CString

/**
 * The JSSymbol object is used to represent a safe reference to the ArkTS symbol type.
 */
@!APILevel[since: "22"]
public class JSSymbol <: JSHeapObject & JSKeyable {
    private var desc_: ?String = None

    init(context: JSContext, value: JSValue_) {
        super(context, value)
    }

    init(context: JSContext, description: String) {
        super(context, createSymbol(context, description))
        desc_ = description
    }

    ~init() {
        unsafe { ARKTS_DisposeGlobal(context.env_, globalValue_) }
    }

    static func createSymbol(context: JSContext, description: String): JSValue_ {
        if (description.isEmpty()) {
            unsafe { ARKTS_CreateSymbol(context.env, CPointer<UInt8>(), Int32(0)) }
        } else {
            unsafe {
                let rawHandle = acquireArrayRawData(description.rawData())
                let result = ARKTS_CreateSymbol(context.env, rawHandle.pointer, Int32(description.size))
                releaseArrayRawData(rawHandle)
                result
            }
        }
    }

    /**
     * Convert JSSymbol to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(_: JSContext): JSValue {
        context.checkLifecycleAndThread()
        JSValue(context, innerValue)
    }

    /**
     * The description of symbol.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public prop description: String {
        get() {
            let env = context.env // do lifecycle check and thread check here.
            if (let Some(desc) <- desc_) {
                desc
            } else {
                let desc = unsafe {
                    let cDesc = ARKTS_GetSymbolDesc(env, innerValue)
                    let desc = cDesc.toString()
                    ARKTS_FreeCString(cDesc)
                    desc
                }
                desc_ = desc
                desc
            }
        }
    }

    /**
     * Return a String that represents the JSSymbol.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String {
        let desc = description
        if (desc.isEmpty()) {
            return "[symbol]"
        } else {
            return "[symbol: ${desc}]"
        }
    }
}
