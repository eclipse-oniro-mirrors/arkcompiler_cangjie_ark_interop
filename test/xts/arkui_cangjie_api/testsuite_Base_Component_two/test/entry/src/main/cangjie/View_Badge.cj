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
class View_Badge {
    func build() {
        Column() {
            Row(space:10) {
                Badge(
                        count: 1,
                        style: BadgeStyle(color: Color(0x000000), fontSize: 20, badgeSize: 25,
                            badgeColor: Color(0xFFCCCC)),
                        position: BadgePosition.Right,
                        maxCount: 15

                ) {
                    Button("message1").width(100).height(50).backgroundColor(0x317aff)
                }.width(80).height(50).id("Badge_commpont")

                Badge(
                        count: 0,
                        style: BadgeStyle(color: @r(app.color.red_color), fontSize: 20, badgeSize: 25,
                            badgeColor: @r(app.color.blue_color)),
                        position: BadgePosition.Right,
                        maxCount: 15

                ) {
                    Button("message").width(100).height(50).backgroundColor(0x317aff)
                }.id("Badge_commpont2")

                Badge(
                        count: -1,
                        style: BadgeStyle(color: @r(app.color.red_color), fontSize: 20, badgeSize: 25,
                            badgeColor: @r(app.color.blue_color)),
                        position: BadgePosition.Right,
                        maxCount: 15

                ) {
                    Button("message").width(100).height(50).backgroundColor(0x317aff)
                }.id("Badge_commpont3")

                Badge(
                        count: 50,
                        style: BadgeStyle(color: @r(app.color.red_color), fontSize: 20, badgeSize: 25,
                            badgeColor: @r(app.color.blue_color)),
                        position: BadgePosition.Right,
                        maxCount: 15

                ) {
                    Button("message").width(100).height(50).backgroundColor(0x317aff)
                }.id("Badge_commpont4")

                Badge(
                        count: 100,
                        style: BadgeStyle(color: @r(app.color.red_color), fontSize: 20, badgeSize: 25,
                            badgeColor: @r(app.color.blue_color)),
                        position: BadgePosition.Right,
                        maxCount: 15

                ) {
                    Button("message").width(100).height(50).backgroundColor(0x317aff)
                }.id("Badge_commpont5")

                Badge(
                        value: "new",
                        style: BadgeStyle(color: Color(0x000000), fontSize: 20, badgeSize: 25,
                            badgeColor: Color(0xFFCCCC)),
                        position: BadgePosition.Right

                ) {
                    Text("message")
                        .width(80)
                        .height(50)
                        .fontSize(16)
                        .lineHeight(37)
                        .borderRadius(10)
                        .textAlign(TextAlign.Center)
                        .backgroundColor(0xF3F4ED)
                }.width(80).height(50).id("Badge_commpont6")
            }
        }
    }
}
