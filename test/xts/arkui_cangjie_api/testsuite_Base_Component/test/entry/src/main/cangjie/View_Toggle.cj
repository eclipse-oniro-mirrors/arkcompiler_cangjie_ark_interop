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
import ohos.base.{LengthProp, Length,  Color}
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
class View_Toggle {
    @State
    var switchPointColor: UInt32 = 0xFF0000
    @State
    var text: String = "no change"

    func build() {
        Column() {
            Text("type: Switch").fontSize(12).fontColor(0xcccccc).width(10.percent)
            Flex(justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center) {
                Toggle(ToggleType.Switch)
                    .key("toggleSwitch")
                    .selectedColor(Color(0x007DFF))
                    .switchPointColor(Color(this.switchPointColor))
                    .onChange(
                        {
                            isOn: Bool =>
                            this.text = "switch " + isOn.toString()
                            Hilog.info(0,"",   "cangjietest", "Component status: ${isOn}")
                        }
                    )
                Toggle(ToggleType.Switch, isOn: true)
                    .selectedColor(Color(0x007DFF))
                    .switchPointColor(Color(0xFFFFFF))
                    .onChange({
                        isOn: Bool => Hilog.info(0,"",   "cangjietest", "Component status: ${isOn}")
                    })
            }
            Text(this.text).fontSize(20).margin(10).key("textcontent")
        }.width(100.percent).padding(24)
    }
}
