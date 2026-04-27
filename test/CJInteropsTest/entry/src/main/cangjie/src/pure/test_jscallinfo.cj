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
import std.sync.*
import std.runtime.*
import std.unittest.testmacro.*
import std.unittest.*

@Test
class TestJSCallInfo {
    @TestCase
    func test_JSCallInfo_operatorGet_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let callback = jsContext.function {
            context, callInfo =>
                testThreadMismatch {
                    callInfo[0]
                }
                context.undefined().toJSValue()
        }
        callback.call(jsContext.number(1.0).toJSValue())
    }

    @TestCase
    func test_JSCallInfo_operatorGet_negativeIndex_throwException(): Unit {
        let jsContext = getJSContext()
        let testMismatch: JSLambda = {
            _, callInfo =>
                var mismatchResult = jsContext.boolean(false)
                try {
                    callInfo[-1]
                } catch (e: BusinessException) {
                    mismatchResult = jsContext.boolean(true)
                }
                return mismatchResult.toJSValue()
        }

        let mismatchResult = jsContext.function(testMismatch).call().asBoolean()
        @Expect(mismatchResult.toBool())
    }
}
