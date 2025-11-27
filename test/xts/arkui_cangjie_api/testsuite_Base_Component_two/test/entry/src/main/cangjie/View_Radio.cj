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
class View_Radio {
    @State
    var radioName: String = "Null"
    @State
    var checked: Bool = true

    @State
    var checked2: Bool = false
    func build() {
        Column(space: 30) {
            Column() {
                Radio(group: "1", value: "A")
                    .onChange ({
                        val =>
                        if (!val) {
                            return
                        }
                        Hilog.info(0, "","cangjietest", "Radio A")
                        radioName = "AAA"
                    })
                    .size(width: 40, height: 40)
                    .checked(this.checked)
                    .id("radiobasic")

                Radio(group: "1", value: "B")
                    .onChange ({
                        val =>
                        if (!val) {
                            return
                        }
                        Hilog.info(0, "","cangjietest", "Radio B")
                        radioName = "BBB"
                    })
                    .size(width: 40, height: 40)
                    .checked(false)
                Radio(group: "1", value: "C")
                    .onChange ({
                        val =>
                        if (!val) {
                            return
                        }
                        Hilog.info(0, "","cangjietest", "Radio C")
                        radioName = "CCC"
                    })
                    .size(width: 40, height: 40)
                Radio(group: "1", value: "D")
                    .onChange ({
                        val =>
                        if (!val) {
                            return
                        }
                        Hilog.info(0, "","cangjietest", "Radio D")
                        radioName = "DDD"
                    })
                    .size(width: 40, height: 40)
                Text("${radioName}").fontSize(40)
                Button("checked").onClick({
                    ClickEvent => this.checked = !checked
                }).id("change")
                Text("${this.checked}").id("checked")

                Radio(group: "2", value: "a").size(width: 40, height: 40).checked(checked2).id("radiobasic2")
            }
        }.margin(top: 40, left: 40)
    }
}
