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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import * as lib from "libentry.so"


export default function TestTypeValue() {
  describe('TestTypeValue', () => {
    it('test_Int8_fromJSValue_success', 0, () => {
      lib.test_Int8_fromJSValue_success(32);
    })
    it('test_Int8_toString_success', 0, () => {
      lib.test_Int8_toString_success(32);
    })
    it('test_Int8_toArktsType_success', 0, () => {
      lib.test_Int8_toArktsType_success(32);
    })
    it('test_Int8_toJSValue_success', 0, () => {
      lib.test_Int8_toJSValue_success(32);
    })
    it('test_Int16_fromJSValue_success', 0, () => {
      lib.test_Int16_fromJSValue_success(32);
    })
    it('test_Int16_toString_success', 0, () => {
      lib.test_Int16_toString_success(32);
    })
    it('test_Int16_toArktsType_success', 0, () => {
      lib.test_Int16_toArktsType_success(32);
    })
    it('test_Int16_toJSValue_success', 0, () => {
      lib.test_Int16_toJSValue_success(32);
    })
    it('test_Int32_fromJSValue_success', 0, () => {
      lib.test_Int32_fromJSValue_success(32);
    })
    it('test_Int32_toString_success', 0, () => {
      lib.test_Int32_toString_success(32);
    })
    it('test_Int32_toArktsType_success', 0, () => {
      lib.test_Int32_toArktsType_success(32);
    })
    it('test_Int32_toJSValue_success', 0, () => {
      lib.test_Int32_toJSValue_success(32);
    })
    it('test_Int64_fromJSValue_success', 0, () => {
      lib.test_Int64_fromJSValue_success(32);
    })
    it('test_Int64_toString_success', 0, () => {
      lib.test_Int64_toString_success(32);
    })
    it('test_Int64_toArktsType_success', 0, () => {
      lib.test_Int64_toArktsType_success(32);
    })
    it('test_Int64_toJSValue_success', 0, () => {
      lib.test_Int64_toJSValue_success(32);
    })
    it('test_UInt8_fromJSValue_success', 0, () => {
      lib.test_UInt8_fromJSValue_success(32);
    })
    it('test_UInt8_toString_success', 0, () => {
      lib.test_UInt8_toString_success(32);
    })
    it('test_UInt8_toArktsType_success', 0, () => {
      lib.test_UInt8_toArktsType_success(32);
    })
    it('test_UInt8_toJSValue_success', 0, () => {
      lib.test_UInt8_toJSValue_success(32);
    })
    it('test_UInt16_fromJSValue_success', 0, () => {
      lib.test_UInt16_fromJSValue_success(32);
    })
    it('test_UInt16_toString_success', 0, () => {
      lib.test_UInt16_toString_success(32);
    })
    it('test_UInt16_toArktsType_success', 0, () => {
      lib.test_UInt16_toArktsType_success(32);
    })
    it('test_UInt16_toJSValue_success', 0, () => {
      lib.test_UInt16_toJSValue_success(32);
    })
    it('test_UInt32_fromJSValue_success', 0, () => {
      lib.test_UInt32_fromJSValue_success(32);
    })
    it('test_UInt32_toString_success', 0, () => {
      lib.test_UInt32_toString_success(32);
    })
    it('test_UInt32_toArktsType_success', 0, () => {
      lib.test_UInt32_toArktsType_success(32);
    })
    it('test_UInt32_toJSValue_success', 0, () => {
      lib.test_UInt32_toJSValue_success(32);
    })
    it('test_UInt64_fromJSValue_success', 0, () => {
      lib.test_UInt64_fromJSValue_success(32);
    })
    it('test_UInt64_toString_success', 0, () => {
      lib.test_UInt64_toString_success(32);
    })
    it('test_UInt64_toArktsType_success', 0, () => {
      lib.test_UInt64_toArktsType_success(32);
    })
    it('test_UInt64_toJSValue_success', 0, () => {
      lib.test_UInt64_toJSValue_success(32);
    })
    it('test_Float16_fromJSValue_success', 0, () => {
      lib.test_Float16_fromJSValue_success(32);
    })
    it('test_Float16_toString_success', 0, () => {
      lib.test_Float16_toString_success(32);
    })
    it('test_Float16_toArktsType_success', 0, () => {
      lib.test_Float16_toArktsType_success(32);
    })
    it('test_Float16_toJSValue_success', 0, () => {
      lib.test_Float16_toJSValue_success(32);
    })
    it('test_Float32_fromJSValue_success', 0, () => {
      lib.test_Float32_fromJSValue_success(32);
    })
    it('test_Float32_toString_success', 0, () => {
      lib.test_Float32_toString_success(32);
    })
    it('test_Float32_toArktsType_success', 0, () => {
      lib.test_Float32_toArktsType_success(32);
    })
    it('test_Float32_toJSValue_success', 0, () => {
      lib.test_Float32_toJSValue_success(32);
    })
    it('test_Float64_fromJSValue_success', 0, () => {
      lib.test_Float64_fromJSValue_success(32);
    })
    it('test_Float64_toString_success', 0, () => {
      lib.test_Float64_toString_success(32);
    })
    it('test_Float64_toArktsType_success', 0, () => {
      lib.test_Float64_toArktsType_success(32);
    })
    it('test_Float64_toJSValue_success', 0, () => {
      lib.test_Float64_toJSValue_success(32);
    })
    it('test_JSValue_asNumber_success', 0, () => {
      lib.test_JSValue_asNumber_success(32);
    })
    it('test_JSNumber_toFloat64_success', 0, () => {
      lib.test_JSNumber_toFloat64_success(32);
    })
    it('test_JSContext_getNapiEnv_success', 0, () => {
      lib.test_JSContext_getNapiEnv_success(0);
    })
    it('test_types_01', 0, () => {
      try {
        lib.test_types_01();
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSContext_requireSystemNativeModule_success', 0, () => {
      try {
        lib.test_JSContext_requireSystemNativeModule_success();
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_types_03', 0, () => {
      try {
        lib.test_types_03();
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_Bool_fromJSValue_success', 0, () => {
      lib.test_Bool_fromJSValue_success(true);
    })
    it('test_Bool_toString_success', 0, () => {
      lib.test_Bool_toString_success(true);
    })
    it('test_Bool_toArktsType_success', 0, () => {
      lib.test_Bool_toArktsType_success(true);
    })
    it('test_Bool_toJSValue_success', 0, () => {
      lib.test_Bool_toJSValue_success(true);
    })
    it('test_JSValue_asBoolean_success', 0, () => {
      lib.test_JSValue_asBoolean_success(true);
    })
    it('test_JSBoolean_toBool_success', 0, () => {
      lib.test_JSBoolean_toBool_success(true);
    })
    it('test_JSValue_strictEqual_success', 0, () => {
      lib.test_JSValue_strictEqual_success(true);
    })
    it('test_Unit_fromJSValue_success', 0, () => {
      lib.test_Unit_fromJSValue_success(true);
    })
    it('test_Unit_toArktsType_success', 0, () => {
      lib.test_Unit_toArktsType_success(true);
    })
    it('test_Unit_toJSValue_success', 0, () => {
      lib.test_Unit_toJSValue_success(true);
    })
    it('test_String_fromJSValue_success', 0, () => {
      try {
        lib.test_String_fromJSValue_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_String_toString_success', 0, () => {
      try {
        lib.test_String_toString_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_String_toArktsType_success', 0, () => {
      try {
        lib.test_String_toArktsType_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_String_toJSValue_success', 0, () => {
      try {
        lib.test_String_toJSValue_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSValue_asString_success', 0, () => {
      try {
        lib.test_JSValue_asString_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSValue_isSymbol_success', 0, () => {
      try {
        lib.test_JSValue_isSymbol_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSValue_isArrayBuffer_success', 0, () => {
      try {
        lib.test_JSValue_isArrayBuffer_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSContext_symbol_withDescription_success', 0, () => {
      try {
        lib.test_JSContext_symbol_withDescription_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSSymbol_description_success', 0, () => {
      try {
        lib.test_JSSymbol_description_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSContext_symbol_default_success', 0, () => {
      try {
        lib.test_JSContext_symbol_default_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSString_fromJSValue_success', 0, () => {
      try {
        lib.test_JSString_fromJSValue_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSString_log_success', 0, () => {
      try {
        lib.test_JSString_log_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSString_toArktsType_success', 0, () => {
      try {
        lib.test_JSString_toArktsType_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSString_toJSValue_success', 0, () => {
      try {
        lib.test_JSString_toJSValue_success("32");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSValue_asUndefined_success', 0, () => {
      lib.test_JSValue_asUndefined_success(undefined);
    })
    it('test_JSValue_asNumber_undefinedArg_success', 0, () => {
      lib.test_JSValue_asNumber_undefinedArg_success(undefined);
    })
    it('test_JSValue_asString_undefinedArg_success', 0, () => {
      lib.test_JSValue_asString_undefinedArg_success(undefined);
    })
    it('test_JSValue_asObject_undefinedArg_success', 0, () => {
      lib.test_JSValue_asObject_undefinedArg_success(undefined);
    })
    it('test_JSValue_asBigInt_undefinedArg_success', 0, () => {
      lib.test_JSValue_asBigInt_undefinedArg_success(undefined);
    })
    it('test_JSValue_asNull_undefinedArg_success', 0, () => {
      lib.test_JSValue_asNull_undefinedArg_success(undefined);
    })
    it('test_JSValue_asNull_success', 0, () => {
      lib.test_JSValue_asNull_success(null);
    })
    it('test_JSValue_asBoolean_nullArg_success', 0, () => {
      lib.test_JSValue_asBoolean_nullArg_success(null);
    })
    it('test_JSValue_toBoolean_nullArg_success', 0, () => {
      lib.test_JSValue_toBoolean_nullArg_success(null);
    })
    it('test_JSValue_asArray_nullArg_success', 0, () => {
      lib.test_JSValue_asArray_nullArg_success(null);
    })
    it('test_JSValue_asClass_nullArg_success', 0, () => {
      lib.test_JSValue_asClass_nullArg_success(null);
    })
    it('test_JSValue_asUndefined_nullArg_success', 0, () => {
      lib.test_JSValue_asUndefined_nullArg_success(null);
    })
    it('test_JSValue_toBigInt_nullArg_success', 0, () => {
      lib.test_JSValue_toBigInt_nullArg_success(null);
    })
    it('test_JSValue_toBigInt_bigIntArg_success', 0, () => {
      const bigInt = 123n;
      lib.test_JSValue_toBigInt_bigIntArg_success(bigInt);
    })
    it('test_JSValue_asExternal_success', 0, () => {
      const bigInt = 123n;
      lib.test_JSValue_asExternal_success(bigInt);
    })
    it('test_JSValue_asPromise_success', 0, () => {
      const bigInt = 123n;
      lib.test_JSValue_asPromise_success(bigInt);
    })
    it('test_JSValue_asSymbol_bigIntArg_success', 0, () => {
      const bigInt = 123n;
      lib.test_JSValue_asSymbol_bigIntArg_success(bigInt);
    })
    it('test_JSValue_asArrayBuffer_bigIntArg_success', 0, () => {
      const bigInt = 123n;
      lib.test_JSValue_asArrayBuffer_bigIntArg_success(bigInt);
    })
    it('test_JSValue_getElement_success', 0, () => {
      try {
        lib.test_JSValue_getElement_success(["1", "2", "3"]);
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSValue_setElement_success', 0, () => {
      try {
        lib.test_JSValue_setElement_success(["1", "2", "3"]);
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSObject_getProperty_success', 0, () => {
      try {
        lib.test_JSObject_getProperty_success("jsString");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSObject_setProperty_success', 0, () => {
      try {
        lib.test_JSObject_setProperty_success("jsString");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSContext_string_empty_success', 0, () => {
      try {
        lib.test_JSContext_string_empty_success("jsString");
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_SharedObject_external_construct_success', 0, () => {
      try {
        lib.test_SharedObject_external_construct_success(20);
      } catch (e) {
        hilog.error(0, 'WBT', `|${e.message.toString()}|`);
      }
    })
    it('test_JSInteropType_stageMode_placeholder_success', 0, () => {
      lib.test_JSInteropType_stageMode_placeholder_success("isStageMode");
    })
    it('test_JSStringEx_equal_success', 0, () => {
      lib.test_JSStringEx_equal_success("isStageMode");
    })
    it('test_JSStringEx_notEqual_success', 0, () => {
      lib.test_JSStringEx_notEqual_success("isStageMode");
    })
    it('test_JSStringEx_toString_success', 0, () => {
      lib.test_JSStringEx_toString_success("isStageMode");
    })
    it('test_JSStringEx_fromJSValue_success', 0, () => {
      lib.test_JSStringEx_fromJSValue_success("isStageMode");
    })
    it('test_JSStringEx_toArktsType_success', 0, () => {
      lib.test_JSStringEx_toArktsType_success("isStageMode");
    })
    it('test_JSStringEx_toJSValue_success', 0, () => {
      lib.test_JSStringEx_toJSValue_success("isStageMode");
    })
    it('test_JSHashMapEx_get_success', 0, () => {
      lib.test_JSHashMapEx_get_success("isStageMode");
    })
    it('test_JSHashMapEx_clone_success_1', 0, () => {
      lib.test_JSHashMapEx_clone_success_1("isStageMode");
    })
    it('test_JSHashMapEx_containsAll_success', 0, () => {
      lib.test_JSHashMapEx_containsAll_success("isStageMode");
    })
    it('test_JSHashMapEx_isEmpty_success', 0, () => {
      lib.test_JSHashMapEx_isEmpty_success("isStageMode");
    })
    it('test_JSHashMapEx_set_success', 0, () => {
      lib.test_JSHashMapEx_set_success("isStageMode");
    })
    it('test_JSHashMapEx_setAll_success_1', 0, () => {
      lib.test_JSHashMapEx_setAll_success_1("isStageMode");
    })
    it('test_JSHashMapEx_setIfAbsent_success_1', 0, () => {
      lib.test_JSHashMapEx_setIfAbsent_success_1("isStageMode");
    })
    it('test_JSHashMapEx_size_success', 0, () => {
      lib.test_JSHashMapEx_size_success("isStageMode");
    })
    it('test_JSHashMapEx_has_success', 0, () => {
      lib.test_JSHashMapEx_has_success("isStageMode");
    })
    it('test_JSHashMapEx_indexerGet_success_1', 0, () => {
      lib.test_JSHashMapEx_indexerGet_success_1("isStageMode");
    })
    it('test_JSHashMapEx_toHashMap_success_1', 0, () => {
      lib.test_JSHashMapEx_toHashMap_success_1("isStageMode");
    })
    it('test_JSHashMapEx_values_success_1', 0, () => {
      lib.test_JSHashMapEx_values_success_1("isStageMode");
    })
    it('test_JSHashMapEx_keys_success_1', 0, () => {
      lib.test_JSHashMapEx_keys_success_1("isStageMode");
    })
    it('test_JSHashMapEx_deleteAll_success_1', 0, () => {
      lib.test_JSHashMapEx_deleteAll_success_1("isStageMode");
    })
    it('test_JSHashMapEx_delete_success_1', 0, () => {
      lib.test_JSHashMapEx_delete_success_1("isStageMode");
    })
    it('test_JSHashMapEx_deleteIf_success_1', 0, () => {
      lib.test_JSHashMapEx_deleteIf_success_1("isStageMode");
    })
    it('test_JSHashMapEx_clear_success_1', 0, () => {
      lib.test_JSHashMapEx_clear_success_1("isStageMode");
    })
    it('test_JSHashMapEx_toArktsType_success_1', 0, () => {
      lib.test_JSHashMapEx_toArktsType_success_1("isStageMode");
    })
    it('test_JSHashMapEx_toJSValue_success', 0, () => {
      lib.test_JSHashMapEx_toJSValue_success("isStageMode");
    })
    it('test_JSHashMapEx_fromJSValue_success', 0, () => {
      lib.test_JSHashMapEx_fromJSValue_success("isStageMode");
    })
  })
}
