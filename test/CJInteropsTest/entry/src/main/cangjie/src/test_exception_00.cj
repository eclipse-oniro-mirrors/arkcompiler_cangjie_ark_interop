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

import ohos.business_exception.*
import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSClass, JSObject, SharedObject, JSRuntime}

func test_throwException(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    throw Exception("message of this exception")
}

func test_JSFunction_throwException(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    jsCallInfo[0].asFunction().call()
    jsContext.undefined().toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
        jsObject["test_throwException"] = jsContext.function(test_throwException).toJSValue()
        jsObject["test_JSFunction_throwException"] = jsContext.function(test_JSFunction_throwException).toJSValue()
}
