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
import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue}
import std.math.MathExtension

let _ = JSModule.registerModule {
    jsContext, jsObject =>
        jsObject["testArray00"] = jsContext.function(testArray00).toJSValue()
        jsObject["gcov_dump"] = jsContext.function { context, _ =>
            gcov_dump()
            context.undefined().toJSValue()
        }.toJSValue()
}

// js创建空array传入cj
func testArray00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.equals(jsCallInfo.count, 1)
    Assert.isTrue(jsCallInfo[0].isArray())
    let array = jsCallInfo[0].asArray()
    Assert.equals(array.size, 0)

    // operator func [](index: Int64): JSValue
    try {
        array[Int64.Min]
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, 0), given: -9223372036854775808"
        )
    }
    try {
        array[-1]
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(e.toString(), "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, 0), given: -1")
    }
    try {
        array[Int64.Max]
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, 0), given: 9223372036854775807"
        )
    }

    // operator func [](index: Int64, value!: JSValue): Unit
    try {
        array[Int64.Min] = Random.jsValue(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: -9223372036854775808"
        )
    }
    try {
        array[-1] = Random.jsValue(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(e.toString(), "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: -1")
    }
    try {
        array[Int64.Max] = Random.jsValue(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: ${Int64.Max}"
        )
    }

    // operator func [](index: Int64, value!: JSHeapObject): Unit
    try {
        array[Int64.Min] = Random.jsHeapObject(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: -9223372036854775808"
        )
    }
    try {
        array[-1] = Random.jsHeapObject(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(e.toString(), "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: -1")
    }
    try {
        array[Int64.Max] = Random.jsHeapObject(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: 9223372036854775807"
        )
    }
    jsContext.undefined().toJSValue()
}
