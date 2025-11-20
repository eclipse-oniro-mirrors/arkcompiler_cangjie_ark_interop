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
import std.convert.*
import ohos.base.{LengthProp, Length, Color}
internal import ohos.base.ReuseParams

@Builder
func Builder_BaseFunc_TopLevel() {
    Column {
        Text("BaseFunc Builder In TopLevel").fontSize(20).fontColor(Color.Blue).id("TopLevelBuilder")
    }
}

@Entry
@Component
class View_Builder_BaseFunc {
    @Builder
    func Builder_BaseFunc_ClassLevel() {
        Column {
            Text("BaseFunc Builder In ClassLevel").fontSize(20).fontColor(Color.Blue).id("ClassLevelBuilder")
        }
    }

    func build() {
        Row {
            Column(space:20) {
                Builder_BaseFunc_TopLevel()
                Builder_BaseFunc_ClassLevel()
            }.width(100.percent)
        }.height(100.percent)
    }
}
