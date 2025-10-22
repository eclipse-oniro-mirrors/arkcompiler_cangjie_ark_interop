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

package ohos.ark_interop

@FastNative
foreign func ARKTS_CreateFunc(env: JSEnv, lambdaId: Int64): JSValue_

@FastNative
foreign func ARKTS_GetCallEnv(info: JSCallInfoPrivate): JSEnv

@FastNative
foreign func ARKTS_GetArgCount(info: JSCallInfoPrivate): UInt32

@FastNative
foreign func ARKTS_GetArg(info: JSCallInfoPrivate, index: UInt32): JSValue_

@FastNative
foreign func ARKTS_GetThisArg(info: JSCallInfoPrivate): JSValue_

foreign func ARKTS_Call(env: JSEnv, fun: JSValue_, thisArg: JSValue_, numArgs: Int32, args: CPointer<JSValue_>): JSValue_

@C
struct JSCallInfoPrivate {
    JSCallInfoPrivate(private let addr: UIntNative) {}

    func env(): JSEnv {
        unsafe { ARKTS_GetCallEnv(this) }
    }
}

/**
 * Information related to an ArkTS function call. It can obtain the `this` pointer, retrieve the number of
 * arguments, and get argument by index. Each ArkTS function call saves the argument list and other related
 * information on the ArkTS stack. JSCallInfo is a pointer to this information.
 */
@!APILevel[22, stagemodelonly: true]
public struct JSCallInfo {
    JSCallInfo(
        let context: JSContext,
        let callInfo: JSCallInfoPrivate
    ) {}

    /**
     * Number of input arguments.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public prop count: Int64 {
        get() {
            context.checkLifecycleAndThread()
            Int64(unsafe { ARKTS_GetArgCount(callInfo) })
        }
    }

    /**
     * `this` pointer.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public prop thisArg: JSValue {
        get() {
            context.checkLifecycleAndThread()
            let result = unsafe { ARKTS_GetThisArg(callInfo) }
            JSValue(context, result)
        }
    }

    /**
     * Get argument at index.
     * 
     * @throws { BusinessException } 34300001 - The accessing index is out of range.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public operator func [](index: Int64): JSValue {
        context.checkLifecycleAndThread()
        // for compatibility of optional argument parsing.
        if (index >= count) {
            return context.void
        }
        if (index < 0) {
            throw jsArrayRangeMisMatch(0, count, index, message: "The call argument index is invalid")
        }
        let result = unsafe { ARKTS_GetArg(callInfo, UInt32(index)) }
        JSValue(context, result)
    }
}

/**
 * Alias for function which is `(JSContext, JSCallInfo) -> JSValue`.
 */
public type JSLambda = (JSContext, JSCallInfo) -> JSValue

@C
func cjLambdaInvoker(info: JSCallInfoPrivate, lambdaId: Int64): JSValue_ {
    let env = info.env()
    let context = JSContext.getOrCreate(env)
    try {
        let lambda = context.sharedLambda_[lambdaId]
        let callInfo = JSCallInfo(context, info)
        lambda(context, callInfo).value
    } catch (err: Exception) {
        context.throwJSError(err)
        context.undefined().toJSValue().value
    } catch (err: Error) {
        context.throwJSError(err)
        context.undefined().toJSValue().value
    }
}

@C
func cjLambdaDestructor(env: JSEnv, lambdaId: Int64): Unit {
    let context = JSContext.getOrCreate(env)
    context.sharedLambda_.remove(lambdaId)
}

/**
 * A safe reference to the ArkTS function.
 */
@!APILevel[22, stagemodelonly: true]
public class JSFunction <: JSHeapObject {
    static func createFunction(context: JSContext, lambda: JSLambda): JSValue_ {
        let lambdaId = context.sharedLambda_.append(lambda)
        let result = unsafe { ARKTS_CreateFunc(context.env, lambdaId) }
        context.checkJSException() // in case of ArkTS OOM
        return result
    }

    init(context: JSContext, value: JSValue_) {
        super(context, value)
    }

    init(context: JSContext, lambda: JSLambda) {
        super(context, createFunction(context, lambda))
    }

    ~init() {
        unsafe { ARKTS_DisposeGlobal(context.env_, globalValue_) }
    }

    static func callWithNoneArg(env: JSEnv, fun: JSValue_, thisArg: JSValue_): JSValue_ {
        unsafe {
            ARKTS_Call(
                env,
                fun,
                thisArg,
                0,
                CPointer<JSValue_>()
            )
        }
    }

    static func callWithOneArg(env: JSEnv, fun: JSValue_, thisArg: JSValue_, arg: JSValue_): JSValue_ {
        var mutableArg = arg
        unsafe {
            ARKTS_Call(
                env,
                fun,
                thisArg,
                1,
                inout mutableArg
            )
        }
    }

    static func callWithManyArgs(env: JSEnv, fun: JSValue_, thisArg: JSValue_, args: Array<JSValue_>): JSValue_ {
        unsafe {
            let rawHandle = acquireArrayRawData(args)
            let result = try {
                // may raise Exception during call, so release rawHandle before throw.
                ARKTS_Call(
                    env,
                    fun,
                    thisArg,
                    Int32(args.size),
                    rawHandle.pointer
                )
            } catch (e: Exception) {
                releaseArrayRawData(rawHandle)
                throw e
            }

            releaseArrayRawData(rawHandle)
            result
        }
    }

    static func callWithArr(env: JSEnv, fun: JSValue_, thisArg: JSValue_, args: Array<JSValue_>): JSValue_ {
        if (args.size == 0) {
            callWithNoneArg(env, fun, thisArg)
        } else if (args.size == 1) {
            callWithOneArg(env, fun, thisArg, args[0])
        } else {
            callWithManyArgs(env, fun, thisArg, args)
        }
    }

    /**
     * An ArkTS function call with None argument.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func call(thisArg!: JSValue = context.undefined().toJSValue()): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let thisArgValue = thisArg.value // do lifecycle check here.

        let result = callWithNoneArg(env, innerValue, thisArgValue)
        JSValue(context, result)
    }

    /**
     * An ArkTS function call with one argument.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func call(arg: JSValue, thisArg!: JSValue = context.undefined().toJSValue()): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let thisArgValue = thisArg.value // do lifecycle check here.
        let argValue = arg.value // do lifecycle check here.

        let result = callWithOneArg(env, innerValue, thisArgValue, argValue)
        JSValue(context, result)
    }

    /**
     * An ArkTS function call with multiple arguments.
     *
     * @throws { BusinessException } 34300002 - Outside error occurred.
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func call(args: Array<JSValue>, thisArg!: JSValue = context.undefined().toJSValue()): JSValue {
        let env = context.env // do lifecycle check and thread check here.
        let thisArgValue = thisArg.value // do lifecycle check here.
        let argValues = Array<JSValue_>(args.size) { idx =>
            args[idx].value // do lifecycle check here.
        }

        let result = callWithArr(env, innerValue, thisArgValue, argValues)
        JSValue(context, result)
    }
}
