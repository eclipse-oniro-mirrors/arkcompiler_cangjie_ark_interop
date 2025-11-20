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

@Entry
@Component
class View_Focus {
    @State
    var oneButtonColor: UInt32 = 0xFFC0CB
    @State
    var twoButtonColor: UInt32 = 0x87CEFA
    @State
    var threeButtonColor: UInt32 = 0x90EE90
    @State
    var fourButtonColor: UInt32 = 0x5DD55D
    @State
    var fiveButtonColor: UInt32 = 0x1E90FF
    @State
    var rowBoxColor: UInt32 = 0xFFFFFF
    @State
    var idList: Array<String> = ["A", "B", "C", "D", "E", "F"]
    func build() {
        Column(space: 20) {
            Row() {
                Button("Hello Cangjie A")
                    .onClick({
                        evt => Hilog.info(0, "cangjietest", "Hello Cangjie A")
                    })
                    .backgroundColor(oneButtonColor)
                    .width(400.px)
                    .height(150.px)
                    .margin(5.px)
                    .fontColor(Color.Black)
                    .focusOnTouch(true)
                    .defaultFocus(true)
                    .onFocus({
                        => oneButtonColor = 0xFF0000
                    })
                    .onBlur({
                        => oneButtonColor = 0xFFC0CB
                    })
                    .tabIndex(1)
                    .id(this.idList[0])
                    .key(this.idList[0])

                Button("Hello Cangjie B")
                    .onClick({
                        evt => Hilog.info(0, "cangjietest", "Hello Cangjie B")
                    })
                    .backgroundColor(twoButtonColor)
                    .width(400.px)
                    .height(150.px)
                    .fontColor(Color.Black)
                    .margin(5.px)
                    .focusOnTouch(false)
                    .onFocus({
                        => twoButtonColor = 0xFF0000
                    })
                    .onBlur({
                        => twoButtonColor = 0x87CEFA
                    })
                    .tabIndex(2)
                    .id(this.idList[1])
                    .key(this.idList[1])
            }
            Row() {
                Button("Hello Cangjie C")
                    .onClick({
                        evt => Hilog.info(0, "cangjietest", "Hello Cangjie C")
                    })
                    .backgroundColor(threeButtonColor)
                    .width(400.px)
                    .height(150.px)
                    .margin(5.px)
                    .fontColor(Color.Black)
                    .focusable(false)
                    .onFocus({
                        => threeButtonColor = 0xFF0000
                    })
                    .onBlur({
                        => threeButtonColor = 0x90EE90
                    })
                    .tabIndex(3)
                    .id(this.idList[2])
                    .key(this.idList[2])

                Button("Hello Cangjie D")
                    .onClick({
                        evt => Hilog.info(0, "cangjietest", "Hello Cangjie D")
                    })
                    .backgroundColor(fourButtonColor)
                    .width(400.px)
                    .height(150.px)
                    .margin(5.px)
                    .fontColor(Color.Black)
                    .focusable(true)
                    .focusOnTouch(true)
                    .onFocus({
                        => fourButtonColor = 0xFF0000
                    })
                    .onBlur({
                        => fourButtonColor = 0x5DD55D
                    })
                    .tabIndex(4)
                    .id(this.idList[3])
                    .key(this.idList[3])
            }

            Button() {
                Button("Hello Cangjie E")
                    .onClick({
                        evt => Hilog.info(0, "cangjietest", "Hello Cangjie E")
                    })
                    .backgroundColor(fiveButtonColor)
                    .width(400.px)
                    .height(150.px)
                    .margin(20.px)
                    .fontColor(Color.Black)
                    .onFocus({
                        => fiveButtonColor = 0xFF0000
                    })
                    .onBlur({
                        => fiveButtonColor = 0x1E90FF
                    })
                    .groupDefaultFocus(true)
                    .id(this.idList[4])
                    .key(this.idList[4])
            }
                .tabIndex(4)
                .focusable(true)
                .borderWidth(1.5)
                .borderColor(rowBoxColor)
                .borderStyle(BorderStyle.Solid)
                .onFocus({
                    => rowBoxColor = 0x000000
                })
                .onBlur({
                    => rowBoxColor = 0xFFFFFF
                })

            Row() {
                Button("RequestFocus-D")
                    .width(400.px)
                    .height(150.px)
                    .margin(20.px)
                    .fontColor(Color.Black)
                    .focusable(true)
                    .id(this.idList[5])
                    .onClick({
                        ClickEvent =>
                        let selectId = this.idList[3]
                        let result = FocusControl.requestFocus(selectId)
                        if (result) {
                            Hilog.info(0, "cangjietest", "Request success")
                        } else {
                            Hilog.info(0, "cangjietest", "Request failed")
                        }
                    })
            }
        }.width(100.percent).margin(top: 20)
    }
}
