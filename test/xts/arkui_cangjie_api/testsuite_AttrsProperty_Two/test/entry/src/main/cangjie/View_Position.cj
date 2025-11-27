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
import ohos.ui_test.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.base.{LengthProp, Length, Color}
import kit.LocalizationKit.{AppResource}

@Entry
@Component
class View_Position {
    func build() {
        Scroll() {
            Column(space:20) {
                RelativeContainer() {
                    Row()
                        .width(100)
                        .height(100)
                        .backgroundColor(0xff3333)
                        .alignRules(
                            AlignRuleOptions(
                                 left: HorizontalAlignParam("guideline1", HorizontalAlign.End),
                                top: VerticalAlignParam("guideline2", VerticalAlign.Top)
                            )
                        )
                        .id("Test_Row")
                        .position(x: @r(app.string.positionx), y: @r(app.string.positiony))
                }
            }.width(100.percent).margin(top: 25)
        }
    }
}
