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
class View_Select {
    @State
    var text: String = "TTTTT"
    @State
    var index: Int32 = 2
    @State
    var space: Int64 = 8
    @State
    var Text: String = ""
    @State
    var text_01: String = "aaa"
    @State
    var text_02: String = "bbb"
    @State
    var text_03: String = "ccc"
    @State
    var text_04: String = "ddd"

    @State
    var values1: Array<SelectOptions> = [
        SelectOptions(value:"aaa", icon: @r(app.media.startIcon)),
        SelectOptions(value:"bbb", icon: @r(app.media.startIcon)),
        SelectOptions(value:"ccc", icon: @r(app.media.startIcon)),
        SelectOptions(value:"ddd", icon: @r(app.media.startIcon))
    ]

    @State
    var arrow: ArrowPosition = ArrowPosition.End

    func build() {
        Column(space:10) {
            Select(this.values1)
                .selected(1)
                .value(this.text)
                .font(size: 16.vp, weight: FontWeight.Medium, style: FontStyle.Normal, family: "sans-serif")
                .fontColor(0x182431)
                .selectedOptionBgColor(0x33007DFF)
                .selectedOptionFont(size: 16.vp, weight: FontWeight.W400, style: FontStyle.Normal, family: "sans-serif")
                .space(this.space)
                .selectedOptionFontColor(0xff007dff)
                .optionBgColor(0xffffffff)
                .arrowPosition(this.arrow)
                .space(10)
                .arrowPosition(ArrowPosition.End)
                .optionFont(size: 20.vp, weight: FontWeight.W400, style: FontStyle.Normal, family: "sans-serif")
                .optionFontColor(0xff182431)
                .menuAlign(alignType:MenuAlignType.Start, offset: Offset(0, 0))
                .optionWidth(200)
                .optionHeight(300)
                .menuBackgroundColor(Color.White)
                .menuBackgroundBlurStyle(BlurStyle.ComponentUltraThick)
                .space(8)
                .onSelect(
                    {
                        index: Int32, text: String =>
                        this.index = index
                        this.text = text
                    }
                )
                .id("Test_Select")

            Select(this.values1)
                .id("test_select1")
                .value(@r(app.string.module_desc))
                .font(size: 16.vp, weight: FontWeight.Medium, style: FontStyle.Normal, family: "sans-serif")
                .selectedOptionBgColor(Color.Red)
                .selectedOptionFontColor(Color.Green)
                .optionBgColor(Color.Gray)
                .optionFontColor(Color.White)
                .menuBackgroundColor(0xff182431)
                .space(this.space)
                .arrowPosition(this.arrow)
                .optionWidth(200)

            Select(this.values1)
                .id("test_select2")
                .value(@r(app.string.module_desc))
                .font(size: 16.vp, weight: FontWeight.Medium, style: FontStyle.Normal, family: "sans-serif")
                .selectedOptionBgColor(@r(app.color.red_color))
                .selectedOptionFontColor(@r(app.color.alphabetIndexerGreen))
                .optionBgColor(@r(app.color.gray))
                .optionFontColor(@r(app.color.alphabetIndexer5))
                .menuBackgroundColor(@r(app.color.alphabetIndexer5))
        }.width(100.percent)
    }
}
