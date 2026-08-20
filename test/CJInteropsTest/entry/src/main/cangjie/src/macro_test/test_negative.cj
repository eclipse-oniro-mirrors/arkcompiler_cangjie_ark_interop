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

package entry.macro_test

import ohos.ark_interop_macro.*
import ohos.ark_interop.*
import std.core

// Exception: Modifier only supports public
//@Interop[ArkTS]
//func functionWithoutAnyModifiers(): Unit {
//}

// Exception: Modifier only supports public
//@Interop[ArkTS]
//private func functionWithPrivateModifier(): Unit {
//}

// Exception: Modifier only supports public
//@Interop[ArkTS]
//protected func functionWithProtectedModifier(): Unit {
//}

// Exception: Modifier only supports public
//@Interop[ArkTS]
//internal func functionWithInternalModifier(): Unit {
//}

// Exception: The function parameter does not support the default value
//@Interop[ArkTS]
//public func namedParameterWithDefaultValue(p0!: Int64 = 123): Unit {
//}

// Exception: The T of the Option type does not support the Option type
//@Interop[ArkTS]
//public func paramBeingOfOptionalOption_00(p0: Option<Option<Int64>>): Unit {
//}

// Exception: The T of the Option type does not support the Option type
//@Interop[ArkTS]
//public func paramBeingOfOptionalOption_01(p0: Option<Option<Option<Option<Bool>>>>): Unit {
//}

//@Interop[ArkTS]
//public func paramBeingOfOptionalFunction_00(p0: Option<() -> Unit>): Unit {
//}

// Exception: The T of the Option type does not support the Option type
//@Interop[ArkTS]
//public func returnTypeBeingOptionalOption_00(): Option<Option<UInt64>> {
//}

// DTS2024072514899
//@Interop[ArkTS]
//public func returnTypeBeingOptionalFunction_00(): Option<() -> Bool> {
//}

// Exception: Failed to convert the type to arkts
//@Interop[ArkTS]
//public func paramTypeBeingTuple_00(p0: (Int64, Bool)): Unit {
//}

// Exception: Failed to convert the type to arkts
//@Interop[ArkTS]
//public func returnTypeBeingTuple_00(): (Int64, Unit) {
//}

// Exception: Failed to convert the type to arkts
//@Interop[ArkTS]
//public func paramTypeBeingAbnormal_00(p0: (Int64)): Unit {
//}

// Exception: Failed to convert the type to arkts
//@Interop[ArkTS]
//public func paramTypeWithPackageNameQualifier_00(p0: core.Array<Byte>): Unit {
//}

// Exception: Failed to convert the type to arkts
//@Interop[ArkTS]
//public func paramTypeWithPackageNameQualifier_01(p0: core.Array<core.Byte>): Unit {
//}

// Exception: Failed to convert the type to arkts
//@Interop[ArkTS]
//public func returnTypeWithPackageNameQualifier_00(): core.Array<core.Byte> {
//}

// Exception: Failed to convert the type to arkts
//@Interop[ArkTS, Async]
//public func returnTypeWithPackageNameQualifier_01(): core.Array<core.Byte> {
//}

// expect a plain macro 'Interop', but find an attributed one
//@Interop
//public func useInteropMacroWithoutAttrTokenList(): Unit {
//}

// Exception: Incorrect attributed macros format
//@Interop[]
//public func useInteropWithEmptyAttrTokenList(): Unit {
//}

// Exception: Only ArkTS interop is supported
//@Interop[NonExistingAttr]
//public func useInteropMacroWithNonExistingAttr_00(): Unit {
//}

// Exception: Incorrect attributed macros format
//@Interop[ArkTS, NonExistingAttr]
//public func asd(): Unit {
//}

// Exception: Incorrect attributed macros format
//@Interop[ArkTS, ArkTS, ArkTS, ArkTS]
//public func test00(): Unit {
//}

// Exception: Only ArkTS interop is supported
//@Interop[Async]
//public func test01(): Unit {
//}

// Exception: Incorrect attributed macros format
//@Interop[ArkTS, Async, Async]
//public func test02(): Unit {
//}

// Exception: Incorrect attributed macros format
//@Interop[Async, ArkTS]
//public func test03(): Unit {
//}

// Exception: Failed to convert the type to arkts
//@Interop[ArkTS]
//public func useQuestionMarkSyntacticSugarInFunctionSignature_00(p0: ?Int64): Unit {
//}

// Exception: Failed to convert the type to arkts
//@Interop[ArkTS]
//public func useQuestionMarkSyntacticSugarInFunctionSignature_01(): ????Bool {
//}

// error: Asynchronous functions do not support JSStringEx, JSArrayEx and JSHashMapEx types within the `Interop Async` macro scope.
//@Interop[ArkTS, Async]
//public func createJSStringExAsync(): JSStringEx {
//
//}

// error: Generics are not supported within the `Interop` macro scope.
//@Interop[ArkTS]
//public enum E<T> {
//    A
//}

// error: Enum parameterized constructors are not supported within the `Interop` macro scope.
//@Interop[ArkTS]
//public enum E {
//    A(Int8)
//}

// error: Enum members support only parameterless constructors within the `Interop` macro scope.
//@Interop[ArkTS]
//public enum E {
//    A
//
//    public func foo() {}
//}

// error: Modifier only supports `public` modifier within the `Interop` macro scope.
//@Interop[ArkTS]
//enum E {
//    A
//}

// error: Constructor synonymous with a previous one. Please use static functions instead.
//@Interop[ArkTS]
//public class ClassWithSynonymousCtors {
//    public init(a: Int64) {}
//
//    public init(a: Float64) {}
//}
