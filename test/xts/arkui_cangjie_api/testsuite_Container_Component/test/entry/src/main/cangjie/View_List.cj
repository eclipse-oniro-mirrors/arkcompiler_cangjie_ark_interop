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

public class Item {
    public Item(
        let text: String,
        let color: Color,
        let width: Length
    ) {}
}

@Entry
@Component
class View_List {
    @Builder
    func HeaderBuilder(context: String) {
        Row {
            Text("Header" + context).fontSize(20.vp)
        }.width(100.percent).justifyContent(FlexAlign.Center).margin(top: 10.vp)
    }

    @Builder
    func FooterBuilder(context: String) {
        Row {
            Text("Footer" + context).fontSize(20.vp)
        }.width(100.percent).justifyContent(FlexAlign.Center).margin(left: 10.vp)
    }
    @State
    var editFlag: Bool = false
    @State
    var scroller: Scroller = Scroller()
    @State
    var controller: TabsController = TabsController()
    @State
    var offset: Float64 = 0.00
    @State
    var Text_01: Int32 = 0
    @State
    var initialIndex: Int32 = 0
    @State
    var Text_02: Int32 = 0
    @State
    var Text_03: Int32 = 0
    @State
    var Text_04: Int32 = 0
    @State
    var Text_05: Int32 = 0
    func build() {
        Stack(alignContent:Alignment.TopStart) {
            Scroll(this.scroller) {
                Column() {
                    List(space: 40, initialIndex: 0) {
                        ListItemGroup(header: {=> bind(HeaderBuilder, this)("1")},
                                footer: {=> bind(FooterBuilder, this)("1")}, space: 10.vp) {
                            ListItem() {
                                Text("Sticky")
                                    .fontSize(100)
                                    .textAlign(TextAlign.Center)
                                    .borderRadius(10.px)
                                    .backgroundColor(Color.Red)
                                    .width(100.percent)
                            }.id("Test_ListItem_01").selectable(true).swipeAction(edgeEffect: SwipeEdgeEffect.Spring)
                            ListItem() {
                                Text("Sticky")
                                    .fontSize(100)
                                    .textAlign(TextAlign.Center)
                                    .borderRadius(10.px)
                                    .backgroundColor(Color.Red)
                                    .width(100.percent)
                            }.id("Test_ListItem_02")
                            ListItem() {
                                Text("Sticky")
                                    .fontSize(100)
                                    .textAlign(TextAlign.Center)
                                    .borderRadius(10.px)
                                    .backgroundColor(Color.Red)
                                    .width(100.percent)
                            }.id("Test_ListItem_03")
                            ListItem() {
                                Text("Sticky")
                                    .fontSize(100)
                                    .textAlign(TextAlign.Center)
                                    .borderRadius(10.px)
                                    .backgroundColor(Color.Red)
                                    .width(100.percent)
                            }.id("Test_ListItem_04")
                            ListItem() {
                                Text("Sticky")
                                    .fontSize(100)
                                    .textAlign(TextAlign.Center)
                                    .borderRadius(10.px)
                                    .backgroundColor(Color.Red)
                                    .width(100.percent)
                            }.id("Test_ListItem_05")
                            ListItem() {
                                Text("Sticky")
                                    .fontSize(100)
                                    .textAlign(TextAlign.Center)
                                    .borderRadius(10.px)
                                    .backgroundColor(Color.Red)
                                    .width(100.percent)
                            }.id("Test_ListItem_06")
                            ListItem() {
                                Text("Sticky")
                                    .fontSize(100)
                                    .textAlign(TextAlign.Center)
                                    .borderRadius(10.px)
                                    .backgroundColor(Color.Red)
                                    .width(100.percent)
                            }.id("Test_ListItem_07")
                        }
                            .id("Test_ListItemGroup")
                            .divider(ListDividerOptions(strokeWidth: 10.vp, color: Color.Blue, startMargin: 10.vp, endMargin: 10.vp))
                    }
                        .listDirection(Axis.Vertical)
                        .divider(ListDividerOptions(strokeWidth: 100.vp, color: Color.Green, startMargin: 10.vp, endMargin: 10.vp))
                        .scrollBar(BarState.Auto)
                        .cachedCount(5)
                        .edgeEffect(EdgeEffect.Spring)
                        .chainAnimation(true)
                        .multiSelectable(true)
                        .alignListItem(ListItemAlign.Center)
                        .sticky(StickyStyle.Footer)
                        .id("Test_List")
                        .lanes(1)
                        .nestedScroll(NestedScrollOptions(NestedScrollMode.SelfFirst, NestedScrollMode.SelfFirst))
                    Text("${this.offset}").id("Test_Text_01")
                    Text("${this.Text_01}").id("Test_Text_02")
                    Text("${this.Text_02}").id("Test_Text_03")
                    Text("${this.Text_03}").id("Test_Text_04")
                    Text("${this.Text_04}").id("Test_Text_05")
                    Text("${this.Text_05}").id("Test_Text_06")
                    List(space: 40, initialIndex: 5) {
                        ListItem() {
                            Text("Sticky")
                                .fontSize(60.px)
                                .textAlign(TextAlign.Center)
                                .borderRadius(10.px)
                                .backgroundColor(Color.Red)
                                .width(100.percent)
                        }
                        ListItem() {
                            Text("Sticky")
                                .fontSize(60.px)
                                .textAlign(TextAlign.Center)
                                .borderRadius(10.px)
                                .backgroundColor(Color.Red)
                                .width(100.percent)
                        }
                        ListItem() {
                            Text("Sticky")
                                .fontSize(60.px)
                                .textAlign(TextAlign.Center)
                                .borderRadius(10.px)
                                .backgroundColor(Color.Red)
                                .width(100.percent)
                        }
                        ListItem() {
                            Text("Sticky")
                                .fontSize(60.px)
                                .textAlign(TextAlign.Center)
                                .borderRadius(10.px)
                                .backgroundColor(Color.Red)
                                .width(100.percent)
                        }
                        ListItem() {
                            Text("Sticky")
                                .fontSize(60.px)
                                .textAlign(TextAlign.Center)
                                .borderRadius(10.px)
                                .backgroundColor(Color.Red)
                                .width(100.percent)
                        }
                    }
                        .nestedScroll(NestedScrollOptions(NestedScrollMode.SelfFirst, NestedScrollMode.SelfFirst))
                        .height(200)
                        .onScrollIndex ({
                            first: Int32, initialIndex: Int32, last: Int32 =>
                            this.Text_01 = first
                            this.initialIndex = initialIndex
                            this.Text_02 = last
                        })
                        .onReachStart({
                            => this.Text_03 = 1
                        })
                        .onReachEnd({=> this.Text_04 = 1})
                        .onScrollStart({=> Test_List_Component.counter_01.fetchAdd(1)})
                        .onScrollStop({=> this.Text_05 = 2})
                }
            }
        }
    }
}
