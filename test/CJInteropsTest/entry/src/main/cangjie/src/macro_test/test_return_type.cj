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

// 返回值为Unit类型
// 空返回
@Interop[ArkTS]
public func returnTypeUnit_00(): Unit {
}

// Unit字面量
@Interop[ArkTS]
public func returnTypeUnit_01(): Unit {
    ()
}

// 函数表达式
@Interop[ArkTS]
public func returnTypeUnit_02(): Unit {
    functionThatReturnsUnit()
}

// return表达式
@Interop[ArkTS]
public func returnTypeUnit_03(): Unit {
    return
}

// return表达式
@Interop[ArkTS]
public func returnTypeUnit_04(): Unit {
    return ()
}

// 数值类型
@Interop[ArkTS]
public func returnTypeInt64_00(): Int64 {
    114514i64
}

@Interop[ArkTS]
public func returnTypeUInt64_00(): UInt64 {
    114514u64
}

@Interop[ArkTS]
public func returnTypeFloat64_00(): Float64 {
    114.514f64
}

// Bool

@Interop[ArkTS]
public func returnTypeBool_00(): Bool {
    true
}

@Interop[ArkTS]
public func returnTypeBool_01(): Bool {
    booleanValue
}

// Option
@Interop[ArkTS]
public func returnTypeOption_00(): Option<Unit> {
    None
}

@Interop[ArkTS]
public func returnTypeOption_01(): Option<Int64> {
    Some(int64Value)
}

@Interop[ArkTS]
public func returnTypeOption_02(): Option<Float64> {
    None
}

// ArrayBuffer
// empty array literal.
@Interop[ArkTS]
public func returnTypeArrayBuffer_00(): Array<Byte> {
    []
}

@Interop[ArkTS]
public func returnTypeArrayBuffer_01(): Array<Byte> {
    [1, 2, 3, 4]
}

@Interop[ArkTS]
public func returnTypeArrayBuffer_02(): Array<Byte> {
    arrayBufferValue
}

// function return type being function type.
@Interop[ArkTS]
public func returnTypeBeingFunctionType_00(): () -> Unit {
    {=>}
}

// complex function type.
@Interop[ArkTS]
public func returnTypeBeingFunctionType_01(): (((((Unit) -> Bool) -> Int64) -> Float64) -> Option<Float16>) -> Array<Byte> {
    {something => arrayBufferValue}
}
