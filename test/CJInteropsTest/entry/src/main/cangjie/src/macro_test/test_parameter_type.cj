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

@Interop[ArkTS]
public func complexParam_00(p0: (((((Unit) -> Bool) -> Int64) -> Float64) -> Option<Float16>) -> Array<Byte>): Unit {
}

@Interop[ArkTS]
public func complexParam_01(
    p0: (((((Unit, Bool) -> Bool, Int32) -> Int64, Float32) -> Float64, Array<Byte>) -> Option<Float16>, Unit) -> Unit): Unit {
}

@Interop[ArkTS]
public func paramsOfAllKindsOfPrimitiveTypes(p0: Unit, p1: Int8, p2: Int16, p3: Int32, p4: Int64, p5: UInt8, p6: UInt16,
    p7: UInt32, p8: UInt64, p9: Float16, p10: Float32, p11: Float64): Unit {
}
