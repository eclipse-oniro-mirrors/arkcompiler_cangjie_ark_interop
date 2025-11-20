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
class View_Slider {
    @State
    var inVerticalSetValue: Float64 = 40.0

    @State
    var onChange1: String = "1"

    @State
    var outSetValue: Float64 = 0.0

    func build() {
        Column(space:5) {
            Text("slider in direction set").fontSize(9).fontColor(0xCCCCCC).width(50.percent)
            Slider(
                value: this.inVerticalSetValue,
                min: 0.0,
                max: 100.0,
                step: 1.0,
                style: SliderStyle.InSet,
                direction: Axis.Vertical,
                reverse: true
            )
                .blockColor(0xCCCCCC)
                .trackColor(Color.Black)
                .selectedColor(0xCCCCCC)
                .showSteps(false)
                .showTips(false)
                .trackThickness(10.00)
                .onChange(
                    {
                        value: Float64, mode: SliderChangeMode =>
                        this.inVerticalSetValue = value
                    }
                )
                .height(60.percent)
                .id("Test_Silder")
            Text("${this.inVerticalSetValue}").fontSize(16)

            Slider()
                .blockColor(Color.Blue)
                .id("test_slider11")
                .onChange({a,b
                    => onChange1 = "onChange Unit"
                })
                .trackThickness(10.vp)

            Slider()
                .trackColor(Color.Green)
                .id("test_slider12")
                .onChange({
                    f, sl => outSetValue = f
                })
                .trackThickness(10.vp)

            Slider().selectedColor(Color.Green).id("test_slider13")
            Slider().trackThickness(10.vp).id("test_slider14")
            Slider().trackThickness(10).id("test_slider15")

            Text(onChange1).id("myText1")
            Text("${outSetValue}").id("myText2")
        }.width(50.percent).height(500)
    }
}
