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
class View_ScrollBar {
    let arr: ArrayList<Int64> = ArrayList<Int64>([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

    let scroller = Scroller()

    func build() {
        Column() {
            Text("1")
                .width(90.percent)
                .height(150)
                .backgroundColor(0x3366CC)
                .borderRadius(15)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .margin(top: 5)
            Text("2")
                .width(90.percent)
                .height(150)
                .backgroundColor(0x3366CC)
                .borderRadius(15)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .margin(top: 5)
            Text("3")
                .width(90.percent)
                .height(150)
                .backgroundColor(0x3366CC)
                .borderRadius(15)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .margin(top: 5)
            Text("4")
                .width(90.percent)
                .height(150)
                .backgroundColor(0x3366CC)
                .borderRadius(15)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .margin(top: 5)
            Text("5")
                .width(90.percent)
                .height(150)
                .backgroundColor(0x3366CC)
                .borderRadius(15)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .margin(top: 5)
            Text("6")
                .width(90.percent)
                .height(150)
                .backgroundColor(0x3366CC)
                .borderRadius(15)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .margin(top: 5)

            ScrollBar(scroller:this.scroller, direction:ScrollBarDirection.Vertical, state:BarState.On) {
                Text("").width(30).height(100).borderRadius(10).backgroundColor(0xC0C0C0)
            }.width(30).backgroundColor(0xededed).id("ScrollBar_component")

            ScrollBar(scroller:this.scroller, direction:ScrollBarDirection.Horizontal, state:BarState.Auto) {
                Text("").width(30).height(100).borderRadius(10).backgroundColor(0xC0C0C0)
            }.width(30).backgroundColor(0xededed).id("ScrollBar_component2")

            ScrollBar(scroller:this.scroller, direction:ScrollBarDirection.Horizontal, state:BarState.Off) {
                Text("").width(30).height(100).borderRadius(10).backgroundColor(0xC0C0C0)
            }.width(30).backgroundColor(0xededed).id("ScrollBar_component3")
        }
    }
}
