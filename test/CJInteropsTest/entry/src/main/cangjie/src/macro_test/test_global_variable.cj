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
public class C {
    public var id: Int64 = 0
    public var name: String = ""

    public init() {}

    public init(id: Int64, name: String) {
        this.id = id
        this.name = name
    }
}

const aaa = 1.0
@Interop[ArkTS] public let globalLet: Bool = true
@Interop[ArkTS] public const globalConst0: Float64 = aaa
@Interop[ArkTS] public const globalConst1: Float64 = 2.0
@Interop[ArkTS] public var globalVar0: String = "a"
@Interop[ArkTS] public var globalVar1: Array<Byte> = [1]
@Interop[ArkTS] public var globalVar2: Option<Int64> = 1
@Interop[ArkTS] public var globalVar3: Unit = ()
@Interop[ArkTS] public var globalVar4: C = C()

// The type of the variable cannot be omitted within the `Interop` macro scope.
// @Interop[ArkTS] public let globalLet00 = true
// @Interop[ArkTS] public const globalConst00 = aaa
// @Interop[ArkTS] public var globalVar00 = "a"

// Functions to modify global variables (since ArkTS imported variables cannot be directly assigned)
@Interop[ArkTS]
public func setGlobalVar0(value: String): Unit {
    globalVar0 = value
}

@Interop[ArkTS]
public func setGlobalVar1(value: Array<Byte>): Unit {
    globalVar1 = value
}

@Interop[ArkTS]
public func setGlobalVar2(value: Option<Int64>): Unit {
    globalVar2 = value
}

@Interop[ArkTS]
public func setGlobalVar3(value: Unit): Unit {
    globalVar3 = value
}

@Interop[ArkTS]
public func setGlobalVar4(value: C): Unit {
    globalVar4 = value
}

// Test multiple modifications
@Interop[ArkTS]
public func modifyGlobalVar0MultipleTimes(): String {
    globalVar0 = "first"
    globalVar0 = "second"
    globalVar0 = "third"
    globalVar0
}

// Test modification and read in sequence
@Interop[ArkTS]
public func modifyAndReadGlobalVar2(): Option<Int64> {
    globalVar2 = 100
    let firstRead = globalVar2
    globalVar2 = 200
    let secondRead = globalVar2
    globalVar2 = (firstRead ?? 0) + (secondRead ?? 0)
    globalVar2
}

// Test that modification persists across function calls
@Interop[ArkTS]
public func incrementGlobalVar2(): Option<Int64> {
    match (globalVar2) {
        case Some(v) => globalVar2 = v + 1
        case None => globalVar2 = 1
    }
    globalVar2
}
