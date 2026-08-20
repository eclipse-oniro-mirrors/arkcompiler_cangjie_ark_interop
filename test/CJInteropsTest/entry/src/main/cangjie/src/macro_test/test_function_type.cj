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
public func simpleFunctionParam(f: () -> Unit): Unit {
    f()
}

@Interop[ArkTS]
public func simpleFunctionReturn(): () -> Unit {
    {=>}
}

@Interop[ArkTS]
public func functionWithParams(f: (Int64, Bool) -> String): String {
    f(114514, true)
}

@Interop[ArkTS]
public func functionWithParamsReturn(): (Int64, Bool) -> String {
    {a, b => "result"}
}

@Interop[ArkTS]
public func nestedFunctionParam(f: (() -> Unit) -> Int64): Int64 {
    f({=>})
}

@Interop[ArkTS]
public func nestedFunctionReturn(): (() -> Unit) -> Int64 {
    {f => 114514}
}

@Interop[ArkTS]
public func callbackFunction(f: (String) -> Unit): Unit {
    f("callback test")
}

@Interop[ArkTS]
public func higherOrderFunction(f: (Int64) -> Int64, v: Int64): Int64 {
    f(v)
}