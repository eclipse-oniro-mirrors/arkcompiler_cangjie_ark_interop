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

@Observed
class SubButton_Count {
    @Publish
    var count: Rune = r'A'
}

@Observed
class Button_Count {
    @Publish
    var count: Int64 = 0
    @Publish
    var content: String = "Hello"
    @Publish
    var subButton: SubButton_Count = SubButton_Count()
}

@Builder
func Builder_StateReferences_Button(cnt: Button_Count) {
    Column(space:20) {
        Button("Click To Change Value")
            .id("change")
            .onClick({
                evt =>
                cnt.count += 10
                cnt.content = "Hello Cangjie"
                cnt.subButton.count = 'Z'
            })
        Text("Builder_StateReferences_Value: ${cnt.count} ${cnt.content} ${cnt.subButton.count}").id("StateBuilder")
    }.width(100.percent)
}

@Entry
@Component
class View_Builder_StateReferences {
    @State
    var button_count: Button_Count = Button_Count()
    func build() {
        Row {
            Column() {
                Builder_StateReferences_Button(button_count)
            }.width(100.percent)
        }.height(100.percent)
    }
}
