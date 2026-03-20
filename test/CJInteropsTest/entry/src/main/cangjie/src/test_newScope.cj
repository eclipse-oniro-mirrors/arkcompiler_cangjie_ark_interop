/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
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

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSClass, JSObject, SharedObject, JSRuntime}
import ohos.base.UIThread

func testNewScope00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.isTrue(jsContext.isInBindThread())
    spawn(UIThread) {
        jsContext.newScope<Unit> {
            let str = jsContext.string("123")
            let fun = jsContext.function({context, callinfo => context.undefined().toJSValue()})
            fun.call()
        }
    }
    jsContext.undefined().toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
    jsObject["testNewScope00"] = jsContext.function(testNewScope00).toJSValue()
}
