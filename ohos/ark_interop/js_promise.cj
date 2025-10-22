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

@C
struct JSPromisePrivate {}

type JSPromiseCap = CPointer<JSPromisePrivate>

@FastNative
foreign func ARKTS_CreatePromiseCapability(env: JSEnv): JSPromiseCap

@FastNative
foreign func ARKTS_GetPromiseFromCapability(env: JSEnv, promise: JSPromiseCap): JSValue_

foreign func ARKTS_PromiseCapabilityResolve(env: JSEnv, promise: JSPromiseCap, result: JSValue_): Unit

foreign func ARKTS_PromiseCapabilityReject(env: JSEnv, promise: JSPromiseCap, message: JSValue_): Unit

foreign func ARKTS_PromiseThen(env: JSEnv, prom: JSValue_, onFulfilled: JSValue_, onRejected: JSValue_): JSValue_

foreign func ARKTS_PromiseCatch(env: JSEnv, prom: JSValue_, callback: JSValue_): JSValue_

/**
 * A callback encapsulation object. JSPromise aims to provide consistent encapsulation for callbacks, significantly
 * enhancing its usability by combining the syntactic sugar of async and await. The lifecycle of JSPromise exceeds the 
 * referenced ArkTS object.
 */
    @!APILevel[22, stagemodelonly: true]
public class JSPromise <: JSHeapObject {
    init(context: JSContext, value: JSValue_) {
        super(context, value)
    }

    ~init() {
        unsafe { ARKTS_DisposeGlobal(context.env_, globalValue_) }
    }

    /**
     * Register result processing callback function.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func then(onFulfilled: JSFunction, onRejected!: ?JSFunction = None): Unit {
        let onFulfilledValue = onFulfilled.innerValue
        let onRejectedValue = if (let Some(fun) <- onRejected) {
            fun.innerValue
        } else {
            context.undefined().toJSValue().value
        }
        unsafe {
            ARKTS_PromiseThen(context.env, innerValue, onFulfilledValue, onRejectedValue)
        }
    }

    /**
     * Register exception processing callback function.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func catchError(callback: JSFunction): Unit {
        unsafe {
            ARKTS_PromiseCatch(context.env, innerValue, callback.innerValue)
        }
    }
}

/**
 * JSPromiseCapability is not a JSValue but a JSVM internal type,
 * the main purpose is to enhance performance.
 */
@!APILevel[22, stagemodelonly: true]
public class JSPromiseCapability {
    static func create(context: JSContext): JSPromiseCap {
        unsafe { ARKTS_CreatePromiseCapability(context.env) }
    }

    private let context: JSContext
    private let promise: JSPromiseCap
    private var isComplete: Bool

    init(context: JSContext) {
        this.context = context
        promise = create(context)
        isComplete = false
    }

    /**
     * Notify promise of normal completion and commits the return value.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func resolve(value: JSValue): Unit {
        if (isComplete) {
            throw jsObjUseAfterFree("JSPromiseCapability")
        }
        let env = context.env // do lifecycle check and thread check here.
        let resolveValue = value.value // do lifecycle check here.
        unsafe {
            ARKTS_PromiseCapabilityResolve(env, promise, resolveValue)
        }
        isComplete = true
    }

    /**
     * Submit an exception to promise.
     *
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func reject(value: JSValue): Unit {
        if (isComplete) {
            throw jsObjUseAfterFree("JSPromiseCapability")
        }
        let env = context.env // do lifecycle check and thread check here.
        let rejectValue = value.value // do lifecycle check here.
        unsafe {
            ARKTS_PromiseCapabilityReject(env, promise, rejectValue)
        }
        isComplete = true
    }

    /**
     * Convert JSPromiseCapability to JSValue.
     * 
     * @throws { BusinessException } 34300003 - Accessing reference is beyond reach.
     * @throws { BusinessException } 34300004 - Thread mismatch.
     */
    @!APILevel[
        22,
        stagemodelonly: true
    ]
    public func toJSValue(): JSValue {
        if (isComplete) {
            throw jsObjUseAfterFree("JSPromiseCapability")
        }
        let env = context.env // do lifecycle check and thread check here.
        let result = unsafe { ARKTS_GetPromiseFromCapability(env, promise) }
        JSValue(context, result)
    }
}
