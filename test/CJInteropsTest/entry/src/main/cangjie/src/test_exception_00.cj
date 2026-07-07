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
import ohos.ark_interop.*

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
        jsObject["test_InteropType_Exception"] = jsContext.function(test_InteropType_Exception).toJSValue()
        jsObject["test_ExceptionCross"] = jsContext.function(test_ExceptionCross).toJSValue()
}

func testFromJSValueWithException<T>(context: JSContext, value: JSValue): Unit where T <: JSInteropType<T> {
    try {
        T.fromJSValue(context, value)
        Assert.isUnreachable()
    } catch (e: Exception) {}
}

func test_InteropType_Exception(context: JSContext, callInfo: JSCallInfo): JSValue {
    let i: Int64 = 0x1_0000_0000
    let value = i.toJSValue(context)

    testFromJSValueWithException<Int8>(context, value)
    testFromJSValueWithException<Int16>(context, value)
    testFromJSValueWithException<Int32>(context, value)
    testFromJSValueWithException<UInt8>(context, value)
    testFromJSValueWithException<UInt16>(context, value)
    testFromJSValueWithException<UInt32>(context, value)

    let j: Int64 = 0xFFF_FFFF_FFFF_FFFF
    try {
        j.toJSValue(context)
        Assert.isUnreachable()
    } catch (_: Exception) {}
    let u: UInt64 = 0xFFF_FFFF_FFFF_FFFF
    try {
        u.toJSValue(context)
        Assert.isUnreachable()
    } catch (_: Exception) {}
    let v = 2e30.toJSValue(context)
    let v1 = (-2e30).toJSValue(context)
    testFromJSValueWithException<Int64>(context, v)
    testFromJSValueWithException<Int64>(context, v1)
    testFromJSValueWithException<UInt64>(context, v)
    testFromJSValueWithException<UInt64>(context, v1)
    let n = (-1).toJSValue(context)
    testFromJSValueWithException<UInt8>(context, n)
    testFromJSValueWithException<UInt16>(context, n)
    testFromJSValueWithException<UInt32>(context, n)
    testFromJSValueWithException<UInt64>(context, n)

    context.undefined().toJSValue()
}

func test_ExceptionCross(context: JSContext, callInfo: JSCallInfo): JSValue {
    throw Exception("xxx")
}
