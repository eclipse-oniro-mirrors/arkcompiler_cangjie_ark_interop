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

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSObject}
import ohos.business_exception.*

let _ = JSModule.registerModule {
    jsContext: JSContext, jsObject: JSObject =>
        jsObject["test_JSArrayBuffer_toArrayBufferJSValue_throwException34300002"] = jsContext
            .function(test_JSArrayBuffer_toArrayBufferJSValue_throwException34300002)
            .toJSValue()
        jsObject["test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300002"] = jsContext
            .function(test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300002)
            .toJSValue()
        jsObject["test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300002"] = jsContext
            .function(test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300002)
            .toJSValue()
        jsObject["test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300002"] = jsContext
            .function(test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300002)
            .toJSValue()
}

func test_JSArrayBuffer_toArrayBufferJSValue_throwException34300002(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let msg = try {
        let buffer = jsCallInfo[0].asArrayBuffer()
        buffer.toArrayBufferJSValue()
        "NO_EXCEPTION"
    } catch (e: BusinessException) {
        e.message.toString()
    }
    jsContext.string(msg).toJSValue()
}

func test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300002(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let msg = try {
        let buffer = jsCallInfo[0].asArrayBuffer()
        buffer.toUInt8ArrayJSValue()
        "NO_EXCEPTION"
    } catch (e: BusinessException) {
        e.message.toString()
    }
    jsContext.string(msg).toJSValue()
}

func test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300002(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let msg = try {
        let buffer = jsCallInfo[0].asArrayBuffer()
        buffer.toUInt8ClampedArrayJSValue()
        "NO_EXCEPTION"
    } catch (e: BusinessException) {
        e.message.toString()
    }
    jsContext.string(msg).toJSValue()
}

func test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300002(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let msg = try {
        let buffer = jsCallInfo[0].asArrayBuffer()
        buffer.toInt8ArrayJSValue()
        "NO_EXCEPTION"
    } catch (e: BusinessException) {
        e.message.toString()
    }
    jsContext.string(msg).toJSValue()
}
