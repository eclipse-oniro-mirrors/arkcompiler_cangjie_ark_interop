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

import ohos.ark_interop.*
import std.unittest.testmacro.*
import std.unittest.common.*
import std.unittest.*

func testExceptionThrow<T>(callback: () -> Unit): Unit where T <: BusinessException {
    let isExpThrow = try {
        callback()
        false
    } catch (exp: T) {
        exp.toString()
        true
    } catch (exp: Exception) {
        println("unexpected exception: ${exp}")
        false
    }
    @Expect(isExpThrow)
}

@Test
class TestException {
    @TestCase
    func testExceptionFromJSValue() {
        let jsContext = getJSContext()

        withException<Exception> {
            await(jsContext) {
                String.fromJSValue(jsContext, jsContext
                    .null()
                    .toJSValue()
                )
            }
        }
    }

    @TestCase
    func testThreadMismatch() {
        let context = getJSContext()
        testExceptionThrow<BusinessException> {
            context.undefined()
        }
        testExceptionThrow<BusinessException> {
            context.null()
        }
        testExceptionThrow<BusinessException> {
            context.boolean(true)
        }
        testExceptionThrow<BusinessException> {
            context.number(0)
        }
        testExceptionThrow<BusinessException> {
            context.string("")
        }
    }

    @TestCase
    func testOverflow() {
        let context = getJSContext()
        await (context) {
            let src: Int32 = Int32.Max
            testExceptionThrow<BusinessException> {
                let value = src.toJSValue(context)
                Int8.fromJSValue(context, value)
            }
        }
    }

    @TestCase
    func testExceptionTypeMismatch() {
        let jsContext = getJSContext()
        await(jsContext) {
            testExceptionThrow<BusinessException> {
                jsContext
                    .number(1.0)
                    .toJSValue()
                    .asNull()
            }


            let value = jsContext
                .number(1.0)
                .toJSValue()


            testExceptionThrow<BusinessException> {
                value.asBigInt()
            }

            testExceptionThrow<BusinessException> {
                value.toBigInt()
            }

            testExceptionThrow<BusinessException> {
                value.getElement(12)
            }

            testExceptionThrow<BusinessException> {
                value.setElement(0, jsContext
                    .number(1.0)
                    .toJSValue()
                )
            }

            testExceptionThrow<BusinessException> {
                value.getProperty("a")
            }

            testExceptionThrow<BusinessException> {
                value.setProperty("b", jsContext
                    .number(2.0)
                    .toJSValue()
                )
            }

            testExceptionThrow<BusinessException> {
                value.bindObject(jsContext
                    .number(2.0)
                    .toJSValue()
                )
            }

            testExceptionThrow<BusinessException> {
                jsContext.object().toJSValue().bindObject(value)

            }

            testExceptionThrow<BusinessException> {
                value.asUndefined()
            }

            testExceptionThrow<BusinessException> {
                value.asBoolean()
            }

            testExceptionThrow<BusinessException> {
                value.asNumber()
            }

            testExceptionThrow<BusinessException> {
                value.toBoolean()
            }

            testExceptionThrow<BusinessException> {
                value.toNumber()
            }

            testExceptionThrow<BusinessException> {
                value.asString()
            }

            testExceptionThrow<BusinessException> {
                value.asObject()
            }

            testExceptionThrow<BusinessException> {
                value.asFunction()
            }

            testExceptionThrow<BusinessException> {
                value.asArray()
            }

            testExceptionThrow<BusinessException> {
                value.asClass()
            }

            testExceptionThrow<BusinessException> {
                value.asExternal()
            }

            testExceptionThrow<BusinessException> {
                value.asPromise()
            }

            testExceptionThrow<BusinessException> {
                value.asSymbol()
            }

            testExceptionThrow<BusinessException> {
                value.asArrayBuffer()
            }
        }
    }

    @TestCase
    func testExceptionOutofRange() {
        let jsContext = getJSContext()
        await(jsContext) {
            let array = jsContext.array()
            testExceptionThrow<BusinessException> {
                array[-1] = jsContext
                    .null()
                    .toJSValue()
            }
        }
    }

    @TestCase
    func testExceptionUseAfterFree() {
        let jsContext = getJSContext()
        await(jsContext) {
            let promiseCap = jsContext.promiseCapability()
            promiseCap.resolve(jsContext.null().toJSValue())
            testExceptionThrow<BusinessException> {
                    promiseCap.reject(jsContext
                        .string("xxx")
                        .toJSValue())
            }
        }

    }

    @TestCase
    func testBusinessException() {
        let jsContext = getJSContext()
        await(jsContext) {
            let jsFunc = jsContext.function { _, callInfo =>
                throw Exception("this is an exception")
            }
            testExceptionThrow<BusinessException> {
                jsFunc.call()
            }
        }
    }
}
