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

import ohos.ark_interop.*
import ohos.ark_interop_macro.*

@Interop[ArkTS]
public func paramBeingOfNestedOptionType_00(p0: Option<Array<Byte>>): Unit {
}

@Interop[ArkTS]
public func paramBeingOfOptionalInt64(p0: Option<Int64>): Unit {
}

@Interop[ArkTS]
public func paramBeingOfOptionalArrayBuffer(p0: Option<Array<Byte>>): Unit {
}

@Interop[ArkTS]
public func paramBeingOfOptionalUnit(p0: Option<Unit>): Unit {
}

//@Interop[ArkTS]
//public func paramBeingOfOptionalFunction_00(p0: Option<(Int32) -> Float64>): Unit {
//}

@Interop[ArkTS]
public func paramBeingOfOptionalBool(p0: Option<Bool>): Unit {
}

@Interop[ArkTS]
public func paramBeingOfOptionalFloat64(p0: Option<Float64>): Unit {
}

@Interop[ArkTS]
public func returnTypeBeingOfOptionalInt64(): Option<Int64> {
    int64Value
}

@Interop[ArkTS]
public func returnTypeBeingOfOptionalArrayBuffer(): Option<Array<Byte>> {
    arrayBufferValue
}

@Interop[ArkTS]
public func returnTypeBeingOfOptionalBool(): Option<Bool> {
    booleanValue
}

@Interop[ArkTS]
public func createOptionalNormalClass(): Option<NormalClass> {
    NormalClass(int64Value)
}

@Interop[ArkTS]
public func createOptionalNormalInterface(a: NormalInterface): Option<NormalInterface> {
    a
}
