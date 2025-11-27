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
import ohos.base.{LengthProp, Length,  Color}
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
class View_Text {
    @State
    var arr: Array<Int64> = [1, 2]

    func build() {
        Column() {
            Text(
                "This is the text with the line height set This is the text with the line height set This is the text with the line height set."
            )
                .id("Text_component1")
                .textAlign(TextAlign.Center)
                .textOverflow(TextOverflow.Ellipsis)
                .maxLines(2)
                .lineHeight(25)
                .decoration(decorationType: TextDecorationType.Underline, color: Color.Red)
                .baselineOffset(5)
                .minFontSize(2)
                .maxFontSize(1)
                .textCase(TextCase.UpperCase)
                .fontSize(12)
                .border(width: 1.px)
                .padding(10)

            Text {
                Span("I am LineThrough-span")
            }
                .id("Text_component2")
                .textAlign(TextAlign.Center)
                .textOverflow(TextOverflow.Ellipsis)
                .maxLines(2)
                .lineHeight(25)
                .decoration(decorationType: TextDecorationType.Underline, color: Color.Red)
                .baselineOffset(5)
                .minFontSize(2)
                .maxFontSize(1)
                .textCase(TextCase.UpperCase)
                .fontSize(12)
                .border(width: 1.px)
                .padding(10)
        }
    }
}
