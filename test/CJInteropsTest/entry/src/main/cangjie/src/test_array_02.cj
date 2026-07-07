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

package entry

import ohos.ark_interop.*
import std.math.MathExtension
import std.collection.*

let _ = JSModule.registerModule {
    jsContext: JSContext, jsObject: JSObject => jsObject["test_JSArray_OperatorSetJSValue_success_2"] = jsContext
        .function(test_JSArray_OperatorSetJSValue_success_2)
        .toJSValue()
    jsObject["test_JSArrayEx"] = jsContext.function(test_JSArrayEx).toJSValue()
    jsObject["test_JSHashmapEx"] = jsContext.function(test_JSHashmapEx).toJSValue()
}

// js创建空array传入cj
// operator func [](index: Int64, value!: JSValue): Unit
func test_JSArray_OperatorSetJSValue_success_2(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let array = jsContext.array(Array<JSValue>(5, repeat: jsContext.null().toJSValue()))
    array[0] = jsContext.number(114.514f64).toJSValue()
    array[1] = jsContext.boolean(false).toJSValue()
    array.toJSValue()
}

func test_JSArrayEx(context: JSContext, callInfo: JSCallInfo): JSValue {
    let arr = JSArrayEx<String>("aaa")
    try {
        arr[-1]
        Assert.isUnreachable()
    } catch (_: Exception) {
        // do nothing
    }
    try {
        arr[1]
        Assert.isUnreachable()
    } catch (_: Exception) {
        // do nothing
    }
    arr.toJSValue(context)
    Assert.equals(arr[0], "aaa")
    arr[0] = "bbb"
    return context.undefined().toJSValue()
}

func test_JSHashmapEx(context: JSContext, callInfo: JSCallInfo): JSValue {
    let map = JSHashMapEx<String, String>(HashMap<String, String>(("a", "b")))
    map.toJSValue(context)
    map.keys()
    map.toHashMap()
    try {
        map["c"]
        Assert.isUnreachable()
    } catch (_: Exception) {
        // do nothing
    }

    context.undefined().toJSValue()
}