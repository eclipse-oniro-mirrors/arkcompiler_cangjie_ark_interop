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
class View_Grid {
    @State
    var numbers: ObservedArrayList<String> = ObservedArrayList<String>(["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13",
        "14", "15"])
    var scroller: Scroller = Scroller()
    func build() {
        Scroll(this.scroller) {
            Column() {
                Grid(child: {=>
                    GridItem ({=>
                        Text("4")
                            .fontSize(16)
                            .backgroundColor(0xFAEEE0)
                            .width(100.percent)
                            .height(100.percent)
                            .textAlign(TextAlign.Center)
                    }).rowStart(1).rowEnd(4)
                    ForEach(
                        this.numbers,
                        itemGeneratorFunc: {
                            num: String, idx: Int64 => GridItem {
                                Text(num)
                                    .fontSize(16)
                                    .backgroundColor(0xF9CF93)
                                    .width(100.percent)
                                    .height(100.percent)
                                    .textAlign(TextAlign.Center)
                            }
                        }
                    )
                    GridItem {
                        Text("5")
                            .fontSize(16)
                            .backgroundColor(0xDBD0C0)
                            .width(100.percent)
                            .height(100.percent)
                            .textAlign(TextAlign.Center)
                    }.columnStart(1).columnEnd(5)
                })
                    .id("GridBasis")
                    .columnsTemplate("1fr 1fr 1fr 1fr 1fr")
                    .rowsTemplate("1fr 1fr 1fr 1fr 1fr")
                    .columnsGap(5)
                    .rowsGap(5)
                    .cachedCount(2)
                    .width(90.percent)
                    .backgroundColor(0xFAEEE0)
                    .height(300)

                Grid(scroller:this.scroller,child:{=>
                    ForEach(
                        this.numbers,
                        itemGeneratorFunc: {
                            num: String, idx: Int64 => ForEach(
                                this.numbers,
                                itemGeneratorFunc: {
                                    num: String, idx: Int64 => GridItem {
                                        Text(num)
                                            .fontSize(16)
                                            .backgroundColor(0xF9CF93)
                                            .width(100.percent)
                                            .height(100.percent)
                                            .textAlign(TextAlign.Center)
                                    }
                                }
                            )
                        }
                    )
                })
                    .columnsTemplate("1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr")
                    .columnsGap(10)
                    .rowsGap(10)
                    .width(90.percent)
                    .backgroundColor(0xFAEEE0)
                    .height(300)
                    .cachedCount(0)

            }.width(100.percent).margin(top: 5)
        }
    }
}
