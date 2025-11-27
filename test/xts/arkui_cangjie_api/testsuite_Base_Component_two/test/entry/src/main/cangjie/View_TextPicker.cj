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
import std.unittest.testmacro.*
import ohos.ui_test.*
import ohos.base.{LengthProp, Length, Color}
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
import std.collection.*

@Entry
@Component
class View_TextPicker {
    var fruits: Array<String> = ["apple1", "orange2", "peach3", "grape4"]
    var select: UInt32 = 0
    @State
    var parameterValue: String = "orange2"
    @State
    var defaultPickerItemHeight: Int64 = 20
    @State
    var getValue: String = "value"
    @State
    var getIndex: UInt32 = 0

    func build() {
        Column(space:5) {
            TextPicker(range:this.fruits, selected: this.select, value: this.parameterValue)
                .id("textPicker")
                .width(100.percent)
                .height(30.percent)
                .defaultPickerItemHeight(this.defaultPickerItemHeight)

            Text(this.getValue + ": " + this.getIndex.toString()).fontSize(20).key("textContent")

            TextPicker(range:this.fruits, selected: this.select, value: this.parameterValue)
                .id("textPicker1")
                .width(100.percent)
                .height(30.percent)
                .defaultPickerItemHeight(20.fp)

            TextPicker(range:this.fruits, selected: this.select, value: this.parameterValue)
                .id("textPicker2")
                .width(100.percent)
                .height(30.percent)
                .defaultPickerItemHeight(20.00)
        }
    }
}
