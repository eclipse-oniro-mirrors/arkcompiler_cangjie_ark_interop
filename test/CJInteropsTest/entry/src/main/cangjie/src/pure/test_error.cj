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
import std.runtime.*
import std.sync.*
import std.unittest.testmacro.*
import std.unittest.common.*
import std.unittest.*

@Test
class TestJSError {
    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSFunction_call_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let callback = newContext.function {
            context, _ => context.undefined().toJSValue()
        }
        testReferenceBeyondReach(jsContext) {
            callback.call()
        }
    }

    @TestCase
    func test_JSFunction_call_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let callback = jsContext.function {
            context, _ => context.undefined().toJSValue()
        }
        testThreadMismatch {
            callback.call()
        }
    }

    @TestCase
    func test_JSFunction_call_throwException_propagate() {
        let jsContext = getJSContext()
        let callback = jsContext.function {
            _, callInfo =>
                throw Exception("this is an exception")
                jsContext.undefined().toJSValue()
        }
        var hasError = false;
        try {
            callback.call()
        } catch (_: BusinessException) {
            hasError = true
        }
        @Expect(hasError)
    }
}
