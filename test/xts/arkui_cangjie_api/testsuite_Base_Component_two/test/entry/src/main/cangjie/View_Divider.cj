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
import std.time.DateTime
import std.time.Month
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
import std.collection.*

@Entry
@Component
class View_Divider {
    func build() {
        Column() {
            Text("Horizontal divider").fontSize(9).fontColor(0xCCCCCC)
            Row().width(100.percent).height(40).backgroundColor(0xF1F3F5)
            Divider()
                .vertical(false)
                .color(Color.Green)
                .strokeWidth(2.vp)
                .lineCap(LineCapStyle.Square)
                .id("dividerbase")
            Row().width(100.percent).height(40).backgroundColor(0xF1F3F5)

            Text("Vertical divider").fontSize(9).fontColor(0xCCCCCC)
            Flex(alignItems: ItemAlign.Center, wrap: FlexWrap.Wrap) {
                Text("bravery")
                Divider()
                    .vertical(true)
                    .margin(20)
                    .height(15)
                    .color(0xFF1DBF40)
                    .strokeWidth(@r(app.string.alphabetIndexerStr4))
                    .lineCap(LineCapStyle.Round)
                    .id("dividerbase2")
                Text("effort")
                Divider()
                    .vertical(true)
                    .margin(20)
                    .height(15)
                    .id("dividerbase3")
                    .strokeWidth(2.0)
                    .color(@r(app.color.alphabetIndexerGreen))

                Text("upward")
            }.width(250)

            Text("Custom Styles").fontSize(9).fontColor(0xCCCCCC)
            Row().width(100.percent).height(40).backgroundColor(0xF1F3F5)
            Divider().vertical(false).strokeWidth(5).color(0x2788D9).lineCap(LineCapStyle.Round)
            Row().width(100.percent).height(40).backgroundColor(0xF1F3F5)
        }.width(100.percent).height(350).padding(left: 35, right: 35, top: 35)
    }
}
