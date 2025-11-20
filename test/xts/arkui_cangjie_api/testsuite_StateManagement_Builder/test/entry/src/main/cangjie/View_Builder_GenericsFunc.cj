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

import kit.PerformanceAnalysisKit.Hilog
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import std.collection.*
import stdx.encoding.json.*
import std.convert.*
import ohos.base.{LengthProp, Length, Color}

@Builder
public func Builder_GenericsFunc_TopLevel<T>(textcontent: T, fontcolor: Color, fontsize!: Int64 = 20): Unit where T <: ToString {
    Text("${textcontent}").fontSize(fontsize).fontColor(fontcolor).id("TopLevelBuilder")
}

@Entry
@Component
class View_Builder_GenericsFunc {
    @Builder
    public func Builder_GenericsFunc_ClassLevel<T>(textcontent: T, fontcolor: Color, fontsize!: Int64 = 20): Unit where T <: ToString {
        Text("${textcontent}").fontSize(fontsize).fontColor(fontcolor).id("ClassLevelBuilder")
    }

    func build() {
        Row {
            Column(space:20) {
                Builder_GenericsFunc_TopLevel<String>("GenericsFunc Builder In TopLevel", Color.Red, fontsize: 20)
                Builder_GenericsFunc_ClassLevel<String>("GenericsFunc Builder In ClassLevel", Color.Red, fontsize: 20)
            }.width(100.percent)
        }.height(100.percent)
    }
}
