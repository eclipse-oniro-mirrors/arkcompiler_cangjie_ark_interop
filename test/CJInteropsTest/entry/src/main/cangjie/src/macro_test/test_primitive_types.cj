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

package entry.macro_test

import ohos.ark_interop_macro.*
import ohos.ark_interop.*

@Interop[ArkTS]
public func returnInt8(): Int8 {
    127i8
}

@Interop[ArkTS]
public func returnInt16(): Int16 {
    32767i16
}

@Interop[ArkTS]
public func returnInt32(): Int32 {
    2147483647i32
}

@Interop[ArkTS]
public func returnUInt8(): UInt8 {
    255u8
}

@Interop[ArkTS]
public func returnUInt16(): UInt16 {
    65535u16
}

@Interop[ArkTS]
public func returnUInt32(): UInt32 {
    4294967295u32
}

@Interop[ArkTS]
public func returnFloat16(): Float16 {
    3.14f16
}

@Interop[ArkTS]
public func returnFloat32(): Float32 {
    3.14159f32
}

@Interop[ArkTS]
public func paramInt8(v: Int8): Int8 {
    v
}

@Interop[ArkTS]
public func paramInt16(v: Int16): Int16 {
    v
}

@Interop[ArkTS]
public func paramInt32(v: Int32): Int32 {
    v
}

@Interop[ArkTS]
public func paramInt64(v: Int64): Int64 {
    v
}

@Interop[ArkTS]
public func paramUInt8(v: UInt8): UInt8 {
    v
}

@Interop[ArkTS]
public func paramUInt16(v: UInt16): UInt16 {
    v
}

@Interop[ArkTS]
public func paramUInt32(v: UInt32): UInt32 {
    v
}

@Interop[ArkTS]
public func paramUInt64(v: UInt64): UInt64 {
    v
}

@Interop[ArkTS]
public func paramFloat16(v: Float16): Float16 {
    v
}

@Interop[ArkTS]
public func paramFloat32(v: Float32): Float32 {
    v
}

@Interop[ArkTS]
public func paramFloat64(v: Float64): Float64 {
    v
}

@Interop[ArkTS]
public func paramString(v: String): String {
    v
}

@Interop[ArkTS]
public func paramBool(v: Bool): Bool {
    v
}