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
import std.collection.*
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
import std.collection.*

@Entry
@Component
class View_GridCol {
    @State
    var bgColors: ObservedArrayList<Color> = ObservedArrayList<Color>([Color.Red, Color.Green, Color.Blue, Color.Gray, Color.Red, Color.Green, Color.Blue,
        Color.Gray, Color.Red, Color.Green, Color.Blue, Color.Gray, Color.Red, Color.Green, Color.Blue, Color.Gray])
    @State
    var currentBp: String = ""
    func build() {
        Scroll() {
            Column() {
                GridRow(
                    columns: GridRowOptions(xs: 2, sm: 4, md: 6, lg: 9, xl: 12),
                    gutter: GutterOptions(x: 0.vp, y: 10.vp),
                    breakpoints: BreakPoints(
                        value: [50.vp, 100.vp, 150.vp, 200.vp],
                        reference: BreakpointsReference.WindowSize
                    ),
                    direction: GridRowDirection.Row
                ) {
                    ForEach(bgColors,
                        itemGeneratorFunc: {
                            color: Color, index: Int64 => GridCol(
                                span: GridColOptions(xs: 1, sm: 3, md: 4, lg: 5, xl: 6),
                                offset: GridColOptions(xs: 0, sm: 0, md: 0, lg: 0, xl: 0),
                                order: GridColOptions(xs: 1, sm: 2, md: 3, lg: 4, xl: 5, xxl: 6)) {
                                Row().width(100.percent).height(20.vp)
                            }.borderWidth(2.vp).borderColor(color)
                        })
                }
                    .width(100.percent)
                    .id("gridcolbasic")
                    .onBreakpointChange({
                        bp => currentBp = bp
                    })
                    .alignItems(ItemAlign.Center)
                    .borderWidth(2)

                GridRow(
                    columns: GridRowOptions(xs: 2, sm: 4, md: 6, lg: 9, xl: 12),
                    gutter: GutterOptions(x: 0.vp, y: 10.vp),
                    breakpoints: BreakPoints(
                        value: [50.vp, 100.vp, 150.vp, 200.vp],
                        reference: BreakpointsReference.WindowSize
                    ),
                    direction: GridRowDirection.Row
                ) {
                    ForEach(bgColors,
                        itemGeneratorFunc: {
                            color: Color, index: Int64 => GridCol(span:GridColOptions(xs: 1, sm: 3, md: 4, lg: 5, xl: 6),offset:GridColOptions(xs: 1, sm: 1, md: 1, lg: 1, xl: 1),order:GridColOptions(xs: 1, sm: 2, md: 3, lg: 4, xl: 5, xxl: 6)) {
                                Row().width(100.percent).height(20.vp)
                            }
                                .borderWidth(2.vp)
                                .borderColor(color)
                        })
                }
                    .width(100.percent)
                    .id("gridcolbasic1")
                    .onBreakpointChange({
                        bp => currentBp = bp
                    })
                    .alignItems(ItemAlign.Center)
                    .borderWidth(2)
            }.width(100.percent).margin(left: 10, top: 5, bottom: 5).borderWidth(2)
        }
    }
}
