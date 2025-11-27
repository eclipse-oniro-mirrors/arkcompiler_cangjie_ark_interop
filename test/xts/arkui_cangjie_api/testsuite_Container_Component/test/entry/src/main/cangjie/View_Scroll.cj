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
import std.collection.ArrayList
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode

@Entry
@Component
class View_Scroll {
    let scroller = Scroller()

    let nes = NestedScrollOptions(NestedScrollMode.SelfOnly, NestedScrollMode.SelfOnly)

    var arr: ObservedArrayList<String> = ObservedArrayList<String>(["0", "1", "2", "3", "4", "5", "6", "7", "8"])

    @State
    var listPosition: Int32 = 0

    @State
    var scrollerForScroll: Scroller = Scroller()

    @State
    var xOffset: Float64 = 0.0

    @State
    var yOffset: Float64 = 0.0

    @State
    var myEdge = ""

    @State
    var myScrollEnd = ""

    @State
    var myscrollPage = true

    func build() {
        Stack(alignContent:Alignment.TopStart) {
            Scroll(this.scroller) {
                Column {
                    ForEach(
                        this.arr,
                        itemGeneratorFunc: {
                            item: String, idx: Int64 => Text(item.toString())
                                .width(90.percent)
                                .height(150)
                                .backgroundColor(0xFFFFFF)
                                .borderRadius(15)
                                .fontSize(16)
                                .textAlign(TextAlign.Center)
                                .margin(top: 10)
                                .id("${item}")
                        }
                    )
                }
            }
                .id("Scroll_component")
                .scrollable(ScrollDirection.Vertical)
                .scrollBar(BarState.On)
                .scrollBarColor(Color.Gray)
                .scrollBarWidth(50.px)

                .onScrollEdge(
                    {
                        edge => myEdge = match (edge) {
                            case Top => "Top"
                            case Bottom => "Bottom"
                            case Start => "Start"
                            case End => "End"
                            case _ => ""
                        }
                    })

                .onScrollFrameBegin(
                    {
                        offset, state =>
                        if ((listPosition == 0 && offset <= 0.0) || (listPosition == 2 && offset >= 0.0)) {
                            scrollerForScroll.scrollBy(xOffset: 0.0, yOffset: offset)
                            return 0.0
                        }
                        listPosition = 1
                        return offset
                    }
                )
            Button("scroll Bottom")
                .onClick({
                    evt => this.scroller.scrollEdge(Edge.Bottom)
                })
                .margin(top: 80, left: 20)
                .id("scrollBottom")

            Button("scroll Top")
                .onClick({
                    evt => this.scroller.scrollEdge(Edge.Top)
                })
                .margin(top: 160, left: 20)
                .id("scrollTop")

            Button("scroll to")
                .onClick(
                    {
                        evt =>
                        Hilog.info(0, "","cangjietest", "scrollto--${this.scroller.currentOffset().getOrThrow().yOffset}")
                        this
                            .scroller
                            .scrollTo(xOffset: 0.vp, yOffset: (this.scroller.currentOffset().getOrThrow().yOffset + 100.0).vp)
                    }
                )
                .margin(top: 10, left: 20)
                .id("scrollTo")

            Button("scroll Page")
                .onClick({
                    evt => this.scroller.scrollPage(true,animation:false)
                })
                .margin(top: 240, left: 20)
                .id("scrollPage")

            Text("${xOffset}").id("textxOffset").margin(top: 320, left: 20)

            Text("${yOffset}").id("textyOffset").margin(top: 400, left: 20)

            Text("${myEdge}").id("myEdge").margin(top: 480, left: 20)

            Text("${myScrollEnd}").id("myScrollEnd").margin(top: 560, left: 20)

            Text("${listPosition}").id("listPosition").margin(top: 640, left: 20)
        }.width(100.percent).height(100.percent).backgroundColor(0xDCDCDC)
    }
}
