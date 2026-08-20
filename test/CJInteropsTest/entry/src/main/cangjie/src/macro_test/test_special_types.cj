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
public class CustomClass {
    public init() {}
}

@Interop[ArkTS]
public interface CustomInterface {
    func getValue(): Int64
}

@Interop[ArkTS]
public class CustomClassWithSpecialMembers {
    public var arrayByteMember: Array<Byte> = [1, 2, 3]
    public var optionIntMember: Option<Int64> = Some(42)
    public var unitMember: Unit = ()
    public var customClassMember: CustomClass = CustomClass()
    
    public init() {}
}

@Interop[ArkTS]
public func paramArrayByte(arr: Array<Byte>): Int64 {
    arr.size
}

@Interop[ArkTS]
public func returnArrayByte(): Array<Byte> {
    [10, 20, 30, 40, 50]
}

@Interop[ArkTS]
public func paramAndReturnArrayByte(arr: Array<Byte>): Array<Byte> {
    let result = Array<Byte>(arr.size + 1, repeat: 0)
    for (i in 0..arr.size) {
        result[i] = arr[i]
    }
    result[arr.size] = 99
    result
}

@Interop[ArkTS]
public func paramUnit(u: Unit): Unit {
}

@Interop[ArkTS]
public func returnUnit(): Unit {
}

@Interop[ArkTS]
public func paramOptionInt(opt: Option<Int64>): Bool {
    match (opt) {
        case Some(_) => true
        case None => false
    }
}

@Interop[ArkTS]
public func returnOptionIntSome(): Option<Int64> {
    Some(12345)
}

@Interop[ArkTS]
public func returnOptionIntNone(): Option<Int64> {
    None
}

@Interop[ArkTS]
public func paramOptionArrayByte(opt: Option<Array<Byte>>): Int64 {
    match (opt) {
        case Some(arr) => arr.size
        case None => -1
    }
}

@Interop[ArkTS]
public func returnOptionArrayByteSome(): Option<Array<Byte>> {
    let bytes: Array<Byte> = [5, 4, 3, 2, 1]
    Some(bytes)
}

@Interop[ArkTS]
public func returnOptionArrayByteNone(): Option<Array<Byte>> {
    None
}

@Interop[ArkTS]
public func paramOptionUnit(opt: Option<Unit>): Bool {
    match (opt) {
        case Some(_) => true
        case None => false
    }
}

@Interop[ArkTS]
public func returnOptionUnitSome(): Option<Unit> {
    Some(())
}

@Interop[ArkTS]
public func returnOptionUnitNone(): Option<Unit> {
    None
}

@Interop[ArkTS]
public func paramCustomClass(obj: CustomClass): CustomClass {
    obj
}

@Interop[ArkTS]
public func returnCustomClass(): CustomClass {
    CustomClass()
}

@Interop[ArkTS]
public func paramOptionCustomClass(opt: Option<CustomClass>): Option<CustomClass> {
    opt
}

@Interop[ArkTS]
public func returnOptionCustomClassSome(): Option<CustomClass> {
    Some(CustomClass())
}

@Interop[ArkTS]
public func returnOptionCustomClassNone(): Option<CustomClass> {
    None
}

@Interop[ArkTS]
public func paramCustomInterface(obj: CustomInterface): Int64 {
    obj.getValue()
}

@Interop[ArkTS]
public func paramOptionCustomInterface(opt: Option<CustomInterface>): Option<Int64> {
    match (opt) {
        case Some(obj) => Some(obj.getValue())
        case None => None
    }
}

@Interop[ArkTS]
public func returnOptionCustomInterfaceSome(obj: CustomInterface): Option<CustomInterface> {
    Some(obj)
}

@Interop[ArkTS]
public func returnOptionCustomInterfaceNone(): Option<CustomInterface> {
    None
}

@Interop[ArkTS]
public func mixedParamsBasic(
    arr: Array<Byte>,
    opt: Option<Int64>,
    u: Unit,
    obj: CustomClass
): Int64 {
    arr.size + (match (opt) {
        case Some(v) => v
        case None => 0
    })
}

@Interop[ArkTS]
public func mixedParamsWithOptions(
    optArr: Option<Array<Byte>>,
    optObj: Option<CustomClass>,
    optUnit: Option<Unit>
): Int64 {
    (match (optArr) {
        case Some(arr) => arr.size
        case None => 0
    }) + (match (optObj) {
        case Some(_) => 100
        case None => 0
    }) + (match (optUnit) {
        case Some(_) => 1
        case None => 0
    })
}