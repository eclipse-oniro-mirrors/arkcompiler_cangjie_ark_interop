package ohos_app_cangjie_entry.interop_apis

import ohos.ark_interop.*
import std.collection.ArrayList
import ohos_app_cangjie_entry.utils.*
import kit.PerformanceAnalysisKit.Hilog

public func businessAdd(a: Float64, b: Float64): Float64 {
    a + b
}

public func businessConcat(a: String, b: String): String {
    "${a}${b}"
}

public func businessMax(values: Array<Float64>): Float64 {
    if (values.size == 0) {
        return 0.0
    }
    var max = values[0]
    for (i in 1..values.size) {
        if (values[i] > max) {
            max = values[i]
        }
    }
    max
}

public class CjCounterState <: SharedObject {
    public var count: Float64 = 0.0
    public init() {
        super()
    }
    public init(initial: Float64) {
        super()
        count = initial
    }
}

public func jsBusinessAdd(context: JSContext, callInfo: JSCallInfo): JSValue {
    let a = callInfo[0].toNumber()
    let b = callInfo[1].toNumber()
    context.number(businessAdd(a, b)).toJSValue()
}

public func jsBusinessConcat(context: JSContext, callInfo: JSCallInfo): JSValue {
    let a = callInfo[0].toString()
    let b = callInfo[1].toString()
    context.string(businessConcat(a, b)).toJSValue()
}

public func jsBusinessEcho(context: JSContext, callInfo: JSCallInfo): JSValue {
    callInfo[0]
}

public func jsBusinessMax(context: JSContext, callInfo: JSCallInfo): JSValue {
    let arr = callInfo[0].asArray()
    var values = ArrayList<Float64>()
    for (i in 0..arr.size) {
        values.add(arr[i].toNumber())
    }
    context.number(businessMax(values.toArray())).toJSValue()
}

public func jsCreateCounter(context: JSContext, callInfo: JSCallInfo): JSValue {
    let obj = context.object()
    let initVal = if (callInfo[0].isNumber()) { callInfo[0].toNumber() } else { 0.0 }
    let state = CjCounterState(initVal)
    obj.attachCJObject(context.external(state))
    obj.setProperty("inc", context.function { ctx, _ =>
        state.count = state.count + 1.0
        ctx.number(state.count).toJSValue()
    }.toJSValue())
    obj.setProperty("get", context.function { ctx, _ =>
        ctx.number(state.count).toJSValue()
    }.toJSValue())
    obj.setProperty("add", context.function { ctx, ci =>
        let n = ci[0].toNumber()
        state.count = state.count + n
        ctx.number(state.count).toJSValue()
    }.toJSValue())
    obj.toJSValue()
}

public func jsBusinessAsyncDouble(context: JSContext, callInfo: JSCallInfo): JSValue {
    let a = callInfo[0].toNumber()
    let promise = context.promiseCapability()
    let capturedContext = context
    spawnTracked {
        =>
        let result = a * 2.0
        let _ = safePostJSTaskWithDrop(capturedContext, { =>
            promise.resolve(capturedContext.number(result).toJSValue())
        }, { =>
            capturedContext.postJSTask {
                =>
                try {
                    promise.resolve(capturedContext.number(result).toJSValue())
                } catch (e: Exception) {
                    Hilog.error(1, "HybridTest", "onDrop resolve failed: ${e}")
                }
            }
        })
    }
    promise.toJSValue()
}

public func jsBusinessThrow(context: JSContext, callInfo: JSCallInfo): JSValue {
    let msg = callInfo[0].toString()
    throw Exception(msg)
}
