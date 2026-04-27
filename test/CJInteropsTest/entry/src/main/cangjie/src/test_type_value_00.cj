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

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSClass, JSObject, SharedObject, JSRuntime, JSBoolean, 
    JSNumber, JSString, JSExternal, JSInteropType, JSStringEx, JSHashMapEx}
import std.collection.{ArrayList, HashMap}

func test_Int8_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int8 = Int8.fromJSValue(jsContext, js0)
    } catch (e: Exception) {
        logger.error("test_Int8_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int8_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int8 = Int8.fromJSValue(jsContext, js0)
        logger.info("test_Int8_toString_success: Int8: ${int8.toString()}")
    } catch (e: Exception) {
        logger.error("test_Int8_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int8_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Int8.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_Int8_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int8 = Int8.fromJSValue(jsContext, js0)
        int8.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_Int8_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int16_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int16 = Int16.fromJSValue(jsContext, js0)
    } catch (e: Exception) {
        logger.error("test_Int16_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int16_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int16 = Int16.fromJSValue(jsContext, js0)
        logger.info("test_Int16_toString_success: Int16: ${int16.toString()}")
    } catch (e: Exception) {
        logger.error("test_Int16_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int16_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Int16.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_Int16_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int16 = Int16.fromJSValue(jsContext, js0)
        int16.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_Int16_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int32_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int32 = Int32.fromJSValue(jsContext, js0)
    } catch (e: Exception) {
        logger.error("test_Int32_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int32_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int32 = Int32.fromJSValue(jsContext, js0)
        logger.info("test_Int32_toString_success: Int32: ${int32.toString()}")
    } catch (e: Exception) {
        logger.error("test_Int32_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int32_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Int32.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_Int32_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int32 = Int32.fromJSValue(jsContext, js0)
        int32.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_Int32_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int64_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int64 = Int64.fromJSValue(jsContext, js0)
    } catch (e: Exception) {
        logger.error("test_Int64_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int64_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int64 = Int64.fromJSValue(jsContext, js0)
        logger.info("test_Int64_toString_success: Int64: ${int64.toString()}")
    } catch (e: Exception) {
        logger.error("test_Int64_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Int64_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Int64.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_Int64_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var int64 = Int64.fromJSValue(jsContext, js0)
        int64.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_Int64_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt8_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var uint8 = UInt8.fromJSValue(jsContext, js0)
    } catch (e: Exception) {
        logger.error("test_UInt8_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt8_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var uint8 = UInt8.fromJSValue(jsContext, js0)
        logger.info("test_UInt8_toString_success: UInt8: ${uint8.toString()}")
    } catch (e: Exception) {
        logger.error("test_UInt8_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt8_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    UInt8.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_UInt8_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var uint8 = UInt8.fromJSValue(jsContext, js0)
        uint8.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_UInt8_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt16_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var uint16 = UInt16.fromJSValue(jsContext, js0)
    } catch (e: Exception) {
        logger.error("test_UInt16_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt16_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var uint16 = UInt16.fromJSValue(jsContext, js0)
        logger.info("test_UInt16_toString_success: UInt16: ${uint16.toString()}")
    } catch (e: Exception) {
        logger.error("test_UInt16_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt16_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    UInt16.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_UInt16_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var uint16 = UInt16.fromJSValue(jsContext, js0)
        uint16.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_UInt16_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt32_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var uint32 = UInt32.fromJSValue(jsContext, js0)
    } catch (e: Exception) {
        logger.error("test_UInt32_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt32_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var uint32 = UInt32.fromJSValue(jsContext, js0)
        logger.info("test_UInt32_toString_success: UInt32: ${uint32.toString()}")
    } catch (e: Exception) {
        logger.error("test_UInt32_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt32_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    UInt32.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_UInt32_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var uint32 = UInt32.fromJSValue(jsContext, js0)
        uint32.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_UInt32_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt64_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var uint64 = UInt64.fromJSValue(jsContext, jsE)
    } catch (e: Exception) {
        logger.error("test_UInt64_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt64_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var uint64 = UInt64.fromJSValue(jsContext, jsE)
        logger.info("test_UInt64_toString_success: UInt64: ${uint64.toString()}")
    } catch (e: Exception) {
        logger.error("test_UInt64_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_UInt64_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    UInt64.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_UInt64_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var uint64 = UInt64.fromJSValue(jsContext, jsE)
        uint64.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_UInt64_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Float16_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var float16 = Float16.fromJSValue(jsContext, jsE)
    } catch (e: Exception) {
        logger.error("test_Float16_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Float16_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var float16 = Float16.fromJSValue(jsContext, jsE)
        logger.info("test_Float16_toString_success: Float16: ${float16.toString()}")
    } catch (e: Exception) {
        logger.error("test_Float16_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Float16_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Float16.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_Float16_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var float16 = Float16.fromJSValue(jsContext, jsE)
        float16.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_Float16_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Float32_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var float32 = Float32.fromJSValue(jsContext, jsE)
    } catch (e: Exception) {
        logger.error("test_Float32_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Float32_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var float32 = Float32.fromJSValue(jsContext, jsE)
        logger.info("test_Float32_toString_success: Float32: ${float32.toString()}")
    } catch (e: Exception) {
        logger.error("test_Float32_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Float32_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Float32.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_Float32_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var float32 = Float32.fromJSValue(jsContext, jsE)
        float32.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_Float32_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Float64_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var float64 = Float64.fromJSValue(jsContext, jsE)
    } catch (e: Exception) {
        logger.error("test_Float64_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Float64_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var float64 = Float64.fromJSValue(jsContext, jsE)
        logger.info("test_Float64_toString_success: Float64: ${float64.toString()}")
    } catch (e: Exception) {
        logger.error("test_Float64_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Float64_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Float64.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_Float64_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsE = jsCallInfo[0]
        var float64 = Float64.fromJSValue(jsContext, jsE)
        float64.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_Float64_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asNumber_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var float_a: JSNumber = js0.asNumber()
    } catch (e: Exception) {
        logger.error("test_JSValue_asNumber_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSNumber_toFloat64_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var js0 = jsCallInfo[0]
        var float_a: JSNumber = js0.asNumber()
        float_a.toFloat64()
    } catch (e: Exception) {
        logger.error("test_JSNumber_toFloat64_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSContext_getNapiEnv_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        jsContext.getNapiEnv()
    } catch (e: Exception) {
        logger.error("test_JSContext_getNapiEnv_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSContext_requireSystemNativeModule_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_test = jsContext.requireSystemNativeModule("8")
    } catch (e: Exception) {
        logger.error("test_JSContext_requireSystemNativeModule_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Bool_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var bool_a = Bool.fromJSValue(jsContext, jsValue_a)
    } catch (e: Exception) {
        logger.error("test_Bool_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Bool_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var bool_a = Bool.fromJSValue(jsContext, jsValue_a)
        logger.info("test_Bool_toString_success: bool_a: ${bool_a.toString()}")
    } catch (e: Exception) {
        logger.error("test_Bool_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Bool_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Bool.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_Bool_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var bool_a = Bool.fromJSValue(jsContext, jsValue_a)
        bool_a.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_Bool_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asBoolean_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        jsValue_a.asBoolean()
        logger.info("test_JSValue_asBoolean_success: asBoolean ok")
    } catch (e: Exception) {
        logger.error("test_JSValue_asBoolean_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSBoolean_toBool_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var bool_b: JSBoolean = jsValue_a.asBoolean()
        bool_b.toBool()
    } catch (e: Exception) {
        logger.error("test_JSBoolean_toBool_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_strictEqual_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var jsValue_b = jsCallInfo[0]
        jsValue_b.strictEqual(jsValue_a)
    } catch (e: Exception) {
        logger.error("test_JSValue_strictEqual_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Unit_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var unit_a = Unit.fromJSValue(jsContext, jsValue_a)
        logger.info("test_Unit_fromJSValue_success: unit_a: unit_a")
    } catch (e: Exception) {
        logger.error("test_Unit_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_Unit_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Unit.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_Unit_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var unit_a = Unit.fromJSValue(jsContext, jsValue_a)
        unit_a.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_Unit_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_String_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var string_s = String.fromJSValue(jsContext, jsValue_a)
    } catch (e: Exception) {
        logger.error("test_String_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_String_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var string_s = String.fromJSValue(jsContext, jsValue_a)
        logger.info("test_String_toString_success: jsValue_a: ${jsValue_a.toString()}")
        logger.info("test_String_toString_success: string_s: ${string_s.toString()}")
    } catch (e: Exception) {
        logger.error("test_String_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_String_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    String.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_String_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var string_s = String.fromJSValue(jsContext, jsValue_a)
        string_s.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_String_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        jsValue_a.asString()
    } catch (e: Exception) {
        logger.error("test_JSValue_asString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_isSymbol_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var symbol = jsValue_a.isSymbol()
        logger.info("test_JSValue_isSymbol_success: isSymbol: ${symbol.toString()}")
    } catch (e: Exception) {
        logger.error("test_JSValue_isSymbol_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_isArrayBuffer_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var isArrayBuffer = jsValue_a.isArrayBuffer()
        logger.info("test_JSValue_isArrayBuffer_success: isArrayBuffer: ${isArrayBuffer.toString()}")
    } catch (e: Exception) {
        logger.error("test_JSValue_isArrayBuffer_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSContext_symbol_withDescription_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var symbol_a = jsContext.symbol(description: "description")
        logger.info("test_JSContext_symbol_withDescription_success: symbol_a: ${symbol_a.toString()}")
    } catch (e: Exception) {
        logger.error("test_JSContext_symbol_withDescription_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSSymbol_description_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var symbol_a = jsContext.symbol(description: "description")
        logger.info("test_JSSymbol_description_success: symbol_a: ${symbol_a.description}")
    } catch (e: Exception) {
        logger.error("test_JSSymbol_description_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSContext_symbol_default_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var symbol_b = jsContext.symbol()
        logger.info("test_JSContext_symbol_default_success: symbol_b: ${symbol_b.toString()}")
        logger.info("test_JSContext_symbol_default_success: symbol_a: ${symbol_b.description}")
    } catch (e: Exception) {
        logger.error("test_JSContext_symbol_default_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSString_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var string_a = JSString.fromJSValue(jsContext, jsValue_a)
    } catch (e: Exception) {
        logger.error("test_JSString_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSString_log_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var string_a = JSString.fromJSValue(jsContext, jsValue_a)
        logger.info("test_JSString_log_success: jsValue_a: ${jsValue_a.toString()}")
        logger.info("test_JSString_log_success: string_a: ${string_a.toString()}")
    } catch (e: Exception) {
        logger.error("test_JSString_log_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSString_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    JSString.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_JSString_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var string_a = JSString.fromJSValue(jsContext, jsValue_a)
        string_a.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_JSString_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asUndefined_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_JSValue_asUndefined_success start")
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asUndefined()
    } catch (e: Exception) {
        logger.error("test_JSValue_asUndefined_success: ${e.toString()}")
    }
    logger.info("test_JSValue_asUndefined_success end")
    jsContext.undefined().toJSValue()
}

func test_JSValue_asNumber_undefinedArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asNumber()
    } catch (e: Exception) {
        logger.error("test_JSValue_asNumber_undefinedArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asString_undefinedArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asString()
    } catch (e: Exception) {
        logger.error("test_JSValue_asString_undefinedArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asObject_undefinedArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asObject()
    } catch (e: Exception) {
        logger.error("test_JSValue_asObject_undefinedArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asBigInt_undefinedArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asBigInt()
    } catch (e: Exception) {
        logger.error("test_JSValue_asBigInt_undefinedArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asNull_undefinedArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asNull()
    } catch (e: Exception) {
        logger.error("test_JSValue_asNull_undefinedArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asNull_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_JSValue_asNull_success start")
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asNull()
    } catch (e: Exception) {
        logger.error("test_JSValue_asNull_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asBoolean_nullArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asBoolean()
    } catch (e: Exception) {
        logger.error("test_JSValue_asBoolean_nullArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_toBoolean_nullArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.toBoolean()
    } catch (e: Exception) {
        logger.error("test_JSValue_toBoolean_nullArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asArray_nullArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asArray()
    } catch (e: Exception) {
        logger.error("test_JSValue_asArray_nullArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asClass_nullArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asClass()
    } catch (e: Exception) {
        logger.error("test_JSValue_asClass_nullArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asUndefined_nullArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asUndefined()
    } catch (e: Exception) {
        logger.error("test_JSValue_asUndefined_nullArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_toBigInt_nullArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.toBigInt()
    } catch (e: Exception) {
        logger.error("test_JSValue_toBigInt_nullArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_toBigInt_bigIntArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_JSValue_toBigInt_bigIntArg_success start")
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.toBigInt()
    } catch (e: Exception) {
        logger.error("test_JSValue_toBigInt_bigIntArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asExternal_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asExternal()
    } catch (e: Exception) {
        logger.error("test_JSValue_asExternal_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asPromise_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asPromise()
    } catch (e: Exception) {
        logger.error("test_JSValue_asPromise_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asSymbol_bigIntArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asSymbol()
    } catch (e: Exception) {
        logger.error("test_JSValue_asSymbol_bigIntArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_asArrayBuffer_bigIntArg_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asArrayBuffer()
    } catch (e: Exception) {
        logger.error("test_JSValue_asArrayBuffer_bigIntArg_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_getElement_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_JSValue_getElement_success start")
    try {
        var jsValue_a = jsCallInfo[0]
        var jsValue_b = jsValue_a.getElement(1)
        logger.info("test_JSValue_getElement_success: jsValue_b ${jsValue_b.toString()}")
    } catch (e: Exception) {
        logger.error("test_JSValue_getElement_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSValue_setElement_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        logger.info("test_JSValue_setElement_success setElement")
        var jsValue_a = jsCallInfo[0]
        var jsValue_c = jsValue_a.getElement(1)
        logger.info("test_JSValue_setElement_success: ${jsValue_c.toString()}")
        jsValue_a.setElement(1, jsValue_a)
    } catch (e: Exception) {
        logger.error("test_JSValue_setElement_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSObject_getProperty_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_JSObject_getProperty_success start")
    var jsValue_a = jsCallInfo[0]
    try {
        logger.info("test_JSObject_getProperty_success: jsValue_a.getProperty")
        var jsString: JSString = jsContext.string("jsString")
        logger.info("test_JSObject_getProperty_success: jsString: ${jsString.toString()}")
        jsValue_a.getProperty(jsString)
    } catch (e: Exception) {
        logger.error("test_JSObject_getProperty_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSObject_setProperty_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        logger.info("test_JSObject_setProperty_success: jsValue_a.setProperty")
        var jsValue_b = jsCallInfo[0]
        var jsString: JSString = jsContext.string("jsString")
        jsValue_a.setProperty(jsString, jsValue_b)
    } catch (e: Exception) {
        logger.error("test_JSObject_setProperty_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSContext_string_empty_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        logger.info("test_JSContext_string_empty_success: jsContext.string")
        var jsString: JSString = jsContext.string("")
        logger.info("test_JSContext_string_empty_success: jsString: ${jsString.toString()}")
    } catch (e: Exception) {
        logger.error("test_JSContext_string_empty_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_SharedObject_external_construct_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_SharedObject_external_construct_success start")
    var jsValue_a = jsCallInfo[0]
    //    try {
    //        jsValue_a.getBindingObject(jsContext)
    //    } catch (e: Exception) {
    //        logger.error("test_types_11 setProperty: ${e.toString()}")
    //    }
    try {
        var jsValue_b = jsCallInfo[0]
        var sharedObject: SharedObject = SharedObject()
        var aa = sharedObject.nativeId
        var jsExternal: JSExternal = jsContext.external(sharedObject)
    //        jsValue_b.bindObject(jsContext, jsExternal.getData())
    } catch (e: Exception) {
        logger.error("test_SharedObject_external_construct_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSInteropType_stageMode_placeholder_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_JSInteropType_stageMode_placeholder_success start")
    var jsValue_a = jsCallInfo[0]
    try {
    //        var context = arktsValueToNapiValue(jsContext.getNapiEnv(), jsValue_a)
    //        isStageMode(jsContext.getNapiEnv(), context)
    //        getContextStageMode(jsContext.getNapiEnv(), context)
    //        isStageMode(jsContext.getNapiEnv(), context)
    } catch (e: Exception) {
        logger.error("test_JSInteropType_stageMode_placeholder_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSStringEx_equal_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_JSStringEx_equal_success start")
    try {
        logger.info("test_JSStringEx_equal_success stringEx: JSStringEx")
        var stringEx: JSStringEx = JSStringEx("test_jsStringEx")
        var stringEx2: JSStringEx = JSStringEx("test_jsStringEx")
        var bool_a = stringEx == stringEx2
        Assert.equals(bool_a, true)
    } catch (e: Exception) {
        logger.error("test_JSStringEx_equal_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSStringEx_notEqual_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_JSStringEx_notEqual_success start")
    try {
        var stringEx: JSStringEx = JSStringEx("test_jsStringEx")
        var stringEx2: JSStringEx = JSStringEx("test_jsStringEx")
        var bool_b = stringEx != stringEx2
        Assert.equals(bool_b, false)
    } catch (e: Exception) {
        logger.error("test_JSStringEx_notEqual_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSStringEx_toString_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        var stringEx: JSStringEx = JSStringEx("test_jsStringEx")
        var string_a = stringEx.toString()
        Assert.equals(string_a, "test_jsStringEx")
    } catch (e: Exception) {
        logger.error("test_JSStringEx_toString_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSStringEx_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        logger.info("test_JSStringEx_fromJSValue_success JSStringEx.fromJSValue")
        JSStringEx.fromJSValue(jsContext, jsValue_a)
    } catch (e: Exception) {
        logger.error("test_JSStringEx_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSStringEx_toArktsType_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    JSStringEx.toArktsType()
    jsContext.undefined().toJSValue()
}

func test_JSStringEx_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    var jsValue_a = jsCallInfo[0]
    try {
        var stringEx: JSStringEx = JSStringEx("test_jsStringEx")
        stringEx.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_JSStringEx_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_get_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_JSHashMapEx_get_success start")
    var jsValue_a = jsCallInfo[0]
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        var key_a = jsHashMap.get("key1")
        logger.info("test_JSHashMapEx_get_success: ${key_a}")
        Assert.equals(key_a, "value1")
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_get_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_clone_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        jsHashMap.clone()
        logger.info("test_JSHashMapEx_clone_success_1: cloned")
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_clone_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_containsAll_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        var bool_a = jsHashMap.containsAll(["key1"])
        Assert.equals(bool_a, true)
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_containsAll_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_isEmpty_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        Assert.equals(jsHashMap.isEmpty(), false)
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_isEmpty_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_set_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        jsHashMap.set("key2", "value2")
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_set_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_setAll_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        var map_b: HashMap<String, String> = HashMap<String, String>()
        map_b.add("key3", "value3")
        jsHashMap.setAll(map_b)
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_setAll_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_setIfAbsent_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        jsHashMap.set("key2", "value2")
        var bool_b = jsHashMap.setIfAbsent("key2", "value2")
        logger.info("test_JSHashMapEx_setIfAbsent_success_1: ${bool_b}")
        Assert.equals(bool_b, false)
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_setIfAbsent_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_size_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        map_a.add("key2", "value2")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        Assert.equals(jsHashMap.size, 2)
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_size_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_has_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        Assert.equals(jsHashMap.has("key1"), true)
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_has_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_indexerGet_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        map_a.add("key2", "value2")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        logger.info("test_JSHashMapEx_indexerGet_success_1: ${jsHashMap["key2"]}")
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_indexerGet_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_toHashMap_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        jsHashMap.toHashMap()
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_toHashMap_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_values_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        jsHashMap.values()
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_values_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_keys_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        jsHashMap.keys()
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_keys_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_deleteAll_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        var jsHashMap_c = jsHashMap.clone()
        jsHashMap_c.deleteAll(["key1"])
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_deleteAll_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_delete_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        var jsHashMap_d = jsHashMap.clone()
        jsHashMap_d.delete("key1")
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_delete_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_deleteIf_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        var jsHashMap_d = jsHashMap.clone()
        jsHashMap_d.deleteIf({key, value => return true})
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_deleteIf_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_clear_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsHashMap_b: JSHashMapEx<String, String> = JSHashMapEx<String, String>()
        jsHashMap_b.clear()
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_clear_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_toArktsType_success_1(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var type_a = JSHashMapEx<String, String>.toArktsType()
        Assert.equals(type_a, "Map")
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_toArktsType_success_1: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_toJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        jsHashMap.toJSValue(jsContext)
        logger.info("test_JSHashMapEx_toJSValue_success: toJSValue done")
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_toJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_JSHashMapEx_fromJSValue_success(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        var jsvalue = jsHashMap.toJSValue(jsContext)
        JSHashMapEx<String, String>.fromJSValue(jsContext, jsvalue)
    } catch (e: Exception) {
        logger.error("test_JSHashMapEx_fromJSValue_success: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
        jsObject["test_Int8_fromJSValue_success"] = jsContext.function(test_Int8_fromJSValue_success).toJSValue()
        jsObject["test_Int8_toString_success"] = jsContext.function(test_Int8_toString_success).toJSValue()
        jsObject["test_Int8_toArktsType_success"] = jsContext.function(test_Int8_toArktsType_success).toJSValue()
        jsObject["test_Int8_toJSValue_success"] = jsContext.function(test_Int8_toJSValue_success).toJSValue()
        jsObject["test_Int16_fromJSValue_success"] = jsContext.function(test_Int16_fromJSValue_success).toJSValue()
        jsObject["test_Int16_toString_success"] = jsContext.function(test_Int16_toString_success).toJSValue()
        jsObject["test_Int16_toArktsType_success"] = jsContext.function(test_Int16_toArktsType_success).toJSValue()
        jsObject["test_Int16_toJSValue_success"] = jsContext.function(test_Int16_toJSValue_success).toJSValue()
        jsObject["test_Int32_fromJSValue_success"] = jsContext.function(test_Int32_fromJSValue_success).toJSValue()
        jsObject["test_Int32_toString_success"] = jsContext.function(test_Int32_toString_success).toJSValue()
        jsObject["test_Int32_toArktsType_success"] = jsContext.function(test_Int32_toArktsType_success).toJSValue()
        jsObject["test_Int32_toJSValue_success"] = jsContext.function(test_Int32_toJSValue_success).toJSValue()
        jsObject["test_Int64_fromJSValue_success"] = jsContext.function(test_Int64_fromJSValue_success).toJSValue()
        jsObject["test_Int64_toString_success"] = jsContext.function(test_Int64_toString_success).toJSValue()
        jsObject["test_Int64_toArktsType_success"] = jsContext.function(test_Int64_toArktsType_success).toJSValue()
        jsObject["test_Int64_toJSValue_success"] = jsContext.function(test_Int64_toJSValue_success).toJSValue()
        jsObject["test_UInt8_fromJSValue_success"] = jsContext.function(test_UInt8_fromJSValue_success).toJSValue()
        jsObject["test_UInt8_toString_success"] = jsContext.function(test_UInt8_toString_success).toJSValue()
        jsObject["test_UInt8_toArktsType_success"] = jsContext.function(test_UInt8_toArktsType_success).toJSValue()
        jsObject["test_UInt8_toJSValue_success"] = jsContext.function(test_UInt8_toJSValue_success).toJSValue()
        jsObject["test_UInt16_fromJSValue_success"] = jsContext.function(test_UInt16_fromJSValue_success).toJSValue()
        jsObject["test_UInt16_toString_success"] = jsContext.function(test_UInt16_toString_success).toJSValue()
        jsObject["test_UInt16_toArktsType_success"] = jsContext.function(test_UInt16_toArktsType_success).toJSValue()
        jsObject["test_UInt16_toJSValue_success"] = jsContext.function(test_UInt16_toJSValue_success).toJSValue()
        jsObject["test_UInt32_fromJSValue_success"] = jsContext.function(test_UInt32_fromJSValue_success).toJSValue()
        jsObject["test_UInt32_toString_success"] = jsContext.function(test_UInt32_toString_success).toJSValue()
        jsObject["test_UInt32_toArktsType_success"] = jsContext.function(test_UInt32_toArktsType_success).toJSValue()
        jsObject["test_UInt32_toJSValue_success"] = jsContext.function(test_UInt32_toJSValue_success).toJSValue()
        jsObject["test_UInt64_fromJSValue_success"] = jsContext.function(test_UInt64_fromJSValue_success).toJSValue()
        jsObject["test_UInt64_toString_success"] = jsContext.function(test_UInt64_toString_success).toJSValue()
        jsObject["test_UInt64_toArktsType_success"] = jsContext.function(test_UInt64_toArktsType_success).toJSValue()
        jsObject["test_UInt64_toJSValue_success"] = jsContext.function(test_UInt64_toJSValue_success).toJSValue()
        jsObject["test_Float16_fromJSValue_success"] = jsContext.function(test_Float16_fromJSValue_success).toJSValue()
        jsObject["test_Float16_toString_success"] = jsContext.function(test_Float16_toString_success).toJSValue()
        jsObject["test_Float16_toArktsType_success"] = jsContext.function(test_Float16_toArktsType_success).toJSValue()
        jsObject["test_Float16_toJSValue_success"] = jsContext.function(test_Float16_toJSValue_success).toJSValue()
        jsObject["test_Float32_fromJSValue_success"] = jsContext.function(test_Float32_fromJSValue_success).toJSValue()
        jsObject["test_Float32_toString_success"] = jsContext.function(test_Float32_toString_success).toJSValue()
        jsObject["test_Float32_toArktsType_success"] = jsContext.function(test_Float32_toArktsType_success).toJSValue()
        jsObject["test_Float32_toJSValue_success"] = jsContext.function(test_Float32_toJSValue_success).toJSValue()
        jsObject["test_Float64_fromJSValue_success"] = jsContext.function(test_Float64_fromJSValue_success).toJSValue()
        jsObject["test_Float64_toString_success"] = jsContext.function(test_Float64_toString_success).toJSValue()
        jsObject["test_Float64_toArktsType_success"] = jsContext.function(test_Float64_toArktsType_success).toJSValue()
        jsObject["test_Float64_toJSValue_success"] = jsContext.function(test_Float64_toJSValue_success).toJSValue()
        jsObject["test_JSValue_asNumber_success"] = jsContext.function(test_JSValue_asNumber_success).toJSValue()
        jsObject["test_JSNumber_toFloat64_success"] = jsContext.function(test_JSNumber_toFloat64_success).toJSValue()
        jsObject["test_JSContext_getNapiEnv_success"] = jsContext
            .function(test_JSContext_getNapiEnv_success)
            .toJSValue()
        jsObject["test_JSContext_requireSystemNativeModule_success"] = jsContext
            .function(test_JSContext_requireSystemNativeModule_success)
            .toJSValue()
        jsObject["test_Bool_fromJSValue_success"] = jsContext.function(test_Bool_fromJSValue_success).toJSValue()
        jsObject["test_Bool_toString_success"] = jsContext.function(test_Bool_toString_success).toJSValue()
        jsObject["test_Bool_toArktsType_success"] = jsContext.function(test_Bool_toArktsType_success).toJSValue()
        jsObject["test_Bool_toJSValue_success"] = jsContext.function(test_Bool_toJSValue_success).toJSValue()
        jsObject["test_JSValue_asBoolean_success"] = jsContext.function(test_JSValue_asBoolean_success).toJSValue()
        jsObject["test_JSBoolean_toBool_success"] = jsContext.function(test_JSBoolean_toBool_success).toJSValue()
        jsObject["test_JSValue_strictEqual_success"] = jsContext.function(test_JSValue_strictEqual_success).toJSValue()
        jsObject["test_Unit_fromJSValue_success"] = jsContext.function(test_Unit_fromJSValue_success).toJSValue()
        jsObject["test_Unit_toArktsType_success"] = jsContext.function(test_Unit_toArktsType_success).toJSValue()
        jsObject["test_Unit_toJSValue_success"] = jsContext.function(test_Unit_toJSValue_success).toJSValue()
        jsObject["test_String_fromJSValue_success"] = jsContext.function(test_String_fromJSValue_success).toJSValue()
        jsObject["test_String_toString_success"] = jsContext.function(test_String_toString_success).toJSValue()
        jsObject["test_String_toArktsType_success"] = jsContext.function(test_String_toArktsType_success).toJSValue()
        jsObject["test_String_toJSValue_success"] = jsContext.function(test_String_toJSValue_success).toJSValue()
        jsObject["test_JSValue_asString_success"] = jsContext.function(test_JSValue_asString_success).toJSValue()
        jsObject["test_JSValue_isSymbol_success"] = jsContext.function(test_JSValue_isSymbol_success).toJSValue()
        jsObject["test_JSValue_isArrayBuffer_success"] = jsContext
            .function(test_JSValue_isArrayBuffer_success)
            .toJSValue()
        jsObject["test_JSContext_symbol_withDescription_success"] = jsContext
            .function(test_JSContext_symbol_withDescription_success)
            .toJSValue()
        jsObject["test_JSSymbol_description_success"] = jsContext
            .function(test_JSSymbol_description_success)
            .toJSValue()
        jsObject["test_JSContext_symbol_default_success"] = jsContext
            .function(test_JSContext_symbol_default_success)
            .toJSValue()
        jsObject["test_JSString_fromJSValue_success"] = jsContext
            .function(test_JSString_fromJSValue_success)
            .toJSValue()
        jsObject["test_JSString_log_success"] = jsContext.function(test_JSString_log_success).toJSValue()
        jsObject["test_JSString_toArktsType_success"] = jsContext
            .function(test_JSString_toArktsType_success)
            .toJSValue()
        jsObject["test_JSString_toJSValue_success"] = jsContext.function(test_JSString_toJSValue_success).toJSValue()
        jsObject["test_JSValue_asUndefined_success"] = jsContext.function(test_JSValue_asUndefined_success).toJSValue()
        jsObject["test_JSValue_asNumber_undefinedArg_success"] = jsContext
            .function(test_JSValue_asNumber_undefinedArg_success)
            .toJSValue()
        jsObject["test_JSValue_asString_undefinedArg_success"] = jsContext
            .function(test_JSValue_asString_undefinedArg_success)
            .toJSValue()
        jsObject["test_JSValue_asObject_undefinedArg_success"] = jsContext
            .function(test_JSValue_asObject_undefinedArg_success)
            .toJSValue()
        jsObject["test_JSValue_asBigInt_undefinedArg_success"] = jsContext
            .function(test_JSValue_asBigInt_undefinedArg_success)
            .toJSValue()
        jsObject["test_JSValue_asNull_undefinedArg_success"] = jsContext
            .function(test_JSValue_asNull_undefinedArg_success)
            .toJSValue()
        jsObject["test_JSValue_asNull_success"] = jsContext.function(test_JSValue_asNull_success).toJSValue()
        jsObject["test_JSValue_asBoolean_nullArg_success"] = jsContext
            .function(test_JSValue_asBoolean_nullArg_success)
            .toJSValue()
        jsObject["test_JSValue_toBoolean_nullArg_success"] = jsContext
            .function(test_JSValue_toBoolean_nullArg_success)
            .toJSValue()
        jsObject["test_JSValue_asArray_nullArg_success"] = jsContext
            .function(test_JSValue_asArray_nullArg_success)
            .toJSValue()
        jsObject["test_JSValue_asClass_nullArg_success"] = jsContext
            .function(test_JSValue_asClass_nullArg_success)
            .toJSValue()
        jsObject["test_JSValue_asUndefined_nullArg_success"] = jsContext
            .function(test_JSValue_asUndefined_nullArg_success)
            .toJSValue()
        jsObject["test_JSValue_toBigInt_nullArg_success"] = jsContext
            .function(test_JSValue_toBigInt_nullArg_success)
            .toJSValue()
        jsObject["test_JSValue_toBigInt_bigIntArg_success"] = jsContext
            .function(test_JSValue_toBigInt_bigIntArg_success)
            .toJSValue()
        jsObject["test_JSValue_asExternal_success"] = jsContext.function(test_JSValue_asExternal_success).toJSValue()
        jsObject["test_JSValue_asPromise_success"] = jsContext.function(test_JSValue_asPromise_success).toJSValue()
        jsObject["test_JSValue_asSymbol_bigIntArg_success"] = jsContext
            .function(test_JSValue_asSymbol_bigIntArg_success)
            .toJSValue()
        jsObject["test_JSValue_asArrayBuffer_bigIntArg_success"] = jsContext
            .function(test_JSValue_asArrayBuffer_bigIntArg_success)
            .toJSValue()
        jsObject["test_JSValue_getElement_success"] = jsContext.function(test_JSValue_getElement_success).toJSValue()
        jsObject["test_JSValue_setElement_success"] = jsContext.function(test_JSValue_setElement_success).toJSValue()
        jsObject["test_JSObject_getProperty_success"] = jsContext
            .function(test_JSObject_getProperty_success)
            .toJSValue()
        jsObject["test_JSObject_setProperty_success"] = jsContext
            .function(test_JSObject_setProperty_success)
            .toJSValue()
        jsObject["test_JSContext_string_empty_success"] = jsContext
            .function(test_JSContext_string_empty_success)
            .toJSValue()
        jsObject["test_SharedObject_external_construct_success"] = jsContext
            .function(test_SharedObject_external_construct_success)
            .toJSValue()
        jsObject["test_JSInteropType_stageMode_placeholder_success"] = jsContext
            .function(test_JSInteropType_stageMode_placeholder_success)
            .toJSValue()
        jsObject["test_JSStringEx_equal_success"] = jsContext.function(test_JSStringEx_equal_success).toJSValue()
        jsObject["test_JSStringEx_notEqual_success"] = jsContext.function(test_JSStringEx_notEqual_success).toJSValue()
        jsObject["test_JSStringEx_toString_success"] = jsContext.function(test_JSStringEx_toString_success).toJSValue()
        jsObject["test_JSStringEx_fromJSValue_success"] = jsContext
            .function(test_JSStringEx_fromJSValue_success)
            .toJSValue()
        jsObject["test_JSStringEx_toArktsType_success"] = jsContext
            .function(test_JSStringEx_toArktsType_success)
            .toJSValue()
        jsObject["test_JSStringEx_toJSValue_success"] = jsContext
            .function(test_JSStringEx_toJSValue_success)
            .toJSValue()
        jsObject["test_JSHashMapEx_get_success"] = jsContext.function(test_JSHashMapEx_get_success).toJSValue()
        jsObject["test_JSHashMapEx_clone_success_1"] = jsContext.function(test_JSHashMapEx_clone_success_1).toJSValue()
        jsObject["test_JSHashMapEx_containsAll_success"] = jsContext
            .function(test_JSHashMapEx_containsAll_success)
            .toJSValue()
        jsObject["test_JSHashMapEx_isEmpty_success"] = jsContext.function(test_JSHashMapEx_isEmpty_success).toJSValue()
        jsObject["test_JSHashMapEx_set_success"] = jsContext.function(test_JSHashMapEx_set_success).toJSValue()
        jsObject["test_JSHashMapEx_setAll_success_1"] = jsContext
            .function(test_JSHashMapEx_setAll_success_1)
            .toJSValue()
        jsObject["test_JSHashMapEx_setIfAbsent_success_1"] = jsContext
            .function(test_JSHashMapEx_setIfAbsent_success_1)
            .toJSValue()
        jsObject["test_JSHashMapEx_size_success"] = jsContext.function(test_JSHashMapEx_size_success).toJSValue()
        jsObject["test_JSHashMapEx_has_success"] = jsContext.function(test_JSHashMapEx_has_success).toJSValue()
        jsObject["test_JSHashMapEx_indexerGet_success_1"] = jsContext
            .function(test_JSHashMapEx_indexerGet_success_1)
            .toJSValue()
        jsObject["test_JSHashMapEx_toHashMap_success_1"] = jsContext
            .function(test_JSHashMapEx_toHashMap_success_1)
            .toJSValue()
        jsObject["test_JSHashMapEx_values_success_1"] = jsContext
            .function(test_JSHashMapEx_values_success_1)
            .toJSValue()
        jsObject["test_JSHashMapEx_keys_success_1"] = jsContext.function(test_JSHashMapEx_keys_success_1).toJSValue()
        jsObject["test_JSHashMapEx_deleteAll_success_1"] = jsContext
            .function(test_JSHashMapEx_deleteAll_success_1)
            .toJSValue()
        jsObject["test_JSHashMapEx_delete_success_1"] = jsContext
            .function(test_JSHashMapEx_delete_success_1)
            .toJSValue()
        jsObject["test_JSHashMapEx_deleteIf_success_1"] = jsContext
            .function(test_JSHashMapEx_deleteIf_success_1)
            .toJSValue()
        jsObject["test_JSHashMapEx_clear_success_1"] = jsContext.function(test_JSHashMapEx_clear_success_1).toJSValue()
        jsObject["test_JSHashMapEx_toArktsType_success_1"] = jsContext
            .function(test_JSHashMapEx_toArktsType_success_1)
            .toJSValue()
        jsObject["test_JSHashMapEx_toJSValue_success"] = jsContext
            .function(test_JSHashMapEx_toJSValue_success)
            .toJSValue()
        jsObject["test_JSHashMapEx_fromJSValue_success"] = jsContext
            .function(test_JSHashMapEx_fromJSValue_success)
            .toJSValue()
}
