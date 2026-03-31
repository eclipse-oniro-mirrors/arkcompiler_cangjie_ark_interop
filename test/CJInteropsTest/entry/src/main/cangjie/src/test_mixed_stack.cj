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

import ohos.ark_interop.*

func testMixedStack0(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction()
    callback.call(context.function {c, _ =>
        let v = c.undefined().toJSValue().asClass() // expect throw TypeMismatch
        c.undefined().toJSValue()
    }.toJSValue())
}

func testMixedStack1(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction()
    callback.call(context.function { c, callInfo =>
        callInfo[0].asFunction().call()
    }.toJSValue())
}

func testMixedStack2(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction()
    let error = Box<?Exception>(None)
    try {
        callback.call(context.function {c, _ =>
            let e = Exception("This is an exception")
            error.value = e
            throw e
        }.toJSValue())
        return context.boolean(false).toJSValue()
    } catch (e: Exception) {
        if (error.value.isNone()) {
            return context.boolean(false).toJSValue()
        }
        let errValue = error.value.getOrThrow()
        return context.boolean(errValue.toString() != e.toString()).toJSValue()
    }
}

func testMixedStack3(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction()
    try {
        callback.call(context.function { c, _ =>
            let v = c.undefined().toJSValue().asClass()
            throw Exception("should never happen")
        }.toJSValue())
        return context.boolean(false).toJSValue()
    } catch (e: Exception) {
        var hasArkFrame = false
        for (element in e.getStackTrace()) {
            if (element.fileName.indexOf(".ets").isSome()) {
                hasArkFrame = true
                break
            }
        }
        context.boolean(!hasArkFrame).toJSValue()
    }
}

let _ = JSModule.registerModule { context, exports =>
    exports["testMixedStack0"] = context.function(testMixedStack0).toJSValue()
    exports["testMixedStack1"] = context.function(testMixedStack1).toJSValue()
    exports["testMixedStack2"] = context.function(testMixedStack2).toJSValue()
    exports["testMixedStack3"] = context.function(testMixedStack3).toJSValue()

}