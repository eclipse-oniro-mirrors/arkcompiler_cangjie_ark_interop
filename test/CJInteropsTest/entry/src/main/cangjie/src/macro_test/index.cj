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

import ohos.ark_interop.*
import ohos.ark_interop_macro.*

@Interop[ArkTS]
public func exportNumber(): Int64 {
    return 1
}

@Interop[ArkTS]
public class ExportClass {
    public let str: String
    public let num: Int64

    public init(str: String, num: Int64) {
        this.str = str
        this.num = num
    }

    public func toString(): String {
        this.str
    }
}