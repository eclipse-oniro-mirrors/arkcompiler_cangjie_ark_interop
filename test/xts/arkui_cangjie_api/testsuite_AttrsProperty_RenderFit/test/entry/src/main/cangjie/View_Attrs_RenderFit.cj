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
import ohos.arkui.state_macro_manage.*
import ohos.arkui.state_macro_manage.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.base.*
import ohos.arkui.ui_context.Router

@Entry
@Component
class View_EmptyAttrs_RenderFit {
    @State
    var targetView = ""
    @State
    var parentHeight: Length = 800.vp
    @State
    var parentWidth: Length = 400.vp
    @State
    var parentBackGroundColor: Color = Color(0xE1FFFF)
    @State
    var BackGroundColor: Color = Color.Green
    @State
    var TouchHotZoneText: String = ""
    @State
    var RenderFitWidth: Length = 60.percent
    @State
    var RenderFitHeight: Length = 80.vp
    @State
    var RenderFitWidth1: Length = 80.percent
    @State
    var RenderFitHeight1: Length = 100.vp
    @State
    var RenderFitWidth2: Length = 60.percent
    @State
    var RenderFitHeight2: Length = 80.vp
    @State
    var RenderFitFlag: Bool = true

    let scroller = Scroller()
    let webController = WebviewController()
    let richEditorController = RichEditorController()
    @State
    var isShowPopup: Bool = false
    @State
    var isShowPopupBuilder: Bool = false

    @State
    var isRefreshing: Bool = false

    let renderFlag = false //跳过if
    let Colors = [Color(0x98FB98), Color(0x317aff), Color(0xFFD700), Color(0xFFE4E1), Color(0xAB82FF)]

    protected override func aboutToAppear() {
        this.targetView = getUIContext().getRouter().getParams().getOrThrow()
    }
    func build() {
        Scroll() {
            Column() {
                ForEach(
                    ObservedArrayList<(String, RenderFit, String)>(RenderFit_Prop_List),
                    itemGeneratorFunc: {
                        RenderFit_Prop: (String, RenderFit, String), idx: Int64 => if (this.renderFlag) {}
                        else if (this.targetView == "AlphabetIndexer") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("AlphabetIndexer : ${RenderFit_Prop[0]}")
                            Column() {
                                AlphabetIndexer(arrayValue: ["#", "A", "B", "C", "D"], selected: 0)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Blank") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Blank : ${RenderFit_Prop[0]}")
                            Column() {
                                Blank(min: 10)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Button") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Button : ${RenderFit_Prop[0]}")
                            Column() {
                                Button {Text("Button").width(90.percent).height(90.percent).backgroundColor(Color.Gray)}
                                    .shape(ButtonType.Normal)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Checkbox") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Checkbox : ${RenderFit_Prop[0]}")
                            Column() {
                                Checkbox()
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "CheckboxGroup") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("CheckboxGroup : ${RenderFit_Prop[0]}")
                            Column() {
                                CheckboxGroup()
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        }else if (this.targetView == "DataPanel") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("DataPanel : ${RenderFit_Prop[0]}")
                            Column() {
                                DataPanel(values: [30.0])
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "DatePicker") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("DatePicker : ${RenderFit_Prop[0]}")
                            Column() {
                                DatePicker()
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Divider") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Divider : ${RenderFit_Prop[0]}")
                            Column() {
                                Divider()
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Gauge") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Gauge : ${RenderFit_Prop[0]}")
                            Column() {
                                Gauge(value: 50.0, min: 0.0, max: 100.0) {
                                    Text("Gauge").width(50.percent).height(50.percent).backgroundColor(Color.Red)
                                }
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Image") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Image : ${RenderFit_Prop[0]}")
                            Column() {
                                Image(@r(app.media.startIcon))
                                    .objectFit(ImageFit.Contain)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "ImageSpan") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("ImageSpan : ${RenderFit_Prop[0]}")
                            Column() {
                                Text() {
                                    ImageSpan(@r(app.media.startIcon))
                                        .objectFit(ImageFit.Contain)
                                        .id(this.targetView + RenderFit_Prop[0])
                                        .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                        .renderFit(RenderFit_Prop[1])
                                        .width(this.RenderFitWidth)
                                        .height(this.RenderFitHeight)
                                        .animationEnd()
                                }.width(80.percent).height(100.percent).backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "LoadingProgress") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("LoadingProgress : ${RenderFit_Prop[0]}")
                            Column() {
                                LoadingProgress()
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Menu") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Menu : ${RenderFit_Prop[0]}")
                            Column() {
                                Menu() {
                                    MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                        MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }.width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                                    .backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "MenuItem") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("MenuItem : ${RenderFit_Prop[0]}")
                            Column() {
                                Menu() {
                                    MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                        MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                            .id(this.targetView + RenderFit_Prop[0])
                                            .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                            .renderFit(RenderFit_Prop[1])
                                            .width(this.RenderFitWidth)
                                            .height(this.RenderFitHeight)
                                            .animationEnd()
                                            .backgroundColor(this.Colors[2])
                                    }.width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                                }.width(80.percent).height(100).backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "MenuItemGroup") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("MenuItemGroup : ${RenderFit_Prop[0]}")
                            Column() {
                                Menu() {
                                    MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                        MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + RenderFit_Prop[0])
                                        .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                        .renderFit(RenderFit_Prop[1])
                                        .width(this.RenderFitWidth)
                                        .height(this.RenderFitHeight)
                                        .animationEnd()
                                        .backgroundColor(this.Colors[1])
                                }.width(80.percent).height(100).backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Progress") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Progress : ${RenderFit_Prop[0]}")
                            Column() {
                                Progress(value: 10.0)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "QRCode") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("QRCode : ${RenderFit_Prop[0]}")
                            Column() {
                                QRCode(targetView)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Radio") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Radio : ${RenderFit_Prop[0]}")
                            Column() {
                                Radio(group: "1", value: "A")
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Rating") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Rating : ${RenderFit_Prop[0]}")
                            Column() {
                                Rating(rating: 3.5, indicator: false)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Refresh") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Refresh : ${RenderFit_Prop[0]}")
                            Column() {
                                Refresh(RefreshOptions(refreshing: @Binder(this.isRefreshing))) {
                                    Text("1").width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "RichEditor") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("RichEditor : ${RenderFit_Prop[0]}")
                            Column() {
                                RichEditor(richEditorController)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "RowSplit") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("RowSplit : ${RenderFit_Prop[0]}")
                            Column() {
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
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "ScrollBar") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("ScrollBar : ${RenderFit_Prop[0]}")
                            Column() {
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
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Search") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Search : ${RenderFit_Prop[0]}")
                            Column() {
                                Search(value: "", placeholder: "Type to search")
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Slider") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Slider : ${RenderFit_Prop[0]}")
                            Column() {
                                Slider()
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Stepper") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Stepper : ${RenderFit_Prop[0]}")
                            Column() {
                                Stepper(index:0) {
                                    StepperItem() {
                                        Text("Page One")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }.width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                                    .backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "StepperItem") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("StepperItem : ${RenderFit_Prop[0]}")
                            Column() {
                                Stepper(index:0) {
                                    StepperItem() {
                                        Text("Page One")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + RenderFit_Prop[0])
                                        .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                        .renderFit(RenderFit_Prop[1])
                                        .width(this.RenderFitWidth)
                                        .height(this.RenderFitHeight)
                                        .animationEnd()
                                        .backgroundColor(this.Colors[1])
                                }.width(80.percent).height(100).backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Text") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Text : ${RenderFit_Prop[0]}")
                            Column() {
                                Text(targetView)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "TextArea") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("TextArea : ${RenderFit_Prop[0]}")
                            Column() {
                                TextArea(text: targetView)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "TextClock") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("TextClock : ${RenderFit_Prop[0]}")
                            Column() {
                                TextClock()
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "TextInput") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("TextInput : ${RenderFit_Prop[0]}")
                            Column() {
                                TextInput(placeholder: "TextInput")
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "TextPicker") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("TextPicker : ${RenderFit_Prop[0]}")
                            Column() {
                                TextPicker(range:["apple", "banana", "orange", "peach"])
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "TextTimer") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("TextTimer : ${RenderFit_Prop[0]}")
                            Column() {
                                TextTimer(isCountDown: true, count: 30000, controller: TextTimerController())
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Toggle") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Toggle : ${RenderFit_Prop[0]}")
                            Column() {
                                Toggle(ToggleType.Switch, isOn: false)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Web") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Web : ${RenderFit_Prop[0]}")
                            Column() {
                                Web(src: "www.baidu.com", controller: webController)
                                    .onPageBegin({evt => Hilog.info(0, "cangjietest", "page begin url: ${evt.url}")})
                                    .onPageEnd({evt => Hilog.info(0, "cangjietest", "page end url: ${evt.url}")})
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Select") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Select : ${RenderFit_Prop[0]}")
                            Column() {
                                Select(
                                    [SelectOptions(value:"aaa", icon: @r(app.media.startIcon)),
                                        SelectOptions(value:"bbb", icon: @r(app.media.startIcon))])
                                    .value("Select")
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Badge") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Badge : ${RenderFit_Prop[0]}")
                            Column() {
                                Badge(count: 1, style: BadgeStyle(color: this.Colors[2])) {
                                    Button("message")
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Column") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Column : ${RenderFit_Prop[0]}")
                            Column() {
                                Column() {
                                    Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Grid") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Grid : ${RenderFit_Prop[0]}")
                            Column() {
                                Grid ( child:{=>
                                    GridItem ({=>
                                        Text("Message")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }).width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                                })
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                                    .backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "GridItem") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("GridItem : ${RenderFit_Prop[0]}")
                            Column() {
                                Grid ( child:{=>
                                    GridItem ({=>
                                        Text("Message")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    })
                                        .id(this.targetView + RenderFit_Prop[0])
                                        .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                        .renderFit(RenderFit_Prop[1])
                                        .width(this.RenderFitWidth)
                                        .height(this.RenderFitHeight)
                                        .animationEnd()
                                        .backgroundColor(this.Colors[1])
                                }).width(80.percent).height(100).backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "GridRow") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("GridRow : ${RenderFit_Prop[0]}")
                            Column() {
                                GridRow() {
                                    GridCol() {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }.width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                                    .backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "GridCol") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("GridCol : ${RenderFit_Prop[0]}")
                            Column() {
                                GridRow() {
                                    GridCol() {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + RenderFit_Prop[0])
                                        .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                        .renderFit(RenderFit_Prop[1])
                                        .width(this.RenderFitWidth)
                                        .height(this.RenderFitHeight)
                                        .animationEnd()
                                        .backgroundColor(this.Colors[1])
                                }.width(80.percent).height(100).backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Flex") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Flex : ${RenderFit_Prop[0]}")
                            Column() {
                                Flex() {
                                    Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "List") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("List : ${RenderFit_Prop[0]}")
                            Column() {
                                List() {
                                    ListItemGroup() {
                                        ListItem() {
                                            Text("Text")
                                                .width(80.percent)
                                                .height(80.percent)
                                                .backgroundColor(this.Colors[3])
                                        }.width(80.percent).height(80.percent).backgroundColor(this.Colors[2])
                                    }.width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                                    .backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "ListItem") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("ListItem : ${RenderFit_Prop[0]}")
                            Column() {
                                List() {
                                    ListItemGroup() {
                                        ListItem() {
                                            Text("Text")
                                                .width(80.percent)
                                                .height(80.percent)
                                                .backgroundColor(this.Colors[3])
                                        }
                                            .id(this.targetView + RenderFit_Prop[0])
                                            .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                            .renderFit(RenderFit_Prop[1])
                                            .width(this.RenderFitWidth)
                                            .height(this.RenderFitHeight)
                                            .animationEnd()
                                            .backgroundColor(this.Colors[2])
                                    }.width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                                }.width(80.percent).height(100).backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "ListItemGroup") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("ListItemGroup : ${RenderFit_Prop[0]}")
                            Column() {
                                List() {
                                    ListItemGroup() {
                                        ListItem() {
                                            Text("Text")
                                                .width(80.percent)
                                                .height(80.percent)
                                                .backgroundColor(this.Colors[3])
                                        }.width(80.percent).height(80.percent).backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + RenderFit_Prop[0])
                                        .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                        .renderFit(RenderFit_Prop[1])
                                        .width(this.RenderFitWidth)
                                        .height(this.RenderFitHeight)
                                        .animationEnd()
                                        .backgroundColor(this.Colors[1])
                                }.width(80.percent).height(100).backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        }  else if (this.targetView == "RelativeContainer") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("RelativeContainer : ${RenderFit_Prop[0]}")
                            Column() {
                                RelativeContainer() {
                                    Text("Text").width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Row") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Row : ${RenderFit_Prop[0]}")
                            Column() {
                                Row() {
                                    Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Scroll") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Scroll : ${RenderFit_Prop[0]}")
                            Column() {
                                Scroll() {
                                    Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Stack") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Stack : ${RenderFit_Prop[0]}")
                            Column() {
                                Stack() {
                                    Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Swiper") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Swiper : ${RenderFit_Prop[0]}")
                            Column() {
                                Swiper(controller:SwiperController()) {
                                    Text("1").width(80.percent).height(80.percent)
                                }
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Tabs") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Tabs : ${RenderFit_Prop[0]}")
                            Column() {
                                Tabs() {
                                    TabContent {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }.tabBar("1").width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                                    .backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "TabContent") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("TabContent : ${RenderFit_Prop[0]}")
                            Column() {
                                Tabs() {
                                    TabContent {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .tabBar("1")
                                        .id(this.targetView + RenderFit_Prop[0])
                                        .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                        .renderFit(RenderFit_Prop[1])
                                        .width(this.RenderFitWidth)
                                        .height(this.RenderFitHeight)
                                        .animationEnd()
                                        .backgroundColor(this.Colors[1])
                                }.width(80.percent).height(100).backgroundColor(this.Colors[0])
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Circle") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Circle : ${RenderFit_Prop[0]}")
                            Column() {
                                Circle()
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Line") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Line : ${RenderFit_Prop[0]}")
                            Column() {
                                Line()
                                    .startPoint((0.0, 0.0))
                                    .endPoint((10.0, 20.0))
                                    .stroke(Color.Black)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Rect") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Rect : ${RenderFit_Prop[0]}")
                            Column() {
                                Rect()
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        } else if (this.targetView == "Shape") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Shape : ${RenderFit_Prop[0]}")
                            Column() {
                                Shape() {Rect().width(80.percent).height(80.percent).backgroundColor(this.Colors[1])}
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        }else if (this.targetView == "Path") {
                            Button("change size")
                                .onClick({
                                    event =>
                                    if (this.RenderFitFlag) {
                                        this.RenderFitWidth = this.RenderFitWidth1
                                        this.RenderFitHeight = this.RenderFitHeight1
                                    } else {
                                        this.RenderFitWidth = this.RenderFitWidth2
                                        this.RenderFitHeight = this.RenderFitHeight2
                                    }
                                    this.RenderFitFlag = !this.RenderFitFlag
                                })
                                .width(100)
                                .height(50)
                            Text("Path : ${RenderFit_Prop[0]}")
                            Column() {
                                Path()
                                    .commands("M0 0 H200 V200 H0 Z")
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + RenderFit_Prop[0])
                                    .animationStart(AnimateParam(duration: 1200, curve: Curve.Ease))
                                    .renderFit(RenderFit_Prop[1])
                                    .width(this.RenderFitWidth)
                                    .height(this.RenderFitHeight)
                                    .animationEnd()
                            }.width(300).height(120).backgroundColor(Color.Gray)
                        }
                    }
                )
            }
        }.id("Scroll").height(this.parentHeight).width(this.parentWidth).backgroundColor(this.parentBackGroundColor)
    }
}
