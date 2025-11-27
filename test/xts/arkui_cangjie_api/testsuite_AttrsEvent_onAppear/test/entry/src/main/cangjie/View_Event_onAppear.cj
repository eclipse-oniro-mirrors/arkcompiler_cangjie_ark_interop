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
import kit.LocalizationKit.{AppResource}
import std.collection.ArrayList
import std.convert.*
import stdx.encoding.json.JsonValue
import ohos.web.webview.WebviewController
import ohos.arkui.state_macro_manage.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.base.*
import ohos.arkui.ui_context.Router

@Entry
@Component
class View_EmptyAttrs_onAppear {
    @State
    var targetView = ""
    @State
    var parentHeight: Length = 800.vp
    @State
    var parentWidth: Length = 400.vp
    @State
    var parentBackGroundColor: Color = Color(0xE1FFFF)

    let scroller = Scroller()
    let webController = WebviewController()
    let swiperController = SwiperController()
    let richEditorController = RichEditorController()
    var isRefreshing: Bool = false

    let renderFlag = false //跳过if
    let Colors = [Color(0x98FB98), Color(0x317aff), Color(0xFFD700), Color(0xFFE4E1), Color(0xAB82FF)]

    @State
    var isShow: Bool = true
    var changeAppear: String = "Click To Change Appear Status"
    @State
    var appearStatus: String = "Waitting To Trigger Event"

    protected override func aboutToAppear() {
        this.targetView = getUIContext().getRouter().getParams().getOrThrow()
    }
    func build() {
        Scroll() {
            Column(space:5) {
                Button(this.changeAppear).id("changeAppear").onClick({
                    evt => this.isShow = !this.isShow
                }).margin(15.vp)

                Text(this.appearStatus).id("appearStatus").fontSize(26).fontWeight(FontWeight.Bold)

                if (this.renderFlag) {}
                else if (this.targetView == "AlphabetIndexer") {
                    if (this.isShow) {
                        Text("AlphabetIndexer: Attrs_Event_onAppear")
                        AlphabetIndexer(arrayValue: ["#", "A", "B", "C", "D"], selected: 0)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Blank") {
                    if (this.isShow) {
                        Text("Blank: Attrs_Event_onAppear")
                        Blank(min: 10)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Button") {
                    if (this.isShow) {
                        Text("Button: Attrs_Event_onAppear")
                        Button {Text("Button").width(90.percent).height(90.percent).backgroundColor(Color.Gray)}
                            .shape(ButtonType.Normal)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Checkbox") {
                    if (this.isShow) {
                        Text("Checkbox: Attrs_Event_onAppear")
                        Checkbox()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "CheckboxGroup") {
                    if (this.isShow) {
                        Text("CheckboxGroup: Attrs_Event_onAppear")
                        CheckboxGroup()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "DataPanel") {
                    if (this.isShow) {
                        Text("DataPanel: Attrs_Event_onAppear")
                        DataPanel(values: [30.0])
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "DatePicker") {
                    if (this.isShow) {
                        Text("DatePicker: Attrs_Event_onAppear")
                        DatePicker()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Divider") {
                    if (this.isShow) {
                        Text("Divider: Attrs_Event_onAppear")
                        Divider()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Gauge") {
                    if (this.isShow) {
                        Text("Gauge: Attrs_Event_onAppear")
                        Gauge(value: 50.0, min: 0.0, max: 100.0) {
                            Text("Gauge").width(50.percent).height(50.percent).backgroundColor(Color.Red)
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Image") {
                    if (this.isShow) {
                        Text("Image: Attrs_Event_onAppear")
                        Image(@r(app.media.startIcon))
                            .objectFit(ImageFit.Contain)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "ImageSpan") {
                    if (this.isShow) {
                        Text("ImageSpan: Attrs_Event_onAppear")
                        Text() {
                            ImageSpan(@r(app.media.startIcon))
                                .objectFit(ImageFit.Contain)
                                .id(this.targetView + "onAppear")
                                .width(80.percent)
                                .height(20.percent)
                                .backgroundColor(this.Colors[0])
                                .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                                .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                        }
                    }
                } else if (this.targetView == "LoadingProgress") {
                    if (this.isShow) {
                        Text("LoadingProgress: Attrs_Event_onAppear")
                        LoadingProgress()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Menu") {
                    if (this.isShow) {
                        Text("Menu: Attrs_Event_onAppear")

                        Menu() {
                            MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                    .width(80.percent)
                                    .height(80.percent)
                                    .backgroundColor(this.Colors[2])
                            }.width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "MenuItem") {
                    if (this.isShow) {
                        Text("MenuItem: Attrs_Event_onAppear")
                        Menu() {
                            MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                    .id(this.targetView + "onAppear")
                                    .width(80.percent)
                                    .height(20.percent)
                                    .backgroundColor(this.Colors[0])
                                    .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                                    .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                            }.width(80.percent).height(80.percent)
                        }.width(80.percent).height(10.percent)
                    }
                } else if (this.targetView == "MenuItemGroup") {
                    if (this.isShow) {
                        Text("MenuItemGroup: Attrs_Event_onAppear")
                        Menu() {
                            MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                    .width(80.percent)
                                    .height(80.percent)
                            }
                                .id(this.targetView + "onAppear")
                                .width(80.percent)
                                .height(20.percent)
                                .backgroundColor(this.Colors[0])
                                .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                                .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                        }.width(80.percent).height(10.percent)
                    }
                } else if (this.targetView == "Progress") {
                    if (this.isShow) {
                        Text("Progress: Attrs_Event_onAppear")
                        Progress(value: 10.0)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "QRCode") {
                    if (this.isShow) {
                        Text("QRCode: Attrs_Event_onAppear")
                        QRCode(targetView)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Radio") {
                    if (this.isShow) {
                        Text("Radio: Attrs_Event_onAppear")
                        Radio(group: "1", value: "A")
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Rating") {
                    if (this.isShow) {
                        Text("Rating: Attrs_Event_onAppear")
                        Rating(rating: 3.5, indicator: false)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Refresh") {
                    if (this.isShow) {
                        Text("Refresh: Attrs_Event_onAppear")
                        Refresh(RefreshOptions(refreshing: @Binder(this.isRefreshing))) {
                            Text("1").width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "RichEditor") {
                    if (this.isShow) {
                        Text("RichEditor: Attrs_Event_onAppear")
                        RichEditor(richEditorController)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "RichText") {
                    if (this.isShow) {
                        Text("RichText: Attrs_Event_onAppear")
                        RichText("""
<p style="font-size: 35px;color: rgb(24,78,228)">Text</p> """)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "RowSplit") {
                    if (this.isShow) {
                        Text("RowSplit: Attrs_Event_onAppear")
                        RowSplit() {
                            Text("1")
                                .width(10.percent)
                                .height(80.percent)
                                .backgroundColor(0xF5DEB3)
                                .textAlign(TextAlign.Center)
                            Text("2")
                                .width(10.percent)
                                .height(80.percent)
                                .backgroundColor(0xD2B48C)
                                .textAlign(TextAlign.Center)
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "ScrollBar") {
                    if (this.isShow) {
                        Text("ScrollBar: Attrs_Event_onAppear")

                        Scroll(this.scroller) {
                            Flex(direction: FlexDirection.Column, alignItems: ItemAlign.Start) {
                                ForEach(
                                    ObservedArrayList<Int64>([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
                                    itemGeneratorFunc: {
                                        item: Int64, idx: Int64 => Row() {
                                            Text(item.toString())
                                                .width(90.percent)
                                                .height(50)
                                                .backgroundColor(0x3366CC)
                                                .fontSize(16)
                                                .textAlign(TextAlign.Center)
                                        }
                                    }
                                )
                            }
                        }.height(150).scrollBar(BarState.Off).scrollable(ScrollDirection.Vertical)
                        ScrollBar(scroller:this.scroller, direction:ScrollBarDirection.Vertical, state:BarState.On) {
                            Text("").width(100).height(50).borderRadius(10).backgroundColor(0xC0C0C0)
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Search") {
                    if (this.isShow) {
                        Text("Search: Attrs_Event_onAppear")
                        Search(value: "", placeholder: "Type to search")
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Slider") {
                    if (this.isShow) {
                        Text("Slider: Attrs_Event_onAppear")
                        Slider()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Stepper") {
                    if (this.isShow) {
                        Text("Stepper: Attrs_Event_onAppear")
                        Stepper(index:0) {
                            StepperItem() {
                                Text("Page One").width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                            }.width(80.percent).height(80.percent)
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "StepperItem") {
                    if (this.isShow) {
                        Text("StepperItem: Attrs_Event_onAppear")
                        Stepper(index:0) {
                            StepperItem() {
                                Text("Page One").width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                            }
                                .id(this.targetView + "onAppear")
                                .width(80.percent)
                                .height(20.percent)
                                .backgroundColor(this.Colors[0])
                                .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                                .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                        }.width(80.percent).height(10.percent)
                    }
                } else if (this.targetView == "Text") {
                    if (this.isShow) {
                        Text("Text: Attrs_Event_onAppear")
                        Text(targetView)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "TextArea") {
                    if (this.isShow) {
                        Text("TextArea: Attrs_Event_onAppear")
                        TextArea(text: targetView)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "TextClock") {
                    if (this.isShow) {
                        Text("TextClock: Attrs_Event_onAppear")
                        TextClock()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "TextInput") {
                    if (this.isShow) {
                        Text("TextInput: Attrs_Event_onAppear")
                        TextInput(placeholder: "TextInput")
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "TextPicker") {
                    if (this.isShow) {
                        Text("TextPicker: Attrs_Event_onAppear")
                        TextPicker(range:["apple", "banana", "orange", "peach"])
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "TextTimer") {
                    if (this.isShow) {
                        Text("TextTimer: Attrs_Event_onAppear")
                        TextTimer(isCountDown: true, count: 30000, controller: TextTimerController())
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Toggle") {
                    if (this.isShow) {
                        Text("Toggle: Attrs_Event_onAppear")
                        Toggle(ToggleType.Switch, isOn: false)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Web") {
                    if (this.isShow) {
                        Text("Web: Attrs_Event_onAppear")
                        Web(src: "www.baidu.com", controller: webController)
                            .onPageBegin({evt => Hilog.info(0,"", "cangjietest", "page begin url: ${evt.url}")})
                            .onPageEnd({evt => Hilog.info(0,"", "cangjietest", "page end url: ${evt.url}")})
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Select") {
                    if (this.isShow) {
                        Text("Select: Attrs_Event_onAppear")
                        Select(
                            [SelectOptions(value:"aaa", icon: @r(app.media.startIcon)),
                                SelectOptions(value:"bbb", icon: @r(app.media.startIcon))])
                            .value("Select")
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Badge") {
                    if (this.isShow) {
                        Text("Badge: Attrs_Event_onAppear")
                        Badge(count: 1, style: BadgeStyle(color: this.Colors[2])) {
                            Button("message").width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Column") {
                    if (this.isShow) {
                        Text("Column: Attrs_Event_onAppear")

                        Column() {
                            Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Grid") {
                    if (this.isShow) {
                        Text("Grid: Attrs_Event_onAppear")
                        Grid ( child:{=>
                            GridItem ({=>
                                Text("Message").width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                            }).width(80.percent).height(80.percent)
                        })
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "GridItem") {
                    if (this.isShow) {
                        Text("GridItem: Attrs_Event_onAppear")
                        Grid( child:{=>
                            GridItem ({=>
                                Text("Message").width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                            })
                                .id(this.targetView + "onAppear")
                                .width(80.percent)
                                .height(20.percent)
                                .backgroundColor(this.Colors[0])
                                .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                                .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                        }).width(80.percent).height(10.percent)
                    }
                } else if (this.targetView == "GridRow") {
                    if (this.isShow) {
                        Text("GridRow: Attrs_Event_onAppear")
                        GridRow() {
                            GridCol() {
                                Row().width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                            }.width(80.percent).height(80.percent)
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "GridCol") {
                    if (this.isShow) {
                        Text("GridCol: Attrs_Event_onAppear")
                        GridRow() {
                            GridCol() {
                                Row().width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                            }
                                .id(this.targetView + "onAppear")
                                .width(80.percent)
                                .height(20.percent)
                                .backgroundColor(this.Colors[0])
                                .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                                .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                        }.width(80.percent).height(10.percent)
                    }
                } else if (this.targetView == "Flex") {
                    if (this.isShow) {
                        Text("Flex: Attrs_Event_onAppear")
                        Flex() {
                            Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "List") {
                    if (this.isShow) {
                        Text("List: Attrs_Event_onAppear")
                        List() {
                            ListItemGroup(space: 5) {
                                ListItem() {
                                    Text("Text").width(80.percent).height(40.percent).backgroundColor(this.Colors[3])
                                }.width(80.percent).height(80.percent)
                            }.width(80.percent).height(80.percent)
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "ListItem") {
                    if (this.isShow) {
                        Text("ListItem: Attrs_Event_onAppear")
                        List() {
                            ListItemGroup(space: 5) {
                                ListItem() {
                                    Text("Text").width(80.percent).height(40.percent).backgroundColor(this.Colors[3])
                                }
                                    .id(this.targetView + "onAppear")
                                    .width(80.percent)
                                    .height(20.percent)
                                    .backgroundColor(this.Colors[0])
                                    .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                                    .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                            }.width(80.percent).height(80.percent)
                        }.width(80.percent).height(10.percent)
                    }
                } else if (this.targetView == "ListItemGroup") {
                    if (this.isShow) {
                        Text("ListItemGroup: Attrs_Event_onAppear")
                        List() {
                            ListItemGroup(space: 5) {
                                ListItem() {
                                    Text("Text").width(80.percent).height(40.percent).backgroundColor(this.Colors[3])
                                }.width(80.percent).height(80.percent)
                            }
                                .id(this.targetView + "onAppear")
                                .width(80.percent)
                                .height(20.percent)
                                .backgroundColor(this.Colors[0])
                                .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                                .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                        }.width(80.percent).height(10.percent)
                    }
                } else if (this.targetView == "RelativeContainer") {
                    if (this.isShow) {
                        Text("RelativeContainer: Attrs_Event_onAppear")

                        RelativeContainer() {
                            Text("Text").width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Row") {
                    if (this.isShow) {
                        Text("Row: Attrs_Event_onAppear")

                        Row() {
                            Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Scroll") {
                    if (this.isShow) {
                        Text("Scroll: Attrs_Event_onAppear")

                        Scroll() {
                            Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Stack") {
                    if (this.isShow) {
                        Text("Stack: Attrs_Event_onAppear")

                        Stack() {
                            Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Swiper") {
                    if (this.isShow) {
                        Text("Swiper: Attrs_Event_onAppear")

                        Swiper(controller:SwiperController()) {
                            Text("1").width(80.percent).height(80.percent)
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Tabs") {
                    if (this.isShow) {
                        Text("Tabs: Attrs_Event_onAppear")
                        Tabs() {
                            TabContent {
                                Column().width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                            }.tabBar("1").width(80.percent).height(80.percent)
                        }
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "TabContent") {
                    if (this.isShow) {
                        Text("TabContent: Attrs_Event_onAppear")
                        Tabs() {
                            TabContent {
                                Column().width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                            }
                                .tabBar("1")
                                .id(this.targetView + "onAppear")
                                .width(80.percent)
                                .height(20.percent)
                                .backgroundColor(this.Colors[0])
                                .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                                .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                        }.width(80.percent).height(10.percent)
                    }
                } else if (this.targetView == "Circle") {
                    if (this.isShow) {
                        Text("Circle: Attrs_Event_onAppear")
                        Circle()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Line") {
                    if (this.isShow) {
                        Text("Line: Attrs_Event_onAppear")
                        Line()
                            .startPoint((0.0, 0.0))
                            .endPoint((10.0, 20.0))
                            .stroke(Color.Black)
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Rect") {
                    if (this.isShow) {
                        Text("Rect: Attrs_Event_onAppear")
                        Rect()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Shape") {
                    if (this.isShow) {
                        Text("Shape: Attrs_Event_onAppear")
                        Shape() {Rect().width(80.percent).height(80.percent).backgroundColor(this.Colors[1])}
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Path") {
                    if (this.isShow) {
                        Text("Path: Attrs_Event_onAppear")
                        Path()
                            .commands("M0 0 H200 V200 H0 Z")
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Canvas") {
                    if (this.isShow) {
                        Text("Canvas: Attrs_Event_onAppear")
                        Canvas(CanvasRenderingContext2D(RenderingContextSettings(antialias: true)))
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Video") {
                    if (this.isShow) {
                        Text("Video: Attrs_Event_onAppear")
                        Video()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "FlowItem") {
                    if (this.isShow) {
                        Text("FlowItem: Attrs_Event_onAppear")

                    }
                } else if (this.targetView == "Counter") {
                    if (this.isShow) {
                        Text("Counter: Attrs_Event_onAppear")
                        Counter() {}
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "PatternLock") {
                    if (this.isShow) {
                        Text("PatternLock: Attrs_Event_onAppear")
                        PatternLock()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                } else if (this.targetView == "Ellipse") {
                    if (this.isShow) {
                        Text("Ellipse: Attrs_Event_onAppear")
                        Ellipse()
                            .id(this.targetView + "onAppear")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onAppear ({=> this.appearStatus = "Trigger OnAppear Success"})
                            .onDisAppear ({=> this.appearStatus = "Trigger onDisAppear Success"})
                    }
                }
            }
        }.id("Scroll").height(this.parentHeight).width(this.parentWidth).backgroundColor(this.parentBackGroundColor)
    }
}
