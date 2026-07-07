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

package entry

import ohos.ark_interop.{JSValue, JSRuntime, JSContext, JSCallInfo, JSModule}

// registerClass(name, register: ClassRegister)
let _ = JSModule.registerClass("test_JSModule_registerClass_ClassPerson_success", Person.getJSClass)

func testClassException(context: JSContext, callInfo: JSCallInfo): JSValue {
    let clazz = context.clazz({ c, callInfo =>
        throw Exception("this is an exception")
    })
    try {
        clazz.new([])
        Assert.isUnreachable()
    } catch (e: Exception) {
        // do nothing
    }
    context.undefined().toJSValue()
}

let _ = JSModule.registerFunc("testClassException", testClassException)