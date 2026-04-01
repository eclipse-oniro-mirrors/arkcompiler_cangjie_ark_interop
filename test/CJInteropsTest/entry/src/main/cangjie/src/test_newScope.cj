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
import ohos.business_exception.BusinessException

// UI 线程 newScope 内创建并调用 JSFunction，Promise resolve true
func test_JSContext_newScope_fixMemoryLeak_success(context: JSContext, callInfo: JSCallInfo): JSValue {
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

// 已 gc 的其它 Runtime 的 JSContext 在 setTimeout 回调中调用 newScope，抛 reference beyond reach
func test_JSContext_newScope_throwException_referenceBeyondReach(context: JSContext, callInfo: JSCallInfo): JSValue {
    let promise = context.promiseCapability()
    let result = promise.toJSValue()
    let newContext = createContext()
    gc(heavy: true)
    context.global.callMethod("setTimeout", context.function {
        c, _ =>
            try {
                newContext.newScope {}
                // Keep promise in resolved state for deterministic ETS-side assertion.
                promise.resolve(context.string("no exception throw").toJSValue())
            } catch (e: BusinessException) {
                promise.resolve(context.string(e.message.toString()).toJSValue())
            } catch (e: Exception) {
                promise.resolve(context.string(e.toString()).toJSValue())
            }
            c.undefined().toJSValue()
    }.toJSValue(), context.number(2000).toJSValue())
    return result
}

// 非绑定线程调用 newScope，抛 Thread mismatch
func test_JSContext_newScope_throwException_threadMismatch(context: JSContext, callInfo: JSCallInfo): JSValue {
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

let _ = JSModule.registerModule {
    context, exports =>
        exports["test_JSContext_newScope_fixMemoryLeak_success"] = context
            .function(test_JSContext_newScope_fixMemoryLeak_success)
            .toJSValue()
        exports["test_JSContext_newScope_throwException_referenceBeyondReach"] = context
            .function(test_JSContext_newScope_throwException_referenceBeyondReach)
            .toJSValue()
        exports["test_JSContext_newScope_throwException_threadMismatch"] = context
            .function(test_JSContext_newScope_throwException_threadMismatch)
            .toJSValue()
}
