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

type JSGlobal = CPointer<JSValue_>

@FastNative
foreign func ARKTS_CreateGlobal(env: JSEnv, value: JSValue_): JSGlobal

@FastNative
foreign func ARKTS_DisposeGlobal(env: JSEnv, ref: JSGlobal): Unit

@FastNative
foreign func ARKTS_GetGlobalValue(ref: JSGlobal): JSValue_

/**
 * JSObjects into cj are references, JSHeapObject is the base class of all JSObject references.
 *  JSHeapObject keeps the JSObject alive by create global handle, and dispose global handle after cj object are
 *  destructed(Note: the finalizer is called in final derived class [cj spec rule]).
 */
@!APILevel[since: "22"]
abstract sealed class JSHeapObject {
    let context: JSContext

    let globalValue_: JSGlobal
    let innerValue: JSValue_

    JSHeapObject(
        context: JSContext,
        value: JSValue_
    ) {
        this.context = context
        (globalValue_, innerValue) = unsafe {
            let global = ARKTS_CreateGlobal(context.env, value)
            let local = ARKTS_GetGlobalValue(global)
            (global, local)
        }
    }

    /**
     * Convert JSHeapObject to JSValue.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        since: "22"
    ]
    public func toJSValue(): JSValue {
        context.checkLifecycleAndThread()
        JSValue(context, innerValue)
    }
}
