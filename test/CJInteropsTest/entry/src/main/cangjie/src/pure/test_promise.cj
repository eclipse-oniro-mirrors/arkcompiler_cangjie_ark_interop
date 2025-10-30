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

@Test
class TestPromise {
    @TestCase
    func testJSPromiseResolve() {
        let jsContext = getJSContext()
        // 初始化对象
        let promiseCapability = await(jsContext) {jsContext.promiseCapability()}

        // 强制类型转化
        let resolveValue = await(jsContext) {
            jsContext
                .boolean(true)
                .toJSValue()
        }

        // isComplete is false
        let isMismatch = try {
            await(jsContext) {promiseCapability.resolve(resolveValue)}
            false
        } catch (exe: BusinessException) {
            true
        }
        @Expect(isMismatch, false)

        //isComplete is  true
        try {
            await(jsContext) {promiseCapability.resolve(resolveValue)}
        } catch (e: BusinessException) {
            let errorMessage = e
                .message
                .toString()
            @Expect("Accessing reference [JSPromiseCapability] is beyond reach." , errorMessage)
        }
    }

    @TestCase
    func testJSPromiseReject() {
        let jsContext = getJSContext()
        let promiseCapability = await(jsContext) {jsContext.promiseCapability()}

        let rejectValue = await(jsContext) {
            jsContext
                .boolean(true)
                .toJSValue()
        }

        let isMismatch = try {
            await(jsContext) {promiseCapability.reject(rejectValue)}
            false
        } catch (e: BusinessException) {
            true
        }
        @Expect(isMismatch , false)

        try {
            await(jsContext) {promiseCapability.reject(rejectValue)}
        } catch (e: BusinessException) {
            let errorMessage = e
                .message
                .toString()
            @Expect("Accessing reference [JSPromiseCapability] is beyond reach." , errorMessage)
        }
    }

    @TestCase
    func testJSPromiseToJSValue() {
        let jsContext = getJSContext()
        let promiseCapability = await(jsContext) {jsContext.promiseCapability()}

        let rejectValue = await(jsContext) {
            jsContext
                .boolean(true)
                .toJSValue()
        }

        //isComplete is false
        let isMismatch = try {
            await(jsContext) {promiseCapability.toJSValue()}
            false
        } catch (e: BusinessException) {
            true
        }
        @Expect(isMismatch , false)

        await(jsContext) {promiseCapability.resolve(rejectValue)}

        //isComplete is true
        try {
            await(jsContext) {promiseCapability.toJSValue()}
        } catch (e: BusinessException) {
            let errorMessage = e
                .message
                .toString()
            @Expect("Accessing reference [JSPromiseCapability] is beyond reach." , errorMessage)
        }
    }

    @TestCase
    func testJSPromise000() {
        let jsContext = getJSContext()
        let promiseCap = await(jsContext) {jsContext.promiseCapability()}
        let promise = await(jsContext) {
            promiseCap
                .toJSValue()
                .asPromise()
        }
        await(jsContext) {
            promise.then(
                jsContext.function {
                    _, callInfo =>
                    let result = callInfo[0]
                    @Expect(result.isBoolean())
                    @Expect(result.toBoolean())
                    jsContext
                        .undefined()
                        .toJSValue()
                }
            )
        }
        await(jsContext) {
            promiseCap.resolve(jsContext
                .boolean(true)
                .toJSValue())
        }
    }

    @TestCase
    func testJSPromise111(): Unit {
        let jsContext = getJSContext()
        let promiseCap = await(jsContext) {jsContext.promiseCapability()}
        let promise = await(jsContext) {
            promiseCap
                .toJSValue()
                .asPromise()
        }
        await(jsContext) {
            promise.then(
                jsContext.function {
                    _, callInfo =>
                    @Expect(false)
                    jsContext
                        .undefined()
                        .toJSValue()
                },
                onRejected: jsContext.function {
                    _, callInfo =>
                    let error = callInfo[0]
                    @Expect(error.isString())
                    jsContext
                        .undefined()
                        .toJSValue()
                }
            )
        }
        await(jsContext) {
            promiseCap.reject(jsContext
                .string("xxx")
                .toJSValue())
        }
    }

    @TestCase
    func testJSPromise222(): Unit {
        let jsContext = getJSContext()
        let promiseCap = await(jsContext) {jsContext.promiseCapability()}
        let promise = await(jsContext) {
            promiseCap
                .toJSValue()
                .asPromise()
        }
        await(jsContext) {
            promise.then(
                jsContext.function {
                    _, callInfo =>
                    @Expect(false)
                    jsContext
                        .undefined()
                        .toJSValue()
                }
            )
        }
        await(jsContext) {
            promise.catchError(
                jsContext.function {
                    _, callInfo =>
                    let error = callInfo[0]
                    @Expect(error.isString())
                    jsContext
                        .undefined()
                        .toJSValue()
                }
            )
        }
        await(jsContext) {
            promiseCap.reject(jsContext
                .string("xxx")
                .toJSValue())
        }
    }

    @TestCase
    func testJSPromise333(): Unit {
        let jsContext = getJSContext()
        let promise = await(jsContext) {jsContext.promiseCapability()}
        await(jsContext) {
            jsContext.postJSTask {
                promise.resolve(jsContext
                    .number(1)
                    .toJSValue()
                )
            }
        }
    }
}
