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
internal import kit.LocalizationKit.{AppResource}

@Entry
@Component
class View_Blank {
    var scroller: Scroller = Scroller()
    func build() {
        Scroll(this.scroller) {
            Column() {
                Text("填充前--------------").height(20)
                Blank(min: 0.00.vp).color(0x9B30FF).id("blank")
                Text("填充后--------------").height(30)
                Blank(min: 0.00).color(Color.Red).id("blank2")

                Blank(min: 0).color(@r(app.color.red_color)).id("blank3")
            }.height(100).width(300).borderWidth(1)
        }
    }
}
