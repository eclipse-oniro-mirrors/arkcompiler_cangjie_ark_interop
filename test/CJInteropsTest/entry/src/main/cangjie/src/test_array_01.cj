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
import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSObject}
import std.math.MathExtension

let _ = JSModule.registerModule {
    jsContext: JSContext, jsObject: JSObject => jsObject["testArray01"] = jsContext.function(testArray01).toJSValue()
}

// js创建空array传入cj
func testArray01(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.equals(jsCallInfo.count, 1)
    Assert.isTrue(jsCallInfo[0].isArray())
    let array = jsCallInfo[0].asArray()
    Assert.equals(array.size, 5)

    // operator func [](index: Int64): JSValue
    try {
        array[Int64.Min]
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${array.size}), given: ${Int64.Min}"
        )
    }
    try {
        array[-1]
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${array.size}), given: -1"
        )
    }
    let elem_0 = array[0]
    Assert.isTrue(elem_0.isNumber())
    Assert.equals(elem_0.toNumber(), 114.514f64)
    let elem_1 = array[1]
    Assert.isTrue(elem_1.isString())
    Assert.equals(elem_1.toString(), "my love")
    let elem_2 = array[2]
    Assert.isTrue(elem_2.isUndefined())
    let elem_3 = array[3]
    Assert.isTrue(elem_3.isNull())
    let elem_4 = array[4]
    Assert.isTrue(elem_4.isBoolean())
    Assert.equals(elem_4.toBoolean(), true)

    try {
        array[array.size]
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${array.size}), given: ${array.size}"
        )
    }
    try {
        array[array.size + 1]
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${array.size}), given: ${array.size + 1}"
        )
    }

    try {
        array[Int64.Max]
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${array.size}), given: ${Int64.Max}"
        )
    }

    // operator func [](index: Int64, value!: JSValue): Unit
    try {
        array[Int64.Min] = Random.jsValue(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: ${Int64.Min}"
        )
    }
    try {
        array[-1] = Random.jsValue(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: -1"
        )
    }

    for (index in 0..array.size) {
        try {
            let jsValue = Random.jsValue(jsContext)
            array[index] = jsValue
            Assert.isTrue(array[index].typeof() == jsValue.typeof())
        } catch (e: Exception) {
            Assert.isUnreachable()
        }
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

    //     operator func [](index: Int64, value!: JSHeapObject): Unit
    try {
        array[Int64.Min] = Random.jsHeapObject(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: ${Int64.Min}"
        )
    }
    try {
        array[-1] = Random.jsHeapObject(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: -1"
        )
    }
    for (index in 0..array.size) {
        try {
            let jsHeapObject = Random.jsHeapObject(jsContext)
            array[index] = jsHeapObject
            Assert.isTrue(array[index].typeof() == jsHeapObject.toJSValue().typeof())
            array[index] = Random.jsHeapObject(jsContext)
        } catch (e: Exception) {
            Assert.isUnreachable()
        }
    }

    try {
        array[Int64.Max] = Random.jsHeapObject(jsContext)
        Assert.isUnreachable()
    } catch (e: BusinessException) {
        Assert.equals(
            e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, ${UInt32.Max}), given: ${Int64.Max}"
        )
    }
    jsContext.undefined().toJSValue()
}
