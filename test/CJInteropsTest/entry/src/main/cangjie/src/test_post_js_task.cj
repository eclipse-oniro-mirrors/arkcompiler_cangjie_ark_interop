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

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSClass, JSObject, SharedObject, JSRuntime}

func test_JSContext_isInBindThread_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.isTrue(jsContext.isInBindThread())
    spawn {
        Assert.isFalse(jsContext.isInBindThread())
    }
    jsContext.undefined().toJSValue()
}

func test_JSPromiseCapability_resolve_undefined_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let a = jsCallInfo[0].toNumber()
    let b = jsCallInfo[1].toNumber()
    let f = jsCallInfo[2].asFunction()
    let promise = jsContext.promiseCapability()
    let result = promise.toJSValue()
    promise.resolve(jsContext.undefined().toJSValue())
    //    spawn {
    //        jsContext.postJSTask {
    //            =>
    //            try {
    //                let r = f.call(jsContext.number(a).toJSValue(), jsContext.number(b).toJSValue()).toNumber()
    //                Assert.isUnreachable()
    //            } catch (e: Exception) {
    //                Assert.equals(e.toString(), "xxxx")
    //            }
    //            promise.resolve(jsContext.undefined().toJSValue())
    //        }
    //    }
    result
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
        jsObject["test_JSContext_isInBindThread_success"] = jsContext
            .function(test_JSContext_isInBindThread_success)
            .toJSValue()
        jsObject["test_JSPromiseCapability_resolve_undefined_success_1"] = jsContext
            .function(test_JSPromiseCapability_resolve_undefined_success_1)
            .toJSValue()
}
