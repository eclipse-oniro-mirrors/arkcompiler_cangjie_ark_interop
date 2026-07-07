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
import ohos.business_exception.*

func test_JSFunction_call_globalFunction_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.equals(jsCallInfo.count, 1)
    Assert.isTrue(jsCallInfo[0].isFunction())
    let f = jsCallInfo[0].asFunction()
    let result = f.call(jsContext.number(114.514).toJSValue())
    Assert.isTrue(result.isNumber())
    Assert.equals(result.toNumber(), 115.514)
    jsContext.undefined().toJSValue()
}

func test_JSFunction_call_undefinedFunction_throwException34300002_notDefined(jsContext: JSContext,
    jsCallInfo: JSCallInfo): JSValue {
    try {
        Assert.equals(jsCallInfo.count, 1)
        Assert.isTrue(jsCallInfo[0].isFunction())
        let f = jsCallInfo[0].asFunction()
        let result = f.call(jsContext.number(114.514).toJSValue())
        Assert.isTrue(result.isNumber())
        Assert.equals(result.toNumber(), 115.514)
        Assert.isUnreachable()
    } catch (e: Exception) {
        Assert.equals(e.toString(), "xxxx")
    }
    jsContext.undefined().toJSValue()
}

func test_JSFunction_call_globalLambda_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        Assert.equals(jsCallInfo.count, 1)
        Assert.isTrue(jsCallInfo[0].isFunction())
        let f = jsCallInfo[0].asFunction()
        let result = f.call(jsContext.number(114.514).toJSValue())
        Assert.isTrue(result.isNumber())
        Assert.equals(result.toNumber(), 115.514)
    } catch (e: Exception) {
        Assert.isUnreachable()
    }
    jsContext.undefined().toJSValue()
}

func test_JSFunction_call_localLambda_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        Assert.equals(jsCallInfo.count, 1)
        Assert.isTrue(jsCallInfo[0].isFunction())
        let f = jsCallInfo[0].asFunction()
        let result = f.call(jsContext.number(114.514).toJSValue())
        Assert.isTrue(result.isNumber())
        Assert.equals(result.toNumber(), 115.514)
    } catch (e: Exception) {
        Assert.isUnreachable()
    }
    jsContext.undefined().toJSValue()
}

func test_JSFunction_call_instanceMethod_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        Assert.equals(jsCallInfo.count, 1)
        Assert.isTrue(jsCallInfo[0].isFunction())
        let f = jsCallInfo[0].asFunction()
        let result = f.call(jsContext.number(114.514).toJSValue())
        Assert.isTrue(result.isNumber())
        Assert.equals(result.toNumber(), 116.514)
    } catch (e: Exception) {
        Assert.isUnreachable()
    }
    jsContext.undefined().toJSValue()
}

func test_JSFunction_call_staticMethod_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let f = jsCallInfo[0].asFunction()
    try {
        Assert.equals(jsCallInfo.count, 1)
        Assert.isTrue(jsCallInfo[0].isFunction())
        let result = f.call(jsContext.number(114.514).toJSValue())
        Assert.isTrue(result.isNumber())
        Assert.equals(result.toNumber(), 117.514)
    } catch (e: Exception) {
        Assert.isUnreachable()
    }
    try {
        let args = Array<JSValue>(256, repeat: jsContext.undefined().toJSValue())
        f.call(args)
        Assert.isUnreachable()
    } catch (_: BusinessException) {
        // skip
    }
    jsContext.undefined().toJSValue()
}

func globalFunction_test_function_06(a: Float64): Float64 {
    a + 1.0
}

func test_JSContext_function_returnCallable_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsValue = jsContext.function {
        jsContext: JSContext, jsCallInfo: JSCallInfo =>
            Assert.equals(jsCallInfo.count, 1)
            Assert.isTrue(jsCallInfo[0].isNumber())
            let a = jsCallInfo[0].toNumber()
            let result = globalFunction_test_function_06(a)
            jsContext.number(result).toJSValue()
    }.toJSValue()
    return jsValue
}

func testJSCallInfo(context: JSContext, callInfo: JSCallInfo): JSValue {
    Assert.isTrue(callInfo[0x1_0000_0000].isUndefined())
    Array<UInt16>(0x1_0000_0000_0000, repeat: 0) // expect throw OOM here
    context.undefined().toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
        jsObject["test_JSFunction_call_globalFunction_success"] = jsContext
            .function(test_JSFunction_call_globalFunction_success)
            .toJSValue()
        jsObject["test_JSFunction_call_undefinedFunction_throwException34300002_notDefined"] = jsContext
            .function(test_JSFunction_call_undefinedFunction_throwException34300002_notDefined)
            .toJSValue()
        jsObject["test_JSFunction_call_globalLambda_success"] = jsContext
            .function(test_JSFunction_call_globalLambda_success)
            .toJSValue()
        jsObject["test_JSFunction_call_localLambda_success"] = jsContext
            .function(test_JSFunction_call_localLambda_success)
            .toJSValue()
        jsObject["test_JSFunction_call_instanceMethod_success"] = jsContext
            .function(test_JSFunction_call_instanceMethod_success)
            .toJSValue()
        jsObject["test_JSFunction_call_staticMethod_success"] = jsContext
            .function(test_JSFunction_call_staticMethod_success)
            .toJSValue()
        jsObject["test_JSContext_function_returnCallable_success"] = jsContext
            .function(test_JSContext_function_returnCallable_success)
            .toJSValue()
        jsObject["testJSCallInfo"] = jsContext.function(testJSCallInfo).toJSValue()
}
