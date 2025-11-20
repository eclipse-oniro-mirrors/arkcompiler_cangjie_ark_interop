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
class View_AlphabetIndexer {
    @State
    var value: Array<String> = ["A", "B", "C", "D"]
    @State
    var arrayA: Array<String> = ["An", "Ai"]
    @State
    var arrayB: Array<String> = ["Bai", "Bao", "Bi"]
    @State
    var arrayC: Array<String> = ["Chu", "Cai", "Chen"]

    @State
    var onSelectVale: Int32 = 0

    @State
    var text2 = ""

    @State
    var text3: Int64 = 0

    func build() {
        Column(space:5) {
            Text("${onSelectVale}").id("View_AlphabetIndexer_Text1")
            Text(text2).id("View_AlphabetIndexer_Text2")
            Text("${text3}").id("View_AlphabetIndexer_Text3")
            AlphabetIndexer(arrayValue: value, selected: 0)
                .id("AlphabetIndexer_commpont")
                .color(Color.Green)
                .selectedColor(0xFFFFFF)
                .popupColor(0xFFFAF0)
                .selectedBackgroundColor(0xCCCCCC)
                .popupBackground(0xD2B48C)
                .usingPopup(true)
                .selectedFont(size: 16.vp, weight: FontWeight.Normal, family: "HarmonyOS Sans", style: FontStyle.Normal)
                .popupFont(size: 30.vp, weight: FontWeight.Bolder, family: "HarmonyOS Sans", style: FontStyle.Normal)
                .font(size: 10.vp, weight: FontWeight.Lighter, family: "HarmonyOS Sans", style: FontStyle.Italic)
                .itemSize(28)
                .alignStyle(IndexerAlign.Left)
                .selected(onSelectVale)
                .popupPosition(x: 96, y: 48)
                .onSelect({
                    idx => onSelectVale = Int32(idx)
                })
                .onRequestPopupData(
                    {
                        idx: Int64 => if (value[Int64(idx)] == "A") {
                            text2 = "A"
                            return arrayA
                        } else if (value[Int64(idx)] == "B") {
                            text2 = "B"
                            return arrayB
                        } else if (value[Int64(idx)] == "C") {
                            text2 = "C"
                            return arrayC
                        } else {
                            let nullArr: Array<String> = ["null"]
                            return nullArr
                        }
                    })
                .onPopupSelect({
                    idx: Int64 => text3 = idx
                })

            AlphabetIndexer(arrayValue: value, selected: 0)
                .id("AlphabetIndexer_commpont2")
                .color(@r(app.color.alphabetIndexerGreen))
                .selectedColor(@r(app.color.alphabetIndexer3))
                .popupColor(@r(app.color.alphabetIndexer4))
                .selectedBackgroundColor(@r(app.color.alphabetIndexer5))
                .popupBackground(@r(app.color.alphabetIndexer2))
                .usingPopup(false)
                .selectedFont(size: @r(app.string.alphabetIndexerStr1), weight: FontWeight.Normal,
                    family: "HarmonyOS Sans", style: FontStyle.Normal)
                .popupFont(size: @r(app.string.alphabetIndexerStr3), weight: FontWeight.Bolder, family: "HarmonyOS Sans",
                    style: FontStyle.Normal)
                .font(size: @r(app.string.alphabetIndexerStr4), weight: FontWeight.Lighter, family: "HarmonyOS Sans",
                    style: FontStyle.Italic)
                .itemSize(28.vp)
                .alignStyle(IndexerAlign.Left)
                .popupPosition(x: 96.vp, y: 48.vp)

            AlphabetIndexer(arrayValue: value, selected: 0)
                .id("AlphabetIndexer_commpont3")
                .color(0xFF1DBF40)
                .selectedColor(Color.White)
                .popupColor(Color.White)
                .selectedBackgroundColor(Color.White)
                .popupBackground(Color.Red)
                .usingPopup(false)
                .selectedFont(size: 16.vp, weight: FontWeight.Normal, family: @r(app.string.alphabetIndexerStr2),
                    style: FontStyle.Normal)
                .popupFont(size: 30.vp, weight: FontWeight.Bolder, family: @r(app.string.alphabetIndexerStr2),
                    style: FontStyle.Normal)
                .font(size: 10.vp, weight: FontWeight.Lighter, family: @r(app.string.alphabetIndexerStr2),
                    style: FontStyle.Italic)
                .itemSize(28.0)
                .popupPosition(x: 96.0, y: 48.0)

            AlphabetIndexer(arrayValue: value, selected: 0)
                .id("AlphabetIndexer_commpont4")
                .selectedFont(size: @r(app.string.alphabetIndexerStr1), weight: FontWeight.Normal,
                    family: @r(app.string.alphabetIndexerStr2), style: FontStyle.Normal)
                .popupFont(size: @r(app.string.alphabetIndexerStr3), weight: FontWeight.Bolder,
                    family: @r(app.string.alphabetIndexerStr2), style: FontStyle.Normal)
                .font(size: @r(app.string.alphabetIndexerStr4), weight: FontWeight.Lighter,
                    family: @r(app.string.alphabetIndexerStr2), style: FontStyle.Italic)
        }
    }
}
