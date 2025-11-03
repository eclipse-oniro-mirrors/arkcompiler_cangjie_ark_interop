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

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSClass, JSObject, SharedObject, 
    JSRuntime, JSBoolean, JSNumber, JSString, JSExternal, JSInteropType, JSStringEx, JSHashMapEx}
import std.collection.{ ArrayList, HashMap }

func test_types_00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_a = jsCallInfo[0]
        var int8 = Int8.fromJSValue(jsContext, jsValue_a)
        logger.info("int8: ${int8.toString()}")
        Int8.toArktsType()
        int8.toJSValue(jsContext)

        var jsValue_b = jsCallInfo[0]
        var int16 = Int16.fromJSValue(jsContext, jsValue_b)
        logger.info("int16: ${int16.toString()}")
        Int16.toArktsType()
        int16.toJSValue(jsContext)

        var jsValue_c = jsCallInfo[0]
        var int32 = Int32.fromJSValue(jsContext, jsValue_c)
        logger.info("int32: ${int32.toString()}")
        Int32.toArktsType()
        int32.toJSValue(jsContext)

        var jsValue_d = jsCallInfo[0]
        var int64 = Int64.fromJSValue(jsContext, jsValue_d)
        logger.info("int64: ${int64.toString()}")
        Int64.toArktsType()
        int64.toJSValue(jsContext)

        var jsValue_e = jsCallInfo[0]
        var uint8 = UInt8.fromJSValue(jsContext, jsValue_e)
        logger.info("uint8: ${uint8.toString()}")
        UInt8.toArktsType()
        uint8.toJSValue(jsContext)

        var jsValue_f = jsCallInfo[0]
        var uint16 = UInt16.fromJSValue(jsContext, jsValue_f)
        logger.info("uint16: ${uint16.toString()}")
        UInt16.toArktsType()
        uint16.toJSValue(jsContext)

        var jsValue_g = jsCallInfo[0]
        var uint32 = UInt32.fromJSValue(jsContext, jsValue_g)
        logger.info("uint32: ${uint32.toString()}")
        UInt32.toArktsType()
        uint32.toJSValue(jsContext)

        var jsValue_h = jsCallInfo[0]
        var uint64 = UInt64.fromJSValue(jsContext, jsValue_e)
        logger.info("uint64: ${uint64.toString()}")
        UInt64.toArktsType()
        uint64.toJSValue(jsContext)

        var float16 = Float16.fromJSValue(jsContext, jsValue_e)
        logger.info("float16: ${float16.toString()}")
        Float16.toArktsType()
        float16.toJSValue(jsContext)

        var float32 = Float32.fromJSValue(jsContext, jsValue_e)
        logger.info("float32: ${float32.toString()}")
        Float32.toArktsType()
        float32.toJSValue(jsContext)

        var float64 = Float64.fromJSValue(jsContext, jsValue_e)
        logger.info("float64: ${float64.toString()}")
        Float64.toArktsType()
        float64.toJSValue(jsContext)

        var float_a: JSNumber = jsValue_a.asNumber();
        float_a.toFloat64()

        jsContext.getNapiEnv()
    } catch (e: Exception) {
        logger.error("JSArrayRangeMisMatch: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_types_02(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        var jsValue_test = jsContext.requireSystemNativeModule("8")
    } catch (e: Exception) {
        logger.error("requireSystemNativeModule: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_types_04(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_types_04 start")
    try {
        var jsValue_a = jsCallInfo[0]
        var bool_a = Bool.fromJSValue(jsContext, jsValue_a)
        logger.info("bool_a: ${bool_a.toString()}")
        Bool.toArktsType()
        bool_a.toJSValue(jsContext)

        var bool_b: JSBoolean = jsValue_a.asBoolean();
        bool_b.toBool()

        var jsValue_b = jsCallInfo[0]
        jsValue_b.strictEqual(jsValue_a)

        var unit_a = Unit.fromJSValue(jsContext, jsValue_a)
        logger.info("unit_a: unit_a")
        Unit.toArktsType()
        unit_a.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_types_04: ${e.toString()}")
    }
    logger.info("test_types_04 end")
    jsContext.undefined().toJSValue()
}

func test_types_05(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_types_05 start")
    try {
        var jsValue_a = jsCallInfo[0]
        var string_s = String.fromJSValue(jsContext, jsValue_a)
        logger.info("jsValue_a: ${jsValue_a.toString()}")
        logger.info("string_s: ${string_s.toString()}")
        String.toArktsType()
        string_s.toJSValue(jsContext)
        jsValue_a.asString()

        var symbol = jsValue_a.isSymbol()
        logger.info("isSymbol: ${symbol.toString()}")
        var isArrayBuffer = jsValue_a.isArrayBuffer()
        logger.info("isArrayBuffer: ${isArrayBuffer.toString()}")

        var symbol_a = jsContext.symbol(description: "description")
        logger.info("symbol_a: ${symbol_a.toString()}")
        var description = symbol_a.description
        logger.info("symbol_a: ${symbol_a.description}")

        var symbol_b = jsContext.symbol()
        logger.info("symbol_b: ${symbol_b.toString()}")
        logger.info("symbol_a: ${symbol_b.description}")

        var string_a = JSString.fromJSValue(jsContext, jsValue_a)
        logger.info("jsValue_a: ${jsValue_a.toString()}")
        logger.info("string_a: ${string_a.toString()}")
        JSString.toArktsType()
        string_a.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_types_05: ${e.toString()}")
    }
    logger.info("test_types_05 end")
    jsContext.undefined().toJSValue()
}

func test_types_06(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_types_06 start")
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asUndefined()
    } catch (e: Exception) {
        logger.error("test_types_06 asUndefined: ${e.toString()}")
    }
    try {
        jsValue_a.asNumber()
    } catch (e: Exception) {
        logger.error("test_types_06 asNumber: ${e.toString()}")
    }
    try {
        jsValue_a.asString()
    } catch (e: Exception) {
        logger.error("test_types_06 asString: ${e.toString()}")
    }
    try {
        jsValue_a.asObject()
    } catch (e: Exception) {
        logger.error("test_types_06 asObject: ${e.toString()}")
    }
    try {
        jsValue_a.asBigInt()
    } catch (e: Exception) {
        logger.error("test_types_06 asBigInt: ${e.toString()}")
    }
    try {
        jsValue_a.asNull()
    } catch (e: Exception) {
        logger.error("test_types_06 asNull: ${e.toString()}")
    }
    logger.info("test_types_06 end")
    jsContext.undefined().toJSValue()
}

func test_types_07(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_types_07 start")
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.asNull()
    } catch (e: Exception) {
        logger.error("test_types_07 asNull: ${e.toString()}")
    }
    try {
        jsValue_a.asBoolean()
    } catch (e: Exception) {
        logger.error("test_types_07 asBoolean: ${e.toString()}")
    }
    try {
        jsValue_a.toBoolean()
    } catch (e: Exception) {
        logger.error("test_types_07 toBoolean: ${e.toString()}")
    }
    try {
        jsValue_a.asArray()
    } catch (e: Exception) {
        logger.error("test_types_07 asArray: ${e.toString()}")
    }
    try {
        jsValue_a.asClass()
    } catch (e: Exception) {
        logger.error("test_types_07 asClass: ${e.toString()}")
    }
    try {
        jsValue_a.asUndefined()
    } catch (e: Exception) {
        logger.error("test_types_07 asUndefined: ${e.toString()}")
    }
    try {
        jsValue_a.toBigInt()
    } catch (e: Exception) {
        logger.error("test_types_bigint_08 toBigInt: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_types_bigint_08(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_types_bigint_08 start")
    var jsValue_a = jsCallInfo[0]
    try {
        jsValue_a.toBigInt()
    } catch (e: Exception) {
        logger.error("test_types_bigint_08 toBigInt: ${e.toString()}")
    }
    try {
        jsValue_a.asExternal()
    } catch (e: Exception) {
        logger.error("test_types_bigint_08 asExternal: ${e.toString()}")
    }
    try {
        jsValue_a.asPromise()
    } catch (e: Exception) {
        logger.error("test_types_bigint_08 asPromise: ${e.toString()}")
    }
    try {
        jsValue_a.asSymbol()
    } catch (e: Exception) {
        logger.error("test_types_bigint_08 asSymbol: ${e.toString()}")
    }
    try {
        jsValue_a.asArrayBuffer()
    } catch (e: Exception) {
        logger.error("test_types_bigint_08 asArrayBuffer: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_types_09(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_types_09 start")
    try {
        var jsValue_a = jsCallInfo[0]
        var jsValue_b = jsValue_a.getElement(1)
        logger.info("jsValue_b ${jsValue_b.toString()}")
    } catch (e: Exception) {
        logger.error("test_types_09 getElement: ${e.toString()}")
    }
    try {
        logger.info("test_types_09 setElement")
        var jsValue_a = jsCallInfo[0]
        var jsValue_c = jsValue_a.getElement(1)
        logger.info("test_types_09 ${jsValue_c.toString()}")
        jsValue_a.setElement(1, jsValue_a)
    } catch (e: Exception) {
        logger.error("test_types_09 setElement: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_types_10(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_types_10 start")
    var jsValue_a = jsCallInfo[0]
    try {
        logger.info("jsValue_a.getProperty")
        var jsString: JSString = jsContext.string("jsString")
        logger.info("jsString: ${jsString.toString()}")
        jsValue_a.getProperty(jsString)
    } catch (e: Exception) {
        logger.error("test_types_10 getProperty: ${e.toString()}")
    }
    try {
        logger.info("jsValue_a.setProperty")
        var jsValue_b = jsCallInfo[0]
        var jsString: JSString = jsContext.string("jsString")
        jsValue_a.setProperty(jsString, jsValue_b)
    } catch (e: Exception) {
        logger.error("test_types_10 setProperty: ${e.toString()}")
    }
    try {
        logger.info("jsContext.string")
        var jsString: JSString = jsContext.string("")
        logger.info("jsString: ${jsString.toString()}")
    } catch (e: Exception) {
        logger.error("test_types_10 JSString: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_types_11(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_types_11 start")
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
        logger.error("test_types_11 setProperty: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_types_13(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_types_13 start")
    var jsValue_a = jsCallInfo[0]
    try {
    //        var context = arktsValueToNapiValue(jsContext.getNapiEnv(), jsValue_a)
    //        isStageMode(jsContext.getNapiEnv(), context)
    //        getContextStageMode(jsContext.getNapiEnv(), context)
    //        isStageMode(jsContext.getNapiEnv(), context)
    } catch (e: Exception) {
        logger.error("test_types_13 startTrace: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_jsStringEx_15(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_jsStringEx_15 start")
    var jsValue_a = jsCallInfo[0]
    try {
        logger.info("test_jsStringEx_15 stringEx: JSStringEx")
        var stringEx: JSStringEx = JSStringEx("test_jsStringEx_15")
        var stringEx2: JSStringEx = JSStringEx("test_jsStringEx_15")
        var bool_a = stringEx == stringEx2
        Assert.equals(bool_a, true)
        var bool_b = stringEx != stringEx2
        Assert.equals(bool_b, false)
        var string_a = stringEx.toString()
        Assert.equals(string_a, "test_jsStringEx_15")
        logger.info("test_jsStringEx_15 JSStringEx.fromJSValue")
        JSStringEx.fromJSValue(jsContext, jsValue_a)
        JSStringEx.toArktsType()
        stringEx.toJSValue(jsContext)
    } catch (e: Exception) {
        logger.error("test_jsStringEx_15 startTrace: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

func test_jsHashMap_16(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    logger.info("test_jsHashMap_16 start")
    var jsValue_a = jsCallInfo[0]
    try {
        var map_a: HashMap<String, String> = HashMap<String, String>()
        map_a.add("key1", "value1")
        var jsHashMap: JSHashMapEx<String, String> = JSHashMapEx<String, String>(map_a)
        var jsHashMap_b: JSHashMapEx<String, String> = JSHashMapEx<String, String>()
        var key_a = jsHashMap.get("key1")
        logger.info("test_jsHashMap_16 ${key_a}")
        Assert.equals(key_a, "value1")
        var jsHashMap_c = jsHashMap.clone()
        var bool_a = jsHashMap.containsAll(["key1"])
        Assert.equals(bool_a, true)
        Assert.equals(jsHashMap.isEmpty(), false)
        jsHashMap.set("key2", "value2")
        var map_b: HashMap<String, String> = HashMap<String, String>()
        map_b.add("key3", "value3")
        jsHashMap.setAll(map_b)
        var bool_b = jsHashMap.setIfAbsent("key2", "value2")
        logger.info("test_jsHashMap_16 ${bool_b}")
        Assert.equals(bool_b, false)
        Assert.equals(jsHashMap.size, 3)
        Assert.equals(jsHashMap.has("key2"), true)

        logger.info("test_jsHashMap_16 ${jsHashMap["key2"]}")
        jsHashMap.toHashMap()
        jsHashMap.values()
        jsHashMap.keys()
        jsHashMap_c.deleteAll(["key1"])
        var jsHashMap_d = jsHashMap.clone()
        jsHashMap_d.delete("key1")
        jsHashMap_d.deleteIf({key, value => return true})
        jsHashMap_b.clear()

        var type_a = JSHashMapEx<String, String>.toArktsType()
        Assert.equals(type_a, "Map")
        var jsvalue = jsHashMap.toJSValue(jsContext)
        JSHashMapEx<String, String>.fromJSValue(jsContext, jsvalue)
    } catch (e: Exception) {
        logger.error("test_jsHashMap_16 startTrace: ${e.toString()}")
    }
    jsContext.undefined().toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
    jsObject["test_types_00"] = jsContext.function(test_types_00).toJSValue()
    jsObject["test_types_02"] = jsContext.function(test_types_02).toJSValue()
    jsObject["test_types_04"] = jsContext.function(test_types_04).toJSValue()
    jsObject["test_types_05"] = jsContext.function(test_types_05).toJSValue()
    jsObject["test_types_06"] = jsContext.function(test_types_06).toJSValue()
    jsObject["test_types_07"] = jsContext.function(test_types_07).toJSValue()
    jsObject["test_types_bigint_08"] = jsContext.function(test_types_bigint_08).toJSValue()
    jsObject["test_types_09"] = jsContext.function(test_types_09).toJSValue()
    jsObject["test_types_10"] = jsContext.function(test_types_10).toJSValue()
    jsObject["test_types_11"] = jsContext.function(test_types_11).toJSValue()
    jsObject["test_types_13"] = jsContext.function(test_types_13).toJSValue()
    jsObject["test_jsStringEx_15"] = jsContext.function(test_jsStringEx_15).toJSValue()
    jsObject["test_jsHashMap_16"] = jsContext.function(test_jsHashMap_16).toJSValue()
}
