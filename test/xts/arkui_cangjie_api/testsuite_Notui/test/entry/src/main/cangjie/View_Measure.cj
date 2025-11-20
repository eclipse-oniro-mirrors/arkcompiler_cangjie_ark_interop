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
import ohos.arkui.component.Text
import ohos.arkui.component.Button
import ohos.arkui.component.Column
import ohos.arkui.component.CustomView
import ohos.arkui.component.*
import ohos.arkui.state_management.LocalStorage
import ohos.arkui.state_management.ObservedProperty
import ohos.arkui.state_management.SubscriberManager
import ohos.arkui.state_management.ViewStackProcessor
import ohos.arkui.state_macro_manage.State
import ohos.arkui.state_macro_manage.Component
import kit.ArkUI.Size as MeasureSize
import ohos.arkui.state_macro_manage.*
import ohos.base.*
import ohos.arkui.ui_context.*

@Entry
@Component
class View_Measure {
    var textSize: Float64 = 0.0
    var context2: ?MeasureOptions = None  
    var textSize2: ?SizeOptions = None

    
    func build() {
        Row() {
            Column() {
                Text("${this.textSize}").id("textSize")
                Button().onClick({ClickEvent =>
                    textSize = getUIContext().getMeasureUtils().measureText(
                        MeasureOptions(
                            textContent: "Hello world1",
                            fontWeight: FontWeight.Normal
                        )
                    )
                    context2 = MeasureOptions(textContent: "Hello world2")
                    textSize2 = getUIContext().getMeasureUtils().measureTextSize(context2.getOrThrow())
                })
            }.width(100.percent)
        }.height(100.percent)
    }
}
