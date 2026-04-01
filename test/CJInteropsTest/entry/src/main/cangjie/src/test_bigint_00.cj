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

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSObject}
import std.math.numeric.BigInt

let _ = JSModule.registerModule {
    jsContext, jsObject =>
        jsObject["test_JSBigInt_case_00_success"] = jsContext.function(test_JSBigInt_case_00_success).toJSValue()
        jsObject["test_JSBigInt_case_01_success"] = jsContext.function(test_JSBigInt_case_01_success).toJSValue()
        jsObject["test_JSBigInt_case_02_success"] = jsContext.function(test_JSBigInt_case_02_success).toJSValue()
        jsObject["test_JSBigInt_case_03_success"] = jsContext.function(test_JSBigInt_case_03_success).toJSValue()
        jsObject["test_JSBigInt_case_04_success"] = jsContext.function(test_JSBigInt_case_04_success).toJSValue()
        jsObject["test_JSBigInt_case_05_success"] = jsContext.function(test_JSBigInt_case_05_success).toJSValue()
        jsObject["test_JSBigInt_case_06_success"] = jsContext.function(test_JSBigInt_case_06_success).toJSValue()
        jsObject["test_JSBigInt_case_07_success"] = jsContext.function(test_JSBigInt_case_07_success).toJSValue()
        jsObject["test_JSBigInt_case_08_success"] = jsContext.function(test_JSBigInt_case_08_success).toJSValue()
        jsObject["test_JSBigInt_case_09_success"] = jsContext.function(test_JSBigInt_case_09_success).toJSValue()
        jsObject["test_JSBigInt_case_10_success"] = jsContext.function(test_JSBigInt_case_10_success).toJSValue()
        jsObject["test_JSBigInt_case_11_success"] = jsContext.function(test_JSBigInt_case_11_success).toJSValue()
        jsObject["test_JSBigInt_case_12_success"] = jsContext.function(test_JSBigInt_case_12_success).toJSValue()
        jsObject["test_JSBigInt_case_13_success"] = jsContext.function(test_JSBigInt_case_13_success).toJSValue()
        jsObject["test_JSBigInt_case_14_success"] = jsContext.function(test_JSBigInt_case_14_success).toJSValue()
        jsObject["test_JSBigInt_case_15_success"] = jsContext.function(test_JSBigInt_case_15_success).toJSValue()
        jsObject["test_JSBigInt_case_16_success"] = jsContext.function(test_JSBigInt_case_16_success).toJSValue()
        jsObject["test_JSBigInt_case_17_success"] = jsContext.function(test_JSBigInt_case_17_success).toJSValue()
}

func test_JSBigInt_case_00_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.isTrue(jsCallInfo[0].isBigInt())
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_01_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    jsContext.bigint(0).toJSValue()
}

func test_JSBigInt_case_02_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsCallInfo[0].toBigInt()
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_03_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.isTrue(bigInt == BigInt(3))
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.bitLen, 2)
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_04_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_05_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    jsContext.bigint(3).toJSValue()
}

func test_JSBigInt_case_06_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_07_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, -1)
    Assert.equals(bigInt.toString(), "-9223372036854775809")
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_08_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, -1)
    Assert.equals(bigInt.toString(), "-9223372036854775808")
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_09_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, -1)
    Assert.equals(bigInt.toString(), "-9223372036854775807")
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_10_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, -1)
    Assert.equals(bigInt.toString(), "-114514")
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_11_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, -1)
    Assert.equals(bigInt.toString(), "-1")
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_12_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 0)
    Assert.equals(bigInt.toString(), "0")
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_13_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.toString(), "1")
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_14_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.toString(), "114514")
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_15_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.toString(), "9223372036854775806")
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_16_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.toString(), "9223372036854775807")
    jsContext.undefined().toJSValue()
}

func test_JSBigInt_case_17_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.toString(), "9223372036854775808")
    jsContext.undefined().toJSValue()
}
