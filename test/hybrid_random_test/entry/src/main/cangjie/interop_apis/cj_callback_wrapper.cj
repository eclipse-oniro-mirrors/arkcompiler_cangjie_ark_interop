package ohos_app_cangjie_entry.interop_apis

import ohos.ark_interop.*
import ohos_app_cangjie_entry.utils.*
import kit.PerformanceAnalysisKit.Hilog

public func wrapError(context: JSContext, msg: String): JSValue {
    let obj = context.object()
    obj.setProperty("ok", context.boolean(false).toJSValue())
    obj.setProperty("msg", context.string(msg).toJSValue())
    obj.toJSValue()
}

public func wrapOk(context: JSContext): JSValue {
    let obj = context.object()
    obj.setProperty("ok", context.boolean(true).toJSValue())
    obj.toJSValue()
}

public func jsCjWrapSyncDoubler(context: JSContext, callInfo: JSCallInfo): JSValue {
    try {
        let seed = callInfo[0].toNumber()
        let doubler = context.global.getProperty("arktsCjWrapDoubler")
        if (!doubler.isFunction()) {
            return wrapError(context, "arktsCjWrapDoubler not injected")
        }
        let input = seed + 10.0
        let arktsResult = doubler.asFunction().call(context.number(input).toJSValue())
        if (!arktsResult.isNumber()) {
            return wrapError(context, "doubler returned non-number")
        }
        let finalResult = arktsResult.toNumber() - 5.0
        context.number(finalResult).toJSValue()
    } catch (e: Exception) {
        wrapError(context, "jsCjWrapSyncDoubler exception: ${e.message}")
    }
}

public func jsCjWrapSyncUpper(context: JSContext, callInfo: JSCallInfo): JSValue {
    try {
        let seed = callInfo[0].toNumber()
        let upper = context.global.getProperty("arktsCjWrapUpper")
        if (!upper.isFunction()) {
            return wrapError(context, "arktsCjWrapUpper not injected")
        }
        // Format seed as integer to match JS template literal `${seed}` (no decimal places)
        let prefix = "id_${Int64(seed)}"
        let arktsResult = upper.asFunction().call(context.string(prefix).toJSValue())
        if (!arktsResult.isString()) {
            return wrapError(context, "upper returned non-string")
        }
        let finalResult = "${arktsResult.toString()}_cj"
        context.string(finalResult).toJSValue()
    } catch (e: Exception) {
        wrapError(context, "jsCjWrapSyncUpper exception: ${e.message}")
    }
}

public func jsCjWrapCompose(context: JSContext, callInfo: JSCallInfo): JSValue {
    try {
        let seed = callInfo[0].toNumber()
        let doubler = context.global.getProperty("arktsCjWrapDoubler")
        let upper = context.global.getProperty("arktsCjWrapUpper")
        if (!doubler.isFunction() || !upper.isFunction()) {
            return wrapError(context, "arkts callbacks not injected")
        }
        let step1 = doubler.asFunction().call(context.number(seed).toJSValue())
        if (!step1.isNumber()) {
            return wrapError(context, "doubler step returned non-number")
        }
        // Format step1 as integer to match JS template literal `${seed * 2}` (no decimal places)
        let step1Str = "num_${Int64(step1.toNumber())}_end"
        let step2 = upper.asFunction().call(context.string(step1Str).toJSValue())
        if (!step2.isString()) {
            return wrapError(context, "upper step returned non-string")
        }
        context.string(step2.toString()).toJSValue()
    } catch (e: Exception) {
        wrapError(context, "jsCjWrapCompose exception: ${e.message}")
    }
}

public func jsCjWrapAsyncDoubler(context: JSContext, callInfo: JSCallInfo): JSValue {
    let seed = callInfo[0].toNumber()
    let promise = context.promiseCapability()
    let capturedContext = context
    spawnTracked {
        =>
        let input = seed + 100.0
        let _ = safePostJSTaskWithDrop(capturedContext, { =>
            try {
                let doubler = capturedContext.global.getProperty("arktsCjWrapDoubler")
                if (!doubler.isFunction()) {
                    promise.resolve(wrapError(capturedContext, "arktsCjWrapDoubler not injected"))
                    return
                }
                let arktsResult = doubler.asFunction().call(capturedContext.number(input).toJSValue())
                if (!arktsResult.isNumber()) {
                    promise.resolve(wrapError(capturedContext, "async doubler returned non-number"))
                    return
                }
                let finalResult = arktsResult.toNumber()
                promise.resolve(capturedContext.number(finalResult).toJSValue())
            } catch (e: Exception) {
                promise.resolve(wrapError(capturedContext, "async postJSTask exception: ${e.message}"))
            }
        }, { =>
            capturedContext.postJSTask {
                =>
                try {
                    promise.resolve(wrapError(capturedContext, "postJSTask dropped"))
                } catch (e: Exception) {
                    Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                }
            }
        })
    }
    promise.toJSValue()
}

public func jsCjWrapExceptionCatch(context: JSContext, callInfo: JSCallInfo): JSValue {
    try {
        let shouldThrow = callInfo[0].toBoolean()
        let thrower = context.global.getProperty("arktsCjWrapThrower")
        if (!thrower.isFunction()) {
            return wrapError(context, "arktsCjWrapThrower not injected")
        }
        if (!shouldThrow) {
            return context.string("no-throw").toJSValue()
        }
        try {
            thrower.asFunction().call(context.string("planned exception").toJSValue())
            context.string("not-thrown").toJSValue()
        } catch (e: Exception) {
            context.string("caught:${e.message}").toJSValue()
        }
    } catch (e: Exception) {
        wrapError(context, "jsCjWrapExceptionCatch exception: ${e.message}")
    }
}

public func jsCjWrapAsyncReject(context: JSContext, callInfo: JSCallInfo): JSValue {
    let seed = callInfo[0].toNumber()
    let promise = context.promiseCapability()
    let capturedContext = context
    spawnTracked {
        =>
        let _ = safePostJSTaskWithDrop(capturedContext, { =>
            try {
                let thrower = capturedContext.global.getProperty("arktsCjWrapThrower")
                if (!thrower.isFunction()) {
                    promise.resolve(wrapError(capturedContext, "arktsCjWrapThrower not injected"))
                    return
                }
                try {
                    thrower.asFunction().call(capturedContext.string("async-planned-${seed}").toJSValue())
                    promise.reject(capturedContext.string("expected-reject-but-no-throw").toJSValue())
                } catch (e: Exception) {
                    promise.reject(capturedContext.string("async-rejected:${e.message}").toJSValue())
                }
            } catch (e: Exception) {
                promise.reject(capturedContext.string("async-postJSTask-exception:${e.message}").toJSValue())
            }
        }, { =>
            capturedContext.postJSTask {
                =>
                try {
                    promise.reject(capturedContext.string("postJSTask dropped").toJSValue())
                } catch (e: Exception) {
                    Hilog.error(1, "HybridTest", "onDrop reject failed: ${e}")
                }
            }
        })
    }
    promise.toJSValue()
}
