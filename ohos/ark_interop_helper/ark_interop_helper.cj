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

package ohos.ark_interop_helper

internal import ohos.ark_interop.*
internal import ohos.labels.*
import std.collection.*

foreign func ArkTsValuetoNapiValue(env: napi_env, ark_value: JSValue_): napi_value

foreign func IsStageMode(context: napi_value, env: napi_env): Bool
// foreign func GetContextFAMode(env: napi_env): FAContext

foreign func NapiValueToArkTsValue(value: CPointer<Unit>): JSValue_

/**
 * Determine whether in application mode. 
 */
@!APILevel[
    since: "22"
]
public func isStageMode(env: napi_env, context: napi_value): Bool {
    unsafe {
        IsStageMode(env, context)
    }
}

/**
 * Convert JSValue to napi_value.
 */
@!APILevel[
    since: "22"
]
public func arktsValueToNapiValue(env: napi_env, ark_value: JSValue): napi_value {
    unsafe {
        ArkTsValuetoNapiValue(env, ark_value.value)
    }
}

/**
 * Convert HashMap to JSValue.
 */
@!APILevel[
    since: "22"
]
public func mapToJSValue<T>(
    context: JSContext,
    parameter: ?HashMap<String, T>,
    convert: (JSContext, T) -> JSValue
): JSValue {
    if (let Some(map) <- parameter) {
        let obj = context.object()
        for ((k, v) in map) {
            obj[k] = convert(context, v)
        }
        obj.toJSValue()
    } else {
        context.undefined().toJSValue()
    }
}

/**
 * Convert JSValue to HashMap.
 */
@!APILevel[
    since: "22"
]
public func mapFromJSValue<T>(
    context: JSContext,
    value: JSValue,
    convert: (JSContext, JSValue) -> T
): ?HashMap<String, T> {
    if (value.isUndefined()) {
        None
    } else {
        let map = HashMap<String, T>()
        let keys = value.asObject().keys()
        for (key in keys) {
            map.add(key, convert(context, value.asObject()[key]))
        }
        map
    }
}
