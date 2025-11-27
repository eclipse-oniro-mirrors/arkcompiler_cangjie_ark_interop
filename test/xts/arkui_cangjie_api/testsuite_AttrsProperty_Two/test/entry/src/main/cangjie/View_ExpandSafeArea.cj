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
import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}

@Entry
@Component
class View_ExpandSafeArea {
    let controller: TextInputController = TextInputController()
    func build() {
        Stack() {
            Column()
                .height(100.percent)
                .width(100.percent)
                .backgroundImage( @r(app.media.background), ImageRepeat.X)
                .backgroundImageSize(ImageSize.Cover)
                .expandSafeArea(types: [SafeAreaType.System, SafeAreaType.Keyboard], edges: [SafeAreaEdge.Bottom])
                .id("Test_Column")
            Column() {
                Button("Set caretPosition 1").onClick({ClickEvent =>
                    this.controller.caretPosition(1)
                })
                TextInput(controller: this.controller)
                    .placeholderFont(size: 14.px)
                    .width(320)
                    .height(40)
                    .offset(x: 0, y: 120)
                    .fontSize(14)
            }.width(100.percent).alignItems(HorizontalAlign.Center)
        }
    }
}
