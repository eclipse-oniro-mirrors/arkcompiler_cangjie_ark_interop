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
internal import ohos.business_exception.*

@Test
class TestArray {
    func testArray00(): Unit {
        let jsContext = getJSContext()
        let array = await(jsContext) {jsContext.array()}

        @Expect(await(jsContext) {array.size}, 0)
        array[0] = await(jsContext) {
            jsContext
                .number(1.0)
                .toJSValue()
        }
        @Expect(await(jsContext) {array.size}, 1)
        let value = array[0];
        @Expect(await(jsContext) {value.isNumber()})
        @Expect(await(jsContext) {value.toNumber()}, 1.0)
        let jsNum = await(jsContext) {value.asNumber()}
        @Expect(jsNum.toFloat64(), 1.0)
    }

    @TestCase
    func testArray11(): Unit {
        let jsContext = getJSContext()
        let array = await(jsContext) {
            jsContext
                .array(
                    [
                        jsContext
                            .undefined()
                            .toJSValue(),
                        jsContext
                            .null()
                            .toJSValue(),
                        jsContext
                            .boolean(true)
                            .toJSValue()
                    ]
                )
                .toJSValue()
                .asArray()
        }
        @Expect(await(jsContext) {array.size}, 3)
        @Expect(await(jsContext) {array[0].isUndefined()})
        @Expect(await(jsContext) {array[1].isNull()})
        @Expect(await(jsContext) {array[2].isBoolean()})
        let negativeRead = try {
            let value = await(jsContext) {array[-1]}
            false
        } catch (exp: BusinessException) {
            true
        }
        @Expect(negativeRead)
        await(jsContext) {
            array[3] = jsContext
                .number(1.0)
                .toJSValue()
        }
        @Expect(await(jsContext){array.size}, 4)
        @Expect(await(jsContext){array[3].toNumber()}, 1.0)
        await(jsContext) {
            array[5] = jsContext
                .boolean(true)
                .toJSValue()
        }
        @Expect(await(jsContext){array.size}, 6)
        @Expect(await(jsContext){array[5].isBoolean()}, true)
        @Expect(await(jsContext){array[4].isUndefined()}, true)
        let negativeWrite = try {
            await(jsContext) {
                array[-1] = jsContext
                    .undefined()
                    .toJSValue()
            }
            false
        } catch (exp: BusinessException) {
            true
        }
        @Expect(negativeWrite)
    }

    @TestCase
    func testArray22(): Unit {
        let jsContext = getJSContext()
        await(jsContext) {
        let array = await(jsContext) {jsContext.array()}
        let value = await(jsContext) {array.toJSValue()}
        let negativeWrite = try {
            await(jsContext) {
                value.setElement(-1, jsContext
                    .undefined()
                    .toJSValue())
            }
            false
        } catch (_: BusinessException) {
            true
        }
        @Expect(negativeWrite)
        let negativeRead = try {
            await(jsContext) {value.getElement(-1)}
            false
        } catch (_: BusinessException) {
            true
        }
        @Expect(negativeRead)
        let positiveRead = try {
            await(jsContext) {value.getElement(0)}
            false
        } catch (_: BusinessException) {
            true
        }
        @Expect(positiveRead)
        let positiveWrite = try {
            await(jsContext) {
                value.setElement(0, jsContext
                    .undefined()
                    .toJSValue())
            }
            false
        } catch (_: BusinessException) {
            true
        }
        @Expect(positiveWrite, false)
        await(jsContext) {
            array[0] = jsContext
                .undefined()
                .toJSValue()
        }
        @Expect(await(jsContext){array.size}, 1)
        await(jsContext) {
            value.setElement(0, jsContext
                .boolean(true)
                .toJSValue())
        }
        let receivedElement0 = await(jsContext) {value.getElement(0)}
        @Expect(await(jsContext){receivedElement0.isBoolean()}, true)
        @Expect(await(jsContext){receivedElement0.toBoolean()}, true)
        }
    }

    @TestCase
    func testArray33(): Unit {
        let jsContext = getJSContext()
        await(jsContext) {
        let array = await(jsContext) {
            jsContext.array(
                [
                    jsContext
                        .number(1.0)
                        .toJSValue()
                ]
            )
        }

        @Expect(withException<Exception> {
            await(jsContext) {
                array[-1] = jsContext
                    .number(1.0)
                    .toJSValue()
            }
        })

        @Expect(withException<Exception> {
            await(jsContext) {
                let testMismatch: JSLambda = {
                    _, callInfo =>
                    var mismatchResult = jsContext.boolean(false)
                    return mismatchResult.toJSValue()
                }
                array[-1] = jsContext.function(testMismatch)
            }
        })

        let value: JSValue = await(jsContext){array[0]}
        @Expect(await(jsContext){value.toNumber()}, 1.0)
        }
    }
}
