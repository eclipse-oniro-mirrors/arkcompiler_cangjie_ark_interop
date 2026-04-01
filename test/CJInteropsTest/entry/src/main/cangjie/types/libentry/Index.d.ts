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

export function test_JSArray_OperatorGet_throwException_jsArrayRangeMisMatch_1<T>(array: Array<T>): void;
export function test_JSArray_OperatorSetJSValue_throwException_jsArrayRangeMisMatch_1<T>(array: Array<T>): void;
export function test_JSArray_OperatorSetJSHeapObject_throwException_jsArrayRangeMisMatch_1<T>(array: Array<T>): void;
export function test_JSArray_OperatorGet_returnExpectedValue<T>(array: Array<T>): void;
export function test_JSArray_OperatorGet_throwException_jsArrayRangeMisMatch_2<T>(array: Array<T>): void;
export function test_JSArray_OperatorSetJSValue_success_1<T>(array: Array<T>): void;
export function test_JSArray_OperatorSetJSValue_throwException_jsArrayRangeMisMatch_2<T>(array: Array<T>): void;
export function test_JSArray_OperatorSetJSHeapObject_success<T>(array: Array<T>): void;
export function test_JSArray_OperatorSetJSHeapObject_throwException_jsArrayRangeMisMatch_2<T>(array: Array<T>): void;
export function test_JSArray_OperatorSetJSValue_success_2(): Array<number | boolean>;

export function test_throwException(): void;
export function test_JSFunction_throwException(f: () => void): void;

export function test_JSFunction_call_globalFunction_success(f: (a: number) => number): void;
export function test_JSFunction_call_undefinedFunction_throwException34300002_notDefined(f: (a: number) => number): void;
export function test_JSFunction_call_globalLambda_success(f: (a: number) => number): void;
export function test_JSFunction_call_localLambda_success(f: (a: number) => number): void;
export function test_JSFunction_call_instanceMethod_success(f: (a: number) => number): void;
export function test_JSFunction_call_staticMethod_success(f: (a: number) => number): void;
export function test_JSContext_function_returnCallable_success(): (a: number) => number;

export function test_JSContext_isInBindThread_success(): void;
export function test_JSPromiseCapability_resolve_undefined_success_1(
    a: number,
    b: number,
    f: (a: number, b: number) => number
): Promise<number>;

export function test_JSCallInfo_operatorGet_toString_returnExpectedValue(s: string): void;
export function test_JSPromise_then_onFulfilled_success_1(promise: Promise<number>): void;
export function test_JSPromise_then_onRejected_success_1(promise: Promise<number>): void;
export function test_JSPromiseCapability_resolve_success_1(): Promise<string>;
export function test_JSPromiseCapability_reject_thenRejected_success_1(): Promise<string>;
export function test_JSPromiseCapability_reject_success_1(): Promise<string>;
export function test_JSPromise_catchError_success_1(src: Promise<void>): Promise<number>;

export function test_JSPromise_then_onFulfilled_success_2(promise: Promise<number>): void;
export function test_JSPromise_then_onRejected_success_2(promise: Promise<number>): void;
export function test_JSPromiseCapability_resolve_success_2(): Promise<string>;
export function test_JSPromiseCapability_reject_thenRejected_success_2(): Promise<string>;
export function test_JSPromiseCapability_reject_success_2(): Promise<string>;
export function test_JSPromise_catchError_success_2(src: Promise<void>): Promise<number>;
export function test_JSPromiseCapability_resolve_undefined_success_2(): Promise<void>;

export function test_JSBigInt_case_00_success(bigInt: bigint): void;
export function test_JSBigInt_case_01_success(): bigint;
export function test_JSBigInt_case_02_success(bigInt: bigint): void;
export function test_JSBigInt_case_03_success(bigInt: bigint): void;
export function test_JSBigInt_case_04_success(bigInt: bigint): void;
export function test_JSBigInt_case_05_success(): bigint;
export function test_JSBigInt_case_06_success(bigInt: bigint): void;
export function test_JSBigInt_case_07_success(bigInt: bigint): void;
export function test_JSBigInt_case_08_success(bigInt: bigint): void;
export function test_JSBigInt_case_09_success(bigInt: bigint): void;
export function test_JSBigInt_case_10_success(bigInt: bigint): void;
export function test_JSBigInt_case_11_success(bigInt: bigint): void;
export function test_JSBigInt_case_12_success(bigInt: bigint): void;
export function test_JSBigInt_case_13_success(bigInt: bigint): void;
export function test_JSBigInt_case_14_success(bigInt: bigint): void;
export function test_JSBigInt_case_15_success(bigInt: bigint): void;
export function test_JSBigInt_case_16_success(bigInt: bigint): void;
export function test_JSBigInt_case_17_success(bigInt: bigint): void;

export function test_external_00_success(o: MyObject_test_external_00): void;
export class MyObject_test_external_00 {
    name: string;
    age: number;
    grade: number;

    constructor(name: string, age: number, grade: number)
}
export function gcov_dump(): void
export function test_JSRuntime_mainContext_success(): void
export function test_JSModule_registerFunc_afterStaticInit_success(): void;
export function test_JSModule_registerFunc_afterStaticInit_registeredFunc(): void;

export interface IPerson {
    name: string;
    age: number;
}
export class test_JSModule_registerClass_ClassPerson_success {
    name: string;
    age: number;
    constructor(name: string, age: number);
}

export function test_JSModule_registerFunc_JSLambda_success(): string;
export function test_JSModule_registerFunc_FuncRegister_success(): string;

export const test_JSModule_registerModule_exportUndefined_success: undefined;
export const test_JSModule_registerModule_exportNull_success: null;
export const test_JSModule_registerModule_exportBoolean_success: boolean;
export const test_JSModule_registerModule_exportNumber_success: number;
export const test_JSModule_registerModule_exportString_success: string;
export const test_JSModule_registerModule_exportFuncAddTwoNumbers_success: (a: number, b: number) => number;
export class test_JSModule_registerModule_exportClassPerson_success {
    name: string;
    age: number;
    gender: string;
    constructor(name: string, age: number);
}
export const test_JSModule_registerModule_exportSymbol_success: Symbol;
export const test_JSModule_registerModule_exportArray_success: Array<number | boolean>
export const test_JSModule_registerModule_exportPlainObject_success: object;
export const test_JSModule_registerModule_exportBigInt_success: bigint;
export const test_JSModule_registerModule_exportArrayBuffer_success: ArrayBuffer;
export const test_JSModule_registerModule_exportExternal_success: object;

export function test_JSModule_registerFunc_repeatedRegister_lastWins_success(): number;
export const test_JSModule_registerModule_overridesRegisterFunc_success: number;

export function test_Int8_fromJSValue_success(a: number): void;
export function test_Int8_toString_success(a: number): void;
export function test_Int8_toArktsType_success(a: number): void;
export function test_Int8_toJSValue_success(a: number): void;
export function test_Int16_fromJSValue_success(a: number): void;
export function test_Int16_toString_success(a: number): void;
export function test_Int16_toArktsType_success(a: number): void;
export function test_Int16_toJSValue_success(a: number): void;
export function test_Int32_fromJSValue_success(a: number): void;
export function test_Int32_toString_success(a: number): void;
export function test_Int32_toArktsType_success(a: number): void;
export function test_Int32_toJSValue_success(a: number): void;
export function test_Int64_fromJSValue_success(a: number): void;
export function test_Int64_toString_success(a: number): void;
export function test_Int64_toArktsType_success(a: number): void;
export function test_Int64_toJSValue_success(a: number): void;
export function test_UInt8_fromJSValue_success(a: number): void;
export function test_UInt8_toString_success(a: number): void;
export function test_UInt8_toArktsType_success(a: number): void;
export function test_UInt8_toJSValue_success(a: number): void;
export function test_UInt16_fromJSValue_success(a: number): void;
export function test_UInt16_toString_success(a: number): void;
export function test_UInt16_toArktsType_success(a: number): void;
export function test_UInt16_toJSValue_success(a: number): void;
export function test_UInt32_fromJSValue_success(a: number): void;
export function test_UInt32_toString_success(a: number): void;
export function test_UInt32_toArktsType_success(a: number): void;
export function test_UInt32_toJSValue_success(a: number): void;
export function test_UInt64_fromJSValue_success(a: number): void;
export function test_UInt64_toString_success(a: number): void;
export function test_UInt64_toArktsType_success(a: number): void;
export function test_UInt64_toJSValue_success(a: number): void;
export function test_Float16_fromJSValue_success(a: number): void;
export function test_Float16_toString_success(a: number): void;
export function test_Float16_toArktsType_success(a: number): void;
export function test_Float16_toJSValue_success(a: number): void;
export function test_Float32_fromJSValue_success(a: number): void;
export function test_Float32_toString_success(a: number): void;
export function test_Float32_toArktsType_success(a: number): void;
export function test_Float32_toJSValue_success(a: number): void;
export function test_Float64_fromJSValue_success(a: number): void;
export function test_Float64_toString_success(a: number): void;
export function test_Float64_toArktsType_success(a: number): void;
export function test_Float64_toJSValue_success(a: number): void;
export function test_JSValue_asNumber_success(a: number): void;
export function test_JSNumber_toFloat64_success(a: number): void;
export function test_JSContext_getNapiEnv_success(a: number): void;
export function test_JSContext_requireSystemNativeModule_success(): void;
export function test_Bool_fromJSValue_success(b: boolean): void;
export function test_Bool_toString_success(b: boolean): void;
export function test_Bool_toArktsType_success(b: boolean): void;
export function test_Bool_toJSValue_success(b: boolean): void;
export function test_JSValue_asBoolean_success(b: boolean): void;
export function test_JSBoolean_toBool_success(b: boolean): void;
export function test_JSValue_strictEqual_success(b: boolean): void;
export function test_Unit_fromJSValue_success(b: boolean): void;
export function test_Unit_toArktsType_success(b: boolean): void;
export function test_Unit_toJSValue_success(b: boolean): void;
export function test_String_fromJSValue_success(c: string): void;
export function test_String_toString_success(c: string): void;
export function test_String_toArktsType_success(c: string): void;
export function test_String_toJSValue_success(c: string): void;
export function test_JSValue_asString_success(c: string): void;
export function test_JSValue_isSymbol_success(c: string): void;
export function test_JSValue_isArrayBuffer_success(c: string): void;
export function test_JSContext_symbol_withDescription_success(c: string): void;
export function test_JSSymbol_description_success(c: string): void;
export function test_JSContext_symbol_default_success(c: string): void;
export function test_JSString_fromJSValue_success(c: string): void;
export function test_JSString_log_success(c: string): void;
export function test_JSString_toArktsType_success(c: string): void;
export function test_JSString_toJSValue_success(c: string): void;
export function test_JSValue_asUndefined_success(c: undefined): void;
export function test_JSValue_asNumber_undefinedArg_success(c: undefined): void;
export function test_JSValue_asString_undefinedArg_success(c: undefined): void;
export function test_JSValue_asObject_undefinedArg_success(c: undefined): void;
export function test_JSValue_asBigInt_undefinedArg_success(c: undefined): void;
export function test_JSValue_asNull_undefinedArg_success(c: undefined): void;
export function test_JSValue_asNull_success(c: null): void;
export function test_JSValue_asBoolean_nullArg_success(c: null): void;
export function test_JSValue_toBoolean_nullArg_success(c: null): void;
export function test_JSValue_asArray_nullArg_success(c: null): void;
export function test_JSValue_asClass_nullArg_success(c: null): void;
export function test_JSValue_asUndefined_nullArg_success(c: null): void;
export function test_JSValue_toBigInt_nullArg_success(c: null): void;
export function test_JSValue_toBigInt_bigIntArg_success(bigInt: bigint): void;
export function test_JSValue_asExternal_success(bigInt: bigint): void;
export function test_JSValue_asPromise_success(bigInt: bigint): void;
export function test_JSValue_asSymbol_bigIntArg_success(bigInt: bigint): void;
export function test_JSValue_asArrayBuffer_bigIntArg_success(bigInt: bigint): void;
export function test_JSValue_getElement_success(a: Array<string>): void;
export function test_JSValue_setElement_success(a: Array<string>): void;
export function test_JSObject_getProperty_success(c: string): void;
export function test_JSObject_setProperty_success(c: string): void;
export function test_JSContext_string_empty_success(c: string): void;
export function test_SharedObject_external_construct_success(a: number): void;
export function test_JSInteropType_stageMode_placeholder_success(c: string): void;
export function test_types_01(): void;
export function test_types_03(): void;
export function test_types_12(): void;
export function test_jsCurrent(c: string): void;
export function test_JSStringEx_equal_success(c: string): void;
export function test_JSStringEx_notEqual_success(c: string): void;
export function test_JSStringEx_toString_success(c: string): void;
export function test_JSStringEx_fromJSValue_success(c: string): void;
export function test_JSStringEx_toArktsType_success(c: string): void;
export function test_JSStringEx_toJSValue_success(c: string): void;
export function test_JSHashMapEx_get_success(c: string): void;
export function test_JSHashMapEx_clone_success_1(c: string): void;
export function test_JSHashMapEx_containsAll_success(c: string): void;
export function test_JSHashMapEx_isEmpty_success(c: string): void;
export function test_JSHashMapEx_set_success(c: string): void;
export function test_JSHashMapEx_setAll_success_1(c: string): void;
export function test_JSHashMapEx_setIfAbsent_success_1(c: string): void;
export function test_JSHashMapEx_size_success(c: string): void;
export function test_JSHashMapEx_has_success(c: string): void;
export function test_JSHashMapEx_indexerGet_success_1(c: string): void;
export function test_JSHashMapEx_toHashMap_success_1(c: string): void;
export function test_JSHashMapEx_values_success_1(c: string): void;
export function test_JSHashMapEx_keys_success_1(c: string): void;
export function test_JSHashMapEx_deleteAll_success_1(c: string): void;
export function test_JSHashMapEx_delete_success_1(c: string): void;
export function test_JSHashMapEx_deleteIf_success_1(c: string): void;
export function test_JSHashMapEx_clear_success_1(c: string): void;
export function test_JSHashMapEx_toArktsType_success_1(c: string): void;
export function test_JSHashMapEx_toJSValue_success(c: string): void;
export function test_JSHashMapEx_fromJSValue_success(c: string): void;
export function test_JSContext_requireArkModule_success(src: string): Object;
export function test_JSContext_newScope_fixMemoryLeak_success(): Promise<boolean>
export function test_JSContext_newScope_throwException_referenceBeyondReach(): Promise<string>
export function test_JSContext_newScope_throwException_threadMismatch(): string
export function test_mixedStack_asClass_throwException34300005(callback: (c: ()=>void)=>void): void
export function test_mixedStack_nestedCall_propagateArkTsError_success(callback: (c: (c: ()=>void)=>void)=>void): void
export function test_mixedStack_caughtException_identityMismatch_success(callback: (c: ()=>void)=>void): boolean
export function test_mixedStack_stackTrace_noEtsFrame_success(callback: (c: ()=>void)=>void): boolean

export function test_JSArrayBuffer_toArrayBufferJSValue_throwException34300002(array: Uint8Array): string
export function test_JSArrayBuffer_toUInt8ArrayJSValue_throwException34300002(array: Uint16Array): string
export function test_JSArrayBuffer_toUInt8ClampedArrayJSValue_throwException34300002(array: Uint16Array): string
export function test_JSArrayBuffer_toInt8ArrayJSValue_throwException34300002(array: Uint16Array): string