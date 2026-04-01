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

// 嵌套 cj 回调内对 JSValue 误用 asClass，抛出 ArkTS 类型不匹配（34300005）
func test_mixedStack_asClass_throwException34300005(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction()
    callback.call(context.function {
        c, _ =>
            let v = c.undefined().toJSValue().asClass() // expect throw TypeMismatch
            c.undefined().toJSValue()
    }.toJSValue())
}

// 嵌套 JSFunction.call：ArkTS 侧抛 BusinessError，经混合栈回传
func test_mixedStack_nestedCall_propagateArkTsError_success(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction()
    callback.call(context.function {
        c, callInfo => callInfo[0].asFunction().call()
    }.toJSValue())
}

// cj 内 catch 到的异常与外层 e 的 toString 是否一致（用于区分传播路径）
func test_mixedStack_caughtException_identityMismatch_success(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction()
    let error = Box<?Exception>(None)
    try {
        callback.call(context.function {
            c, _ =>
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

// 混合栈异常栈中是否不含 .ets 帧
func test_mixedStack_stackTrace_noEtsFrame_success(context: JSContext, callInfo: JSCallInfo): JSValue {
    let callback = callInfo[0].asFunction()
    try {
        callback.call(context.function {
            c, _ =>
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

let _ = JSModule.registerModule {
    context, exports =>
        exports["test_mixedStack_asClass_throwException34300005"] = context
            .function(test_mixedStack_asClass_throwException34300005)
            .toJSValue()
        exports["test_mixedStack_nestedCall_propagateArkTsError_success"] = context
            .function(test_mixedStack_nestedCall_propagateArkTsError_success)
            .toJSValue()
        exports["test_mixedStack_caughtException_identityMismatch_success"] = context
            .function(test_mixedStack_caughtException_identityMismatch_success)
            .toJSValue()
        exports["test_mixedStack_stackTrace_noEtsFrame_success"] = context
            .function(test_mixedStack_stackTrace_noEtsFrame_success)
            .toJSValue()
}
