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

import std.runtime.*
import ohos.ark_interop.*
import ohos.base.*

func test_newScope_fix_memory_leak_success(context: JSContext, callInfo: JSCallInfo): JSValue {
    let promise = context.promiseCapability()
    let result = promise.toJSValue()
    spawn (UIThread) {
        try {
            context.newScope {
                let fun = context.function({context, callinfo => context.undefined().toJSValue()})
                fun.call()
            }
            promise.resolve(context.boolean(true).toJSValue())
        } catch (e: Exception) {
            promise.resolve(context.boolean(true).toJSValue())
        }
    }
    result
}

func createContext(): JSContext {
    JSRuntime().mainContext
}

func test_newScope_throw_exception_reference_beyond_reach(context: JSContext, callInfo: JSCallInfo): JSValue {
    let promise = context.promiseCapability()
    let result = promise.toJSValue()
    let newContext = createContext()
    gc(heavy: true)
    context.global.callMethod("setTimeout", context.function {c, _ =>
        try {
            newContext.newScope {}
            promise.reject(context.string("no exception throw").toJSValue())
        } catch (e: Exception) {
            promise.resolve(context.string(e.message).toJSValue())
        }
        c.undefined().toJSValue()
    }.toJSValue(), context.number(2000).toJSValue())
    return result
}

func test_newScope_throw_exception_thread_mismatch(context: JSContext, callInfo: JSCallInfo): JSValue {
    let message = spawn {
        try {
            context.newScope {}
            "no exception throw"
        } catch (e: Exception) {
            e.message[0..15]
        }
    }.get()
    context.string(message).toJSValue()
}

let _ = JSModule.registerModule { context, exports =>
    exports["test_newScope_fix_memory_leak_success"] = context.function(test_newScope_fix_memory_leak_success).toJSValue()
    exports["test_newScope_throw_exception_reference_beyond_reach"] = context.function(test_newScope_throw_exception_reference_beyond_reach).toJSValue()
    exports["test_newScope_throw_exception_thread_mismatch"] = context.function(test_newScope_throw_exception_thread_mismatch).toJSValue()
}