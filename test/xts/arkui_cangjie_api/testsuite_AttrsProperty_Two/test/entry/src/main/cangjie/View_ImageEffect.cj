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
import ohos.arkui.component.*
import ohos.arkui.state_macro_manage.*
import std.collection.*
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
import std.collection.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import stdx.encoding.json.*
import std.convert.*
import ohos.base.{LengthProp, Length, Color}
import kit.LocalizationKit.{AppResource}

@Entry
@Component
class View_ImageEffect {
    @State
    var cnt: Int64 = 0
    func build() {
        Scroll() {
            Column(space:10) {
                Text("blur text").blur(2.0).margin(10).id("Test_Text00")

                Text("backdropBlur")
                    .width(90.percent)
                    .height(40)
                    .fontSize(16)
                    .backdropBlur(0.8)
                    .backgroundImage(@r(app.media.startIcon),ImageRepeat.X)
                    .backgroundImageSize(width: 300, height: 160)
                    .id("Test_Text01")

                Image(@r(app.media.startIcon))
                    .shadow(radius: 10.5, color: Color.Gray, offsetX: 10.5, offsetY: 10.5)
                    .height(40)
                    .id("Test_Text02")

                Text("grayscale").fontSize(15).fontColor(0xCCCCCC)
                Image(@r(app.media.startIcon)).grayscale(1.0).height(40).id("Test_Text03")

                Text("brightness").fontSize(15).fontColor(0xCCCCCC)
                Image(@r(app.media.startIcon)).brightness(2.0).height(40).id("Test_Text04")

                Text("saturate").fontSize(15).fontColor(0xCCCCCC).width(90.percent)
                Image(@r(app.media.startIcon)).saturate(2.0).height(40).id("Test_Text05")

                Text("contrast").fontSize(15).fontColor(0xCCCCCC).width(90.percent)
                Image(@r(app.media.startIcon)).contrast(2.0).height(40).id("Test_Text06")

                Text("invert").fontSize(15).fontColor(0xCCCCCC).width(90.percent)
                Image(@r(app.media.startIcon)).invert(1.0).height(40).id("Test_Text07")

                Text("colorBlend").fontSize(15).fontColor(0xCCCCCC).width(90.percent)
                Image(@r(app.media.startIcon)).colorBlend(0xCCCCCC).height(40).id("Test_Text08")
                Image(@r(app.media.startIcon)).colorBlend(@r(app.color.red)).height(40).id("Test_Text09")

                Text("sepia").fontSize(15).fontColor(0xCCCCCC).width(90.percent)
                Image(@r(app.media.startIcon)).sepia(2.0).height(40).id("Test_Text10")

                Text("hueRotate").fontSize(15).fontColor(0xCCCCCC).width(90.percent)
                Image(@r(app.media.startIcon)).hueRotate(85.5).height(40).id("Test_Text11")
            }
        }
    }
}
