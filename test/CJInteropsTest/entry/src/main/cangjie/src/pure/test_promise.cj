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

package entry.pure

import std.unittest.*
import std.unittest.testmacro.*
import ohos.ark_interop.JSRuntime
import ohos.ark_interop.JSType
import ohos.ark_interop.*
import std.collection.Set
import std.runtime.*
import std.sync.*

@Test
class TestPromise {
    @TestCase
    func test_JSPromise_then_onFulfilled_success_1() {
        let jsContext = getJSContext()
        let promiseCap = jsContext.promiseCapability()
        let promise = promiseCap.toJSValue().asPromise()
        promise.then(
            jsContext.function {
                _, callInfo =>
                    let result = callInfo[0]
                    @Expect(result.isBoolean())
                    @Expect(result.toBoolean())
                    jsContext.undefined().toJSValue()
            }
        )
        promiseCap.resolve(jsContext.boolean(true).toJSValue())
    }

    @TestCase
    func test_JSPromise_then_onRejected_success_1(): Unit {
        let jsContext = getJSContext()
        let promiseCap = jsContext.promiseCapability()
        let promise = promiseCap.toJSValue().asPromise()
        promise.then(
            jsContext.function {
                _, callInfo =>
                    @Expect(false)
                    jsContext.undefined().toJSValue()
            },
            onRejected: jsContext.function {
                _, callInfo =>
                    let error = callInfo[0]
                    @Expect(error.isString())
                    jsContext.undefined().toJSValue()
            }
        )
        promiseCap.reject(jsContext.string("xxx").toJSValue())
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSPromise_then_throwException34300003_referenceBeyondReach(): Unit {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let promiseCap = newContext.promiseCapability()
        let promise = promiseCap.toJSValue().asPromise()
        let onFulfilled = newContext.function {
            context, _ => context.undefined().toJSValue()
        }

        testReferenceBeyondReach(jsContext) {
            promise.then(onFulfilled)
        }
    }

    @TestCase
    func test_JSPromise_then_throwException34300004_threadMismatch(): Unit {
        let jsContext = getJSContext()
        let promiseCap = jsContext.promiseCapability()
        let promise = promiseCap.toJSValue().asPromise()
        let onFulfilled = jsContext.function {
            context, _ => context.undefined().toJSValue()
        }
        testThreadMismatch {
            promise.then(onFulfilled)
        }
    }

    @TestCase
    func test_JSPromise_catchError(): Unit {
        let jsContext = getJSContext()
        let promiseCap = jsContext.promiseCapability()
        let promise = promiseCap.toJSValue().asPromise()
        promise.then(
            jsContext.function {
                _, callInfo =>
                    @Expect(false)
                    jsContext.undefined().toJSValue()
            }
        )
        promise.catchError(
            jsContext.function {
                _, callInfo =>
                    let error = callInfo[0]
                    @Expect(error.isString())
                    jsContext.undefined().toJSValue()
            }
        )
        promiseCap.reject(jsContext.string("xxx").toJSValue())
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSPromise_catchError_throwException34300003_referenceBeyondReach(): Unit {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let promiseCap = newContext.promiseCapability()
        let promise = promiseCap.toJSValue().asPromise()
        let callback = newContext.function {
            context, _ => context.undefined().toJSValue()
        }

        testReferenceBeyondReach(jsContext) {
            promise.catchError(callback)
        }
    }

    @TestCase
    func test_JSPromise_catchError_throwException34300004_threadMismatch(): Unit {
        let jsContext = getJSContext()
        let promiseCap = jsContext.promiseCapability()
        let promise = promiseCap.toJSValue().asPromise()
        let callback = jsContext.function {
            _, _ => jsContext.undefined().toJSValue()
        }

        let monitor = Monitor()
        let msgBox = Box(None<String>)
        spawn {
            let msg = try {
                promise.catchError(callback)
                "NO_EXCEPTION"
            } catch (e: BusinessException) {
                e.message.toString()
            }
            synchronized(monitor) {
                msgBox.value = Some(msg)
                monitor.notify()
            }
        }

        synchronized(monitor) {
            monitor.wait(timeout: Duration.second * 6)
        }

        match (msgBox.value) {
            case None => @Expect(false)
            case Some(msg) => @Expect(msg.contains("Thread mismatch"))
        }
    }

    @TestCase
    func test_JSPromiseCapability_resolve_postJSTask_success(): Unit {
        let jsContext = getJSContext()
        let promise = jsContext.promiseCapability()
        jsContext.postJSTask {
            promise.resolve(jsContext.number(1).toJSValue())
        }
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSPromiseCapability_resolve_throwException34300003_referenceBeyondReach(): Unit {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let promiseCapability = newContext.promiseCapability()
        let resolveValue = newContext.boolean(true).toJSValue()

        testReferenceBeyondReach(jsContext) {
            promiseCapability.resolve(resolveValue)
        }
    }

    @TestCase
    func test_JSPromiseCapability_resolve_throwException34300004_threadMismatch(): Unit {
        let jsContext = getJSContext()
        let promiseCapability = jsContext.promiseCapability()
        let resolveValue = jsContext.boolean(true).toJSValue()
        testThreadMismatch {
            promiseCapability.resolve(resolveValue)
        }
    }

    @TestCase
    func test_JSPromiseCapability_resolve_throwException_referenceBeyondReach() {
        let jsContext = getJSContext()
        // 初始化对象
        let promiseCapability = jsContext.promiseCapability()

        // 强制类型转化
        let resolveValue = jsContext.boolean(true).toJSValue()

        // isComplete is false
        let isMismatch = try {
            promiseCapability.resolve(resolveValue)
            false
        } catch (exe: BusinessException) {
            true
        }
        @Expect(isMismatch, false)

        //isComplete is  true
        try {
            promiseCapability.resolve(resolveValue)
        } catch (e: BusinessException) {
            let errorMessage = e.message.toString()
            @Expect("Accessing reference [JSPromiseCapability] is beyond reach." , errorMessage)
        }
    }

    @TestCase
    func test_JSPromiseCapability_reject(): Unit {
        let jsContext = getJSContext()
        let promiseCapability = jsContext.promiseCapability()
        let rejectValue = jsContext.string("reject").toJSValue()
        let isMismatch = try {
            promiseCapability.reject(rejectValue)
            false
        } catch (e: BusinessException) {
            true
        }
        @Expect(isMismatch, false)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSPromiseCapability_reject_throwException34300003_referenceBeyondReach(): Unit {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let promiseCapability = newContext.promiseCapability()
        let rejectValue = newContext.string("reject").toJSValue()

        testReferenceBeyondReach(jsContext) {
            promiseCapability.reject(rejectValue)
        }
    }

    @TestCase
    func test_JSPromiseCapability_reject_throwException34300004_threadMismatch(): Unit {
        let jsContext = getJSContext()
        let promiseCapability = jsContext.promiseCapability()
        let rejectValue = jsContext.string("reject").toJSValue()
        testThreadMismatch {
            promiseCapability.reject(rejectValue)
        }
    }

    @TestCase
    func test_JSPromiseCapability_reject_throwException_referenceBeyondReach() {
        let jsContext = getJSContext()
        let promiseCapability = jsContext.promiseCapability()

        let rejectValue = jsContext.boolean(true).toJSValue()

        let isMismatch = try {
            promiseCapability.reject(rejectValue)
            false
        } catch (e: BusinessException) {
            true
        }
        @Expect(isMismatch , false)

        try {
            promiseCapability.reject(rejectValue)
        } catch (e: BusinessException) {
            let errorMessage = e.message.toString()
            @Expect("Accessing reference [JSPromiseCapability] is beyond reach." , errorMessage)
        }
    }

    @TestCase
    func test_JSPromiseCapability_toJSValue(): Unit {
        let jsContext = getJSContext()
        let promiseCapability = jsContext.promiseCapability()
        let value = promiseCapability.toJSValue()
        @Expect(value.isPromise())
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSPromiseCapability_toJSValue_throwException34300003_referenceBeyondReach(): Unit {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let promiseCapability = newContext.promiseCapability()

        testReferenceBeyondReach(jsContext) {
            promiseCapability.toJSValue()
        }
    }

    @TestCase
    func test_JSPromiseCapability_toJSValue_throwException34300004_threadMismatch(): Unit {
        let jsContext = getJSContext()
        let promiseCapability = jsContext.promiseCapability()
        testThreadMismatch {
            promiseCapability.toJSValue()
        }
    }

    @TestCase
    func test_JSPromiseCapability_toJSValue_throwException_referenceBeyondReach() {
        let jsContext = getJSContext()
        let promiseCapability = jsContext.promiseCapability()

        let rejectValue = jsContext.boolean(true).toJSValue()

        //isComplete is false
        let isMismatch = try {
            promiseCapability.toJSValue()
            false
        } catch (e: BusinessException) {
            true
        }
        @Expect(isMismatch , false)

        promiseCapability.resolve(rejectValue)

        //isComplete is true
        try {
            promiseCapability.toJSValue()
        } catch (e: BusinessException) {
            let errorMessage = e.message.toString()
            @Expect("Accessing reference [JSPromiseCapability] is beyond reach." , errorMessage)
        }
    }
}
