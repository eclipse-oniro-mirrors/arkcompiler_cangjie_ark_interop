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

import std.sync.{SyncCounter, AtomicBool}
import std.collection.concurrent.ConcurrentHashMap
import ohos.business_exception.BusinessException

protected let NO_ARG = {=> Array<JSValue>()}
private let MODULE_MAP = ConcurrentHashMap<String, JSObject>()
private let GLOBAL_MODULE_REGISTERED = AtomicBool(false)

// for globalRuntime.context only, other context must not use this 
private func registerGlobalModule(ctx: JSContext) {
    if (GLOBAL_MODULE_REGISTERED.compareAndSwap(false, true)) {
        Console.create(ctx)
        Timer.create(ctx)
    }
}

protected func basicJsSkeleton<T>(callFunc: (Box<?T>, Box<?Exception>, SyncCounter) -> Unit): T {
    let ret: Box<?T> = Box<?T>(Option<T>.None)
    let exception: Box<?Exception> = Box<?Exception>(Option<Exception>.None)
    let syn = SyncCounter(1)
    let ctx = getGlobalContext()
    registerGlobalModule(ctx)
    ctx.postJSTask {
        try {
            // must call syn.dec() in all branch in lambda
            callFunc(ret, exception, syn)
        } catch (e: BusinessException) {
            exception.value = Some(e)
            syn.dec()
        } catch (e: Exception) {
            if (let None <- exception.value) {
                exception.value = Some(e)
            }
            syn.dec()
        }
    }
    syn.waitUntilZero()
    match ((exception.value, ret.value)) {
        case (Some(e), _) => throw e
        case (_, Some(v)) => v
        case _ => throw Exception("should not reach here")
    }
}

protected func arktsObjApiCallAsync<T>(obj: JSObject, funcName: String, args: () -> Array<JSValue>,
    onResolve: (JSContext, JSCallInfo) -> T): T {
    basicJsSkeleton {
        ret: Box<?T>, exception: Box<?Exception>, syn: SyncCounter =>
        let context = getGlobalContext()
        let call = obj.callMethod(funcName, args())
        let promise = call.asPromise()
        let onResolved = context.function(
            {
                ctx: JSContext, callInfo: JSCallInfo =>
                try {
                    ret.value = onResolve(ctx, callInfo)
                } catch (e: Exception) {
                    if (let None <- exception.value) {
                        exception.value = Some(e)
                    }
                }
                syn.dec()
                ctx.null().toJSValue()
            }
        )
        let onRejected = context.function(
            {
                ctx: JSContext, callInfo: JSCallInfo =>
                exception.value = handleError(ctx, callInfo[0])
                syn.dec()
                ctx.null().toJSValue()
            }
        )
        promise.then(onResolved, onRejected: onRejected)
    }
}

// not support ohos and hms have same module name
protected func getJSModule(name: String, prefix: ?String): JSObject {
    match (MODULE_MAP.get(name)) {
        case Some(v) => v
        case None =>
            let ctx = getGlobalContext()
            let module = ctx.requireSystemNativeModule(name, prefix: prefix).asObject()
            MODULE_MAP.add(name, module)
            module
    }
}

protected func arktsGlobalApiCallAsync<T>(moduleName: String, modulePrefix: ?String, funcName: String,
    args: () -> Array<JSValue>, onResolve: (JSContext, JSCallInfo) -> T): T {
    basicJsSkeleton {
        ret: Box<?T>, exception: Box<?Exception>, syn: SyncCounter =>
        let context = getGlobalContext()
        let call = getJSModule(moduleName, modulePrefix).callMethod(funcName, args())
        let promise = call.asPromise()
        let onResolved = context.function(
            {
                ctx: JSContext, callInfo: JSCallInfo =>
                try {
                    ret.value = onResolve(ctx, callInfo)
                } catch (e: Exception) {
                    if (let None <- exception.value) {
                        exception.value = Some(e)
                    }
                }
                syn.dec()
                ctx.null().toJSValue()
            }
        )
        let onRejected = context.function(
            {
                ctx: JSContext, callInfo: JSCallInfo =>
                exception.value = handleError(ctx, callInfo[0])
                syn.dec()
                ctx.null().toJSValue()
            }
        )
        promise.then(onResolved, onRejected: onRejected)
    }
}

protected func hmsGlobalApiCallAsync<T>(moduleName: String, funcName: String, args: () -> Array<JSValue>,
    onResolve: (JSContext, JSCallInfo) -> T): T {
    arktsGlobalApiCallAsync<T>(moduleName, "hms", funcName, args, onResolve)
}

protected func ohosGlobalApiCallAsync<T>(moduleName: String, funcName: String, args: () -> Array<JSValue>,
    onResolve: (JSContext, JSCallInfo) -> T): T {
    arktsGlobalApiCallAsync<T>(moduleName, None<String>, funcName, args, onResolve)
}

protected func arktsObjApiCallAsync<T>(obj: JSObject, funcName: String, args: () -> Array<JSValue>): T where T <: JSInteropType<T> {
    arktsObjApiCallAsync<T>(obj, funcName, args) {ctx, info => T.fromJSValue(ctx, info[0])}
}

protected func hmsGlobalApiCallAsync<T>(moduleName: String, funcName: String, args: () -> Array<JSValue>): T where T <: JSInteropType<T> {
    hmsGlobalApiCallAsync<T>(moduleName, funcName, args) {ctx, info => T.fromJSValue(ctx, info[0])}
}

protected func ohosGlobalApiCallAsync<T>(moduleName: String, funcName: String, args: () -> Array<JSValue>): T where T <: JSInteropType<T> {
    ohosGlobalApiCallAsync<T>(moduleName, funcName, args) {ctx, info => T.fromJSValue(ctx, info[0])}
}

protected func bindFuncToJsObj(jsObj: JSObject, funcName: String, callback: (JSContext, JSCallInfo) -> JSValue): Unit {
    let ctx = getGlobalContext()
    jsObj[funcName] = ctx.function {
        context, callInfo => callback(context, callInfo)
    }.toJSValue()
}

protected func bindFuncRetUnitToJsObj(jsObj: JSObject, funcName: String, callback: (JSContext, JSCallInfo) -> Unit): Unit {
    let ctx = getGlobalContext()
    jsObj[funcName] = ctx.function {
        context, callInfo =>
        callback(context, callInfo)
        context.undefined().toJSValue()
    }.toJSValue()
}
