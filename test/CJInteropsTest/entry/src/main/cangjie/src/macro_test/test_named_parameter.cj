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

//
@Interop[ArkTS]
public func oneParamWithOneNamedParameter(p0!: Unit): Unit {
}

@Interop[ArkTS]
public func twoParamsWithTwoNamedParameters(p0!: Bool, p1!: Int64): Unit {
}

@Interop[ArkTS]
public func twoParamsWithOneNamedParameter(p0: Float64, p1!: Array<Byte>): Unit {
}
