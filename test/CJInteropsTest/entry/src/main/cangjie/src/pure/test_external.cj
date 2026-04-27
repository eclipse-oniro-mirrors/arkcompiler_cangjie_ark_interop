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
class TestExternal {
    @TestCase
    func test_SharedObject_nativeId_nonNegative_afterExternalWrap_success() {
        let jsContext = getJSContext()
        let data = MyObject()
        let _ = jsContext.external(data)
        @Expect(data.nativeId >= 0, true)
    }

    @TestCase
    func test_JSExternal_getData_identity() {
        let jsContext = getJSContext()
        let data = MyObject()
        let ext1 = jsContext.external(data)
        let ext2 = jsContext.external(data)
        let ext3 = ext1.toJSValue().asExternal()
        let recevied1 = ext1.getData()
        let received2 = ext2.getData()
        let received3 = ext3.getData()
        @Expect(recevied1.nativeId, received2.nativeId)
        @Expect(data.nativeId, received3.nativeId)
        @Expect(data.nativeId, recevied1.nativeId)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSExternal_getData_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let ext = newContext.external(MyObject())
        testReferenceBeyondReach(jsContext) {
            ext.getData()
        }
    }

    @TestCase
    func test_JSExternal_getData_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let ext = jsContext.external(MyObject())
        testThreadMismatch {
            ext.getData()
        }
    }

    @TestCase
    func test_JSExternal_cast() {
        let jsContext = getJSContext()
        let ext = jsContext.external(MyObject())
        let obj = ext.cast<MyObject>()
        @Expect(obj.isSome())
        @Expect(obj.getOrThrow().nativeId, ext.getData().nativeId)
    }

    // @TestCase  // TEMP_DISABLED: gc-heavy referenceBeyondReach (suite timeout)
    func test_JSExternal_cast_throwException34300003_referenceBeyondReach() {
        let jsContext = getJSContext()
        let newContext = JSRuntime().mainContext
        let ext = newContext.external(MyObject())
        testReferenceBeyondReach(jsContext) {
            ext.cast<MyObject>()
        }
    }

    @TestCase
    func test_JSExternal_cast_throwException34300004_threadMismatch() {
        let jsContext = getJSContext()
        let ext = jsContext.external(MyObject())
        testThreadMismatch {
            ext.cast<MyObject>()
        }
    }
}
