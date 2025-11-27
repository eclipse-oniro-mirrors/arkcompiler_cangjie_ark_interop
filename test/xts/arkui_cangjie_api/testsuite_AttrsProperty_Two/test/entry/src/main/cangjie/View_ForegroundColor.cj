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

@Entry
@Component
class View_ForegroundColor {
    func build() {
        Column(space:100) {
            Button("设置前景色为蓝色")
                .width(100.percent)
                .height(80)
                .fontSize(20)
                .backgroundColor(Color.Gray)
                .foregroundColor(Color.Blue)
                .id("Test_Button00")

            Button("设置前景色为蓝色")
                .width(100.percent)
                .height(80)
                .fontSize(20)
                .backgroundColor(Color.Gray)
                .foregroundColor(0xFFFFFF)
                .id("Test_Button01")

            Button("未设置前景色继承自父组件")
                .width(100.percent)
                .height(80)
                .fontSize(20)
                .backgroundColor(Color.Gray)
                .foregroundColor(ColoringStrategy.Invert)
                .id("Test_Button02")
        }.width(100.percent)
    }
}
