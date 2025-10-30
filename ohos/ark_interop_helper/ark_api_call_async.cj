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

import std.collection.concurrent.ConcurrentHashMap
import ohos.business_exception.BusinessException
import ohos.base.UIThread
import ohos.hilog.Hilog
import std.sync.Mutex
import ohos.ark_interop.{JSRuntime, JSModule}
import std.convert.Parsable
import std.env.getProcessId

foreign func gettid(): Int64

const JS_INTERNAL_ERROR = -1i32
protected let EMPTY_ARG = {_: JSContext => Array<JSValue>()}
private let MAIN_CONTEXT_MODULE_MAP = ConcurrentHashMap<String, JSObject>()
protected var mainThreadRuntime = None<JSRuntime>
protected var mainThreadContext = None<JSContext>
private var lock = Mutex()
private let mainThreadId = getProcessId()
// only run in hybrid mode
private let _ = JSModule.registerModule {
    ctx, _ => mainThreadContext = ctx
}

protected func getMainContext(): JSContext {
    // hybrid mode
    if (let Some(v) <- mainThreadContext) {
        return v
    }
    // pure cj, create js runtime in main thread
    // user may call this func in spawn

    func initJs(): JSContext {
        synchronized(lock) {
            if (let Some(v) <- mainThreadContext) {
                v
            } else {
                let rt = JSRuntime()
                mainThreadRuntime = rt
                mainThreadContext = rt.mainContext
                rt.mainContext
            }
        }
    }

    let curTid = getProcessId()
    if (curTid == mainThreadId) {
        initJs()
    } else {
        let f = spawn (UIThread) {
            initJs()
        }
        f.get()
    }
}

protected func checkThreadAndCall<T>(ctx: JSContext, f: (JSContext) -> T): T {
    if (ctx.isInBindThread()) {
        f(ctx)
    } else {
        let fut = spawn (UIThread) {
            f(ctx)
        }
        fut.get()
    }
}

func handleError(ctx: JSContext, err: JSValue): BusinessException {
    if (err.isObject()) {
        let errObj = err.asObject()
        let code = if (errObj["code"].isNumber()) {
            Int32.fromJSValue(ctx, errObj.getProperty("code"))
        } else if (errObj["code"].isString()) {
            Int32.tryParse(String.fromJSValue(ctx, errObj["code"])) ?? JS_INTERNAL_ERROR
        } else {
            JS_INTERNAL_ERROR
        }
        let msg = if (errObj["message"].isString()) {
            String.fromJSValue(ctx, errObj["message"])
        } else {
            "unknown exception occured"
        }
        BusinessException(code, msg)
    } else if (err.isNumber()) {
        let code = Int32.fromJSValue(ctx, err)
        BusinessException(code, "unknown exception occured")
    } else {
        BusinessException(JS_INTERNAL_ERROR, "unknown exception occured")
    }
}

protected func asyncCallbackWrapper<T>(ctx: JSContext, callback: (?BusinessException, ?T) -> Unit,
    onResolve: (JSContext, JSValue) -> T): JSValue {
    func call(ctx: JSContext): JSValue {
        let jscall = ctx.function {
            ctx, info =>
            try {
                var err = None<BusinessException>
                var data = None<T>
                if (!info[0].isNull() && !info[0].isUndefined()) {
                    err = handleError(ctx, info[0])
                } else {
                    data = onResolve(ctx, info[1])
                }
                callback(err, data)
            } catch (e: Exception) {
                Hilog.error(0xD003903, "Cangjie-App", "${e}")
                throw e
            }
            ctx.undefined().toJSValue()
        }
        jscall.toJSValue()
    }
    checkThreadAndCall<JSValue>(ctx, call)
}

protected func asyncCallbackWrapper<T>(ctx: JSContext, callback: (?BusinessException, ?T) -> Unit): JSValue where T <: JSInteropType<T> {
    asyncCallbackWrapper<T>(ctx, callback) {ctx, info => T.fromJSValue(ctx, info)}
}

protected func getJSModule(ctx: JSContext, name: String, prefix: ?String): JSObject {
    match (MAIN_CONTEXT_MODULE_MAP.get(name)) {
        case Some(v) => v
        case None =>
            let module = ctx.requireSystemNativeModule(name, prefix: prefix).asObject()
            MAIN_CONTEXT_MODULE_MAP.add(name, module)
            module
    }
}

protected func jsGlobalApiCall<T>(moduleName: String, modulePrefix: ?String, funcName: String,
    args: (JSContext) -> Array<JSValue>, onResolve: (JSContext, JSValue) -> T): T {
    func call(context: JSContext): T {
        let jsModule = getJSModule(context, moduleName, modulePrefix)
        let jsRet = jsModule.callMethod(funcName, args(context))
        onResolve(context, jsRet)
    }
    checkThreadAndCall<T>(getMainContext(), call)
}

protected func jsObjApiCall<T>(obj: JSObject, funcName: String, args: (JSContext) -> Array<JSValue>,
    onResolve: (JSContext, JSValue) -> T): T {
    func call(context: JSContext): T {
        let jsRet = obj.callMethod(funcName, args(context))
        onResolve(context, jsRet)
    }
    checkThreadAndCall<T>(getMainContext(), call)
}

protected func hmsGlobalApiCall<T>(moduleName: String, funcName: String, args: (JSContext) -> Array<JSValue>,
    onResolve: (JSContext, JSValue) -> T): T {
    jsGlobalApiCall<T>(moduleName, "hms", funcName, args, onResolve)
}

protected func ohosGlobalApiCall<T>(moduleName: String, funcName: String, args: (JSContext) -> Array<JSValue>,
    onResolve: (JSContext, JSValue) -> T): T {
    jsGlobalApiCall<T>(moduleName, None<String>, funcName, args, onResolve)
}

protected func jsObjApiCall<T>(obj: JSObject, funcName: String, args: (JSContext) -> Array<JSValue>): T where T <: JSInteropType<T> {
    jsObjApiCall<T>(obj, funcName, args) {ctx, info => T.fromJSValue(ctx, info)}
}

protected func hmsGlobalApiCall<T>(moduleName: String, funcName: String, args: (JSContext) -> Array<JSValue>): T where T <: JSInteropType<T> {
    hmsGlobalApiCall<T>(moduleName, funcName, args) {ctx, info => T.fromJSValue(ctx, info)}
}

protected func ohosGlobalApiCall<T>(moduleName: String, funcName: String, args: (JSContext) -> Array<JSValue>): T where T <: JSInteropType<T> {
    ohosGlobalApiCall<T>(moduleName, funcName, args) {ctx, info => T.fromJSValue(ctx, info)}
}

protected func jsGlobalApiCallPromise<T>(moduleName: String, modulePrefix: ?String, funcName: String,
    callback: (?BusinessException, ?T) -> Unit, args: (JSContext) -> Array<JSValue>, onResolve: (JSContext, JSValue) -> T): Unit {
    func call(context: JSContext): Unit {
        let jsRet = getJSModule(context, moduleName, modulePrefix).callMethod(funcName, args(context))
        let promise = jsRet.asPromise()
        let onResolved = context.function(
            {
                ctx: JSContext, callInfo: JSCallInfo =>
                try {
                    let result = onResolve(ctx, callInfo[0])
                    callback(None, result)
                } catch (e: BusinessException) {
                    callback(e, None)
                } catch (e: Exception) {
                    callback(BusinessException(JS_INTERNAL_ERROR, e.message), None)
                }
                ctx.null().toJSValue()
            }
        )
        let onRejected = context.function(
            {
                ctx: JSContext, callInfo: JSCallInfo =>
                callback(handleError(ctx, callInfo[0]), None)
                ctx.null().toJSValue()
            }
        )
        promise.then(onResolved, onRejected: onRejected)
    }
    checkThreadAndCall<Unit>(getMainContext(), call)
}

protected func jsGlobalApiCallPromise<T>(moduleName: String, modulePrefix: ?String, funcName: String,
    callback: (?BusinessException, ?T) -> Unit, args: (JSContext) -> Array<JSValue>): Unit where T <: JSInteropType<T> {
    jsGlobalApiCallPromise<T>(moduleName, modulePrefix, funcName, callback, args) {
        ctx, value => T.fromJSValue(ctx, value)
    }
}

protected func hmsGlobalApiCallPromise<T>(moduleName: String, funcName: String,
    callback: (?BusinessException, ?T) -> Unit, args: (JSContext) -> Array<JSValue>, onResolve: (JSContext, JSValue) -> T): Unit {
    jsGlobalApiCallPromise<T>(moduleName, "hms", funcName, callback, args, onResolve)
}

protected func ohosGlobalApiCallPromise<T>(moduleName: String, funcName: String,
    callback: (?BusinessException, ?T) -> Unit, args: (JSContext) -> Array<JSValue>, onResolve: (JSContext, JSValue) -> T): Unit {
    jsGlobalApiCallPromise<T>(moduleName, None, funcName, callback, args, onResolve)
}

protected func hmsGlobalApiCallPromise<T>(moduleName: String, funcName: String,
    callback: (?BusinessException, ?T) -> Unit, args: (JSContext) -> Array<JSValue>): Unit where T <: JSInteropType<T> {
    jsGlobalApiCallPromise<T>(moduleName, "hms", funcName, callback, args)
}

protected func ohosGlobalApiCallPromise<T>(moduleName: String, funcName: String,
    callback: (?BusinessException, ?T) -> Unit, args: (JSContext) -> Array<JSValue>): Unit where T <: JSInteropType<T> {
    jsGlobalApiCallPromise<T>(moduleName, None, funcName, callback, args)
}

protected func jsObjApiCallPromise<T>(obj: JSObject, funcName: String, callback: (?BusinessException, ?T) -> Unit,
    args: (JSContext) -> Array<JSValue>, onResolve: (JSContext, JSValue) -> T): Unit {
    func call(context: JSContext): Unit {
        let jsRet = obj.callMethod(funcName, args(context))
        let promise = jsRet.asPromise()
        let onResolved = context.function(
            {
                ctx: JSContext, callInfo: JSCallInfo =>
                try {
                    let result = onResolve(ctx, callInfo[0])
                    callback(None, result)
                } catch (e: BusinessException) {
                    callback(e, None)
                } catch (e: Exception) {
                    callback(BusinessException(JS_INTERNAL_ERROR, e.message), None)
                }
                ctx.null().toJSValue()
            }
        )
        let onRejected = context.function(
            {
                ctx: JSContext, callInfo: JSCallInfo =>
                callback(handleError(ctx, callInfo[0]), None)
                ctx.null().toJSValue()
            }
        )
        promise.then(onResolved, onRejected: onRejected)
    }
    checkThreadAndCall<Unit>(getMainContext(), call)
}

protected func jsObjApiCallPromise<T>(obj: JSObject, funcName: String, callback: (?BusinessException, ?T) -> Unit,
    args: (JSContext) -> Array<JSValue>): Unit where T <: JSInteropType<T> {
    jsObjApiCallPromise(obj, funcName, callback, args) {ctx, value => T.fromJSValue(ctx, value)}
}

protected func toJSArray<T>(ctx: JSContext, cjArr: ?Array<T>): JSValue where T <: JSInteropType<T> {
    if (let Some(arr) <- cjArr) {
        let jsArr = Array<JSValue>(arr.size) {
            i => arr[i].toJSValue(ctx)
        }
        ctx.array(jsArr).toJSValue()
    } else {
        ctx.undefined().toJSValue()
    }
}

protected func toJSArray<T>(ctx: JSContext, cjArr: ?Array<T>, constructor: (JSContext, T) -> JSValue): JSValue {
    if (let Some(arr) <- cjArr) {
        let jsArr = Array<JSValue>(arr.size) {
            i => constructor(ctx, arr[i])
        }
        ctx.array(jsArr).toJSValue()
    } else {
        ctx.undefined().toJSValue()
    }
}

protected func fromJSArray<T>(ctx: JSContext, input: JSValue): Array<T> where T <: JSInteropType<T> {
    if (input.isUndefined()) {
        return []
    }
    let jsArr = input.asArray()
    Array<T>(jsArr.size) {
        i => T.fromJSValue(ctx, jsArr[i])
    }
}

protected func fromJSArray<T>(ctx: JSContext, input: JSValue, constructor: (JSContext, JSValue) -> T): Array<T> {
    let jsArr = input.asArray()
    return Array<T>(jsArr.size) {
        index => constructor(ctx, jsArr[index])
    }
}

protected func fromJSArrayOption<T>(ctx: JSContext, input: JSValue): Option<Array<T>> where T <: JSInteropType<T> {
    if (input.isUndefined()) {
        None<Array<T>>
    } else {
        Some(fromJSArray<T>(ctx, input))
    }
}

protected func fromJSArrayOption<T>(ctx: JSContext, input: JSValue, constructor: (JSContext, JSValue) -> T): Option<Array<T>> {
    if (input.isUndefined()) {
        None<Array<T>>
    } else {
        Some(fromJSArray(ctx, input, constructor))
    }
}
