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

package ohos_app_cangjie_entry

import ohos.ark_interop_macro.*
import ohos.ark_interop.*
import std.unittest.mock.NoneMatcher

@Interop[ArkTS]
public interface NormalInterface {
    mut prop mutableInstanceProperty: Float64
    prop ImmutableInstanceProperty: JSStringEx
    func abstractInstanceMemberFunctionWithoutDefaultImplementation(a: Int64, b: Int32): Float64
    //    func abstractOverloadedInstanceMemberFunction(): Unit
    func abstractOverloadedInstanceMemberFunction(p0: String): Unit
    //    func abstractInstanceMemberFunctionWithoutDefaultImplementation(): Unit
    func abstractInstanceMemberFunctionWithDefaultImplementation(
        p0: JSArrayEx<JSStringEx>,
        p1: JSHashMapEx<String, JSArrayEx<JSStringEx>>
    ): JSStringEx {
        JSStringEx("abc")
    }

    prop abstractImmutableInstanceMemberPropertyWithDefaultImplementation: Option<JSHashMapEx<String, JSHashMapEx<String,
        Int64>>> {
        get() {
            None
        }
    }
    mut prop abstractMutableInstanceMemberPropertyWithDefaultImplementation: Option<JSArrayEx<JSStringEx>> {
        get() {
            None
        }
        set(v) {}
    }
}

@Interop[ArkTS]
public func test(p0: JSHashMapEx<String, Int64>): Unit {
}

//public class ClassThatImplementsNormalInterface <: NormalInterface {
//}

@Interop[ArkTS]
public func checkObjectThatImplementsNormalInterface(obj: NormalInterface): Unit {
    assertEqual(obj.mutableInstanceProperty, 114514.0)
    assertEqual(obj.ImmutableInstanceProperty.toString(), "love")
    assertEqual(obj.abstractInstanceMemberFunctionWithoutDefaultImplementation(1, 2), 3.0)
    obj.mutableInstanceProperty = 66666.0
}
