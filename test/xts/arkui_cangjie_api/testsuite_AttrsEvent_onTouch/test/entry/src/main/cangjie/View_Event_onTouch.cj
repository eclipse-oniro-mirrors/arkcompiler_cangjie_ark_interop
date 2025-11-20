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
import ohos.arkui.ui_context.*
import ohos.base.*
import ohos.arkui.state_management.*

public func toString(touchType:TouchType):String{
    match(touchType){
        case TouchType.Up => "Up"
        case TouchType.Down => "Down"
        case TouchType.Move => "Move"
        case TouchType.Cancel => "Cancel"
        case TouchType.Unknown => "Unknown"
        case _ => ""

    }
}

 public func toString(sourceType:SourceType): String {
        match(sourceType) {
            case SourceType.Mouse => "Mouse"
            case SourceType.TouchScreen     => "TouchScreen"
            case SourceType.Unknown     => "Unknown"
            case _ => ""
        }
    }

@Observed
class touchEvent {
    @Publish
    var eventType: String = ""
    @Publish
    var touches0: touchObject = touchObject()
    @Publish
    var changedTouches0: touchObject = touchObject()
    @Publish
    var timestamp: String = ""
    @Publish
    var target: touch_target = touch_target()
    @Publish
    var source: String = ""
}

@Observed
class touchObject {
    @Publish
    var touchType: String = ""
    @Publish
    var id: String = ""
    @Publish
    var screenX: String = ""
    @Publish
    var screenY: String = ""
    @Publish
    var x: String = ""
    @Publish
    var y: String = ""
}

@Observed
class touch_target {
    @Publish
    var area: touch_area = touch_area()
}

@Observed
class touch_area {
    @Publish
    var width: String = ""
    @Publish
    var height: String = ""
    @Publish
    var position: touchPosition = touchPosition()
    @Publish
    var globalPosition: touchPosition = touchPosition()
}

@Observed
class touchPosition {
    @Publish
    var x: String = ""
    @Publish
    var y: String = ""
}

@Entry
@Component
class View_EmptyAttrs_onTouch {
    @State
    var targetView = ""
    @State
    var parentHeight: Length = 800.vp
    @State
    var parentWidth: Length = 400.vp
    @State
    var parentBackGroundColor: Color = Color(0xE1FFFF)

    @State
    var touchevent: touchEvent = touchEvent()
    @State
    var touchEvent_source: String = ""

    let scroller = Scroller()
    let webController = WebviewController()
    let swiperController = SwiperController()
    let richEditorController = RichEditorController()
    var isRefreshing: Bool = false

    let renderFlag = false //跳过if
    let Colors = [Color(0x98FB98), Color(0x317aff), Color(0xFFD700), Color(0xFFE4E1), Color(0xAB82FF)]

    func callbackonTouch(evt: TouchEvent) {
        this.getTouchevent_EventType(evt)
        this.getTouchevent_touches(evt)
        this.getTouchevent_changedTouches(evt)
        this.getTouchevent_timestamp(evt)
        this.getTouchevent_target(evt)
        this.getTouchevent_source(evt)
    }

    func getTouchevent_EventType(evt: TouchEvent) {
        this.touchevent.eventType = toString(evt.eventType)
    }

    func getTouchevent_touches(evt: TouchEvent) {
        this.touchevent.touches0.touchType = toString(evt.touches[0].touchType)
        this.touchevent.touches0.id = evt.touches[0].id.toString()
        this.touchevent.touches0.screenX = evt.touches[0].screenX.toString()
        this.touchevent.touches0.screenY = evt.touches[0].screenY.toString()
        this.touchevent.touches0.x = evt.touches[0].x.toString()
        this.touchevent.touches0.y = evt.touches[0].y.toString()
    }

    func getTouchevent_changedTouches(evt: TouchEvent) {
        this.touchevent.changedTouches0.touchType = toString(evt.changedTouches[0].touchType)
        this.touchevent.changedTouches0.id = evt.changedTouches[0].id.toString()
        this.touchevent.changedTouches0.screenX = evt.changedTouches[0].screenX.toString()
        this.touchevent.changedTouches0.screenY = evt.changedTouches[0].screenY.toString()
        this.touchevent.changedTouches0.x = evt.changedTouches[0].x.toString()
        this.touchevent.changedTouches0.y = evt.changedTouches[0].y.toString()
    }

    func getTouchevent_timestamp(evt: TouchEvent) {
        this.touchevent.timestamp = evt.timestamp.toString()
    }

    func getTouchevent_target(evt: TouchEvent) {
        this.touchevent.target.area.width = evt.target.getOrThrow().area.width.value.toString()
        this.touchevent.target.area.height = evt.target.getOrThrow().area.height.value.toString()
        this.touchevent.target.area.position.x = evt.target.getOrThrow().area.position.x.getOrThrow().value.toString()
        this.touchevent.target.area.position.y = evt.target.getOrThrow().area.position.y.getOrThrow().value.toString()
        this.touchevent.target.area.globalPosition.x = evt.target.getOrThrow().area.globalPosition.x.getOrThrow().value.toString()
        this.touchevent.target.area.globalPosition.y = evt.target.getOrThrow().area.globalPosition.y.getOrThrow().value.toString()
    }

    func getTouchevent_source(evt: TouchEvent) {
        this.touchEvent_source = toString(evt.source.getOrThrow())
    }

    protected override func aboutToAppear() {
        this.targetView = getUIContext().getRouter().getParams().getOrThrow()
    }
    func build() {
        Scroll() {
            Column(space:5) {
                Blank()
                if (this.renderFlag) {}
                else if (this.targetView == "AlphabetIndexer") {
                    Text("AlphabetIndexer: Attrs_Event_onTouch")
                    AlphabetIndexer(arrayValue: ["#", "A", "B", "C", "D"], selected: 0)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Blank") {
                    Text("Blank: Attrs_Event_onTouch")
                    Blank(min: 10)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Button") {
                    Text("Button: Attrs_Event_onTouch")
                    Button {Text("Button").width(90.percent).height(90.percent).backgroundColor(Color.Gray)}
                        .shape(ButtonType.Normal)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Checkbox") {
                    Text("Checkbox: Attrs_Event_onTouch")
                    Checkbox()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "CheckboxGroup") {
                    Text("CheckboxGroup: Attrs_Event_onTouch")
                    CheckboxGroup()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "DataPanel") {
                    Text("DataPanel: Attrs_Event_onTouch")
                    DataPanel(values: [30.0])
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "DatePicker") {
                    Text("DatePicker: Attrs_Event_onTouch")
                    DatePicker()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Divider") {
                    Text("Divider: Attrs_Event_onTouch")
                    Divider()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Gauge") {
                    Text("Gauge: Attrs_Event_onTouch")
                    Gauge(value: 50.0, min: 0.0, max: 100.0) {
                        Text("Gauge").width(50.percent).height(50.percent).backgroundColor(Color.Red)
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Image") {
                    Text("Image: Attrs_Event_onTouch")
                    Image(@r(app.media.startIcon))
                        .objectFit(ImageFit.Contain)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "ImageSpan") {
                    Text("ImageSpan: Attrs_Event_onTouch")
                    Text() {
                        ImageSpan(@r(app.media.startIcon))
                            .objectFit(ImageFit.Contain)
                            .id(this.targetView + "onTouch")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onTouch ({evt => this.callbackonTouch(evt)})
                    }
                } else if (this.targetView == "LoadingProgress") {
                    Text("LoadingProgress: Attrs_Event_onTouch")
                    LoadingProgress()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Menu") {
                    Text("Menu: Attrs_Event_onTouch")

                    Menu() {
                        MenuItemGroup(header: "MenuItemGroup", footer: "") {
                            MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                .width(80.percent)
                                .height(80.percent)
                                .backgroundColor(this.Colors[2])
                        }.width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "MenuItem") {
                    Text("MenuItem: Attrs_Event_onTouch")
                    Menu() {
                        MenuItemGroup(header: "MenuItemGroup", footer: "") {
                            MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                .id(this.targetView + "onTouch")
                                .width(80.percent)
                                .height(20.percent)
                                .backgroundColor(this.Colors[0])
                                .onTouch ({evt => this.callbackonTouch(evt)})
                        }.width(80.percent).height(80.percent)
                    }.width(80.percent).height(10.percent)
                } else if (this.targetView == "MenuItemGroup") {
                    Text("MenuItemGroup: Attrs_Event_onTouch")
                    Menu() {
                        MenuItemGroup(header: "MenuItemGroup", footer: "") {
                            MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                .width(80.percent)
                                .height(80.percent)
                        }
                            .id(this.targetView + "onTouch")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onTouch ({evt => this.callbackonTouch(evt)})
                    }.width(80.percent).height(10.percent)
                } else if (this.targetView == "Progress") {
                    Text("Progress: Attrs_Event_onTouch")
                    Progress(value: 10.0)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "QRCode") {
                    Text("QRCode: Attrs_Event_onTouch")
                    QRCode(targetView)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Radio") {
                    Text("Radio: Attrs_Event_onTouch")
                    Radio(group: "1", value: "A")
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Rating") {
                    Text("Rating: Attrs_Event_onTouch")
                    Rating(rating: 3.5, indicator: false)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Refresh") {
                    Text("Refresh: Attrs_Event_onTouch")
                    Refresh(RefreshOptions(refreshing: @Binder(this.isRefreshing))) {
                        Text("1").width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "RichEditor") {
                    Text("RichEditor: Attrs_Event_onTouch")
                    RichEditor(richEditorController)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "RichText") {
                    Text("RichText: Attrs_Event_onTouch")
                    RichText("""
<p style="font-size: 35px;color: rgb(24,78,228)">Text</p> """)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "RowSplit") {
                    Text("RowSplit: Attrs_Event_onTouch")
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
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "ScrollBar") {
                    Text("ScrollBar: Attrs_Event_onTouch")

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
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Search") {
                    Text("Search: Attrs_Event_onTouch")
                    Search(value: "", placeholder: "Type to search")
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Slider") {
                    Text("Slider: Attrs_Event_onTouch")
                    Slider()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                }  else if (this.targetView == "Stepper") {
                    Text("Stepper: Attrs_Event_onTouch")
                    Stepper(index:0) {
                        StepperItem() {
                            Text("Page One").width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                        }.width(80.percent).height(80.percent)
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "StepperItem") {
                    Text("StepperItem: Attrs_Event_onTouch")
                    Stepper(index:0) {
                        StepperItem() {
                            Text("Page One").width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                        }
                            .id(this.targetView + "onTouch")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onTouch ({evt => this.callbackonTouch(evt)})
                    }.width(80.percent).height(10.percent)
                } else if (this.targetView == "Text") {
                    Text("Text: Attrs_Event_onTouch")
                    Text(targetView)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "TextArea") {
                    Text("TextArea: Attrs_Event_onTouch")
                    TextArea(text: targetView)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "TextClock") {
                    Text("TextClock: Attrs_Event_onTouch")
                    TextClock()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "TextInput") {
                    Text("TextInput: Attrs_Event_onTouch")
                    TextInput(placeholder: "TextInput")
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "TextPicker") {
                    Text("TextPicker: Attrs_Event_onTouch")
                    TextPicker(range:["apple", "banana", "orange", "peach"])
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "TextTimer") {
                    Text("TextTimer: Attrs_Event_onTouch")
                    TextTimer(isCountDown: true, count: 30000, controller: TextTimerController())
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Toggle") {
                    Text("Toggle: Attrs_Event_onTouch")
                    Toggle(ToggleType.Switch, isOn: false)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Web") {
                    Text("Web: Attrs_Event_onTouch")
                    Web(src: "www.baidu.com", controller: webController)
                        .onPageBegin({evt => Hilog.info(0, "cangjietest", "page begin url: ${evt.url}")})
                        .onPageEnd({evt => Hilog.info(0, "cangjietest", "page end url: ${evt.url}")})
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Select") {
                    Text("Select: Attrs_Event_onTouch")
                    Select(
                        [SelectOptions(value:"aaa", icon: @r(app.media.startIcon)),
                            SelectOptions(value:"bbb", icon: @r(app.media.startIcon))])
                        .value("Select")
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Badge") {
                    Text("Badge: Attrs_Event_onTouch")
                    Badge(count: 1, style: BadgeStyle(color: this.Colors[2])) {
                        Button("message").width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Column") {
                    Text("Column: Attrs_Event_onTouch")

                    Column() {
                        Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Grid") {
                    Text("Grid: Attrs_Event_onTouch")
                    Grid (child:{=>
                        GridItem ({=>
                            Text("Message").width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                        }).width(80.percent).height(80.percent)
                    })
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "GridItem") {
                    Text("GridItem: Attrs_Event_onTouch")
                    Grid (child:{=>
                        GridItem ({=>
                            Text("Message").width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                        })
                            .id(this.targetView + "onTouch")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onTouch ({evt => this.callbackonTouch(evt)})
                    }).width(80.percent).height(10.percent)
                } else if (this.targetView == "GridRow") {
                    Text("GridRow: Attrs_Event_onTouch")
                    GridRow() {
                        GridCol() {
                            Row().width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                        }.width(80.percent).height(80.percent)
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "GridCol") {
                    Text("GridCol: Attrs_Event_onTouch")
                    GridRow() {
                        GridCol() {
                            Row().width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                        }
                            .id(this.targetView + "onTouch")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onTouch ({evt => this.callbackonTouch(evt)})
                    }.width(80.percent).height(10.percent)
                } else if (this.targetView == "Flex") {
                    Text("Flex: Attrs_Event_onTouch")
                    Flex() {
                        Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "List") {
                    Text("List: Attrs_Event_onTouch")
                    List() {
                        ListItemGroup(space: 5) {
                            ListItem() {
                                Text("Text").width(80.percent).height(40.percent).backgroundColor(this.Colors[3])
                            }.width(80.percent).height(80.percent)
                        }.width(80.percent).height(80.percent)
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "ListItem") {
                    Text("ListItem: Attrs_Event_onTouch")
                    List() {
                        ListItemGroup(space: 5) {
                            ListItem() {
                                Text("Text").width(80.percent).height(40.percent).backgroundColor(this.Colors[3])
                            }
                                .id(this.targetView + "onTouch")
                                .width(80.percent)
                                .height(20.percent)
                                .backgroundColor(this.Colors[0])
                                .onTouch ({evt => this.callbackonTouch(evt)})
                        }.width(80.percent).height(80.percent)
                    }.width(80.percent).height(10.percent)
                } else if (this.targetView == "ListItemGroup") {
                    Text("ListItemGroup: Attrs_Event_onTouch")
                    List() {
                        ListItemGroup(space: 5) {
                            ListItem() {
                                Text("Text").width(80.percent).height(40.percent).backgroundColor(this.Colors[3])
                            }.width(80.percent).height(80.percent)
                        }
                            .id(this.targetView + "onTouch")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onTouch ({evt => this.callbackonTouch(evt)})
                    }.width(80.percent).height(10.percent)
                } else if (this.targetView == "RelativeContainer") {
                    Text("RelativeContainer: Attrs_Event_onTouch")

                    RelativeContainer() {
                        Text("Text").width(80.percent).height(80.percent).backgroundColor(this.Colors[1])
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Row") {
                    Text("Row: Attrs_Event_onTouch")

                    Row() {
                        Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Scroll") {
                    Text("Scroll: Attrs_Event_onTouch")

                    Scroll() {
                        Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Stack") {
                    Text("Stack: Attrs_Event_onTouch")

                    Stack() {
                        Text("1").height(80.percent).width(80.percent).backgroundColor(this.Colors[1])
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Swiper") {
                    Text("Swiper: Attrs_Event_onTouch")

                    Swiper(controller:SwiperController()) {
                        Text("1").width(80.percent).height(80.percent)
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Tabs") {
                    Text("Tabs: Attrs_Event_onTouch")
                    Tabs() {
                        TabContent {
                            Column().width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                        }.tabBar("1").width(80.percent).height(80.percent)
                    }
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "TabContent") {
                    Text("TabContent: Attrs_Event_onTouch")
                    Tabs() {
                        TabContent {
                            Column().width(80.percent).height(40.percent).backgroundColor(this.Colors[2])
                        }
                            .tabBar("1")
                            .id(this.targetView + "onTouch")
                            .width(80.percent)
                            .height(20.percent)
                            .backgroundColor(this.Colors[0])
                            .onTouch ({evt => this.callbackonTouch(evt)})
                    }.width(80.percent).height(10.percent)
                } else if (this.targetView == "Circle") {
                    Text("Circle: Attrs_Event_onTouch")
                    Circle()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Line") {
                    Text("Line: Attrs_Event_onTouch")
                    Line()
                        .startPoint((0.0, 0.0))
                        .endPoint((10.0, 20.0))
                        .stroke(Color.Black)
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Rect") {
                    Text("Rect: Attrs_Event_onTouch")
                    Rect()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Shape") {
                    Text("Shape: Attrs_Event_onTouch")
                    Shape() {Rect().width(80.percent).height(80.percent).backgroundColor(this.Colors[1])}
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Path") {
                    Text("Path: Attrs_Event_onTouch")
                    Path()
                        .commands("M0 0 H200 V200 H0 Z")
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Canvas") {
                    Text("Canvas: Attrs_Event_onTouch")
                    Canvas(CanvasRenderingContext2D(RenderingContextSettings(antialias: true)))
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Video") {
                    Text("Video: Attrs_Event_onTouch")
                    Video()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Counter") {
                    Text("Counter: Attrs_Event_onTouch")
                    Counter() {}
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "PatternLock") {
                    Text("PatternLock: Attrs_Event_onTouch")
                    PatternLock()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                } else if (this.targetView == "Ellipse") {
                    Text("Ellipse: Attrs_Event_onTouch")
                    Ellipse()
                        .id(this.targetView + "onTouch")
                        .width(80.percent)
                        .height(20.percent)
                        .backgroundColor(this.Colors[0])
                        .onTouch ({evt => this.callbackonTouch(evt)})
                }
                Text("touchevent.eventType: " + this.touchevent.eventType).id("touchevent.eventType").fontSize(12)

                Text("touchevent.touches0.touchType: " + this.touchevent.touches0.touchType)
                    .id("touchevent.touches0.touchType")
                    .fontSize(12)
                Text("touchevent.touches0.id: " + this.touchevent.touches0.id)
                    .id("touchevent.touches0.id")
                    .fontSize(12)
                Text("touchevent.touches0.screenX: " + this.touchevent.touches0.screenX)
                    .id("touchevent.touches0.screenX")
                    .fontSize(12)
                Text("touchevent.touches0.screenY: " + this.touchevent.touches0.screenY)
                    .id("touchevent.touches0.screenY")
                    .fontSize(12)
                Text("touchevent.touches0.x: " + this.touchevent.touches0.x).id("touchevent.touches0.x").fontSize(12)
                Text("touchevent.touches0.y: " + this.touchevent.touches0.y).id("touchevent.touches0.y").fontSize(12)

                Text("touchevent.changedTouches0.touchType: " + this.touchevent.changedTouches0.touchType)
                    .id("touchevent.changedTouches0.touchType")
                    .fontSize(12)
                Text("touchevent.changedTouches0.id: " + this.touchevent.changedTouches0.id)
                    .id("touchevent.changedTouches0.id")
                    .fontSize(12)
                Text("touchevent.changedTouches0.screenX: " + this.touchevent.changedTouches0.screenX)
                    .id("touchevent.changedTouches0.screenX")
                    .fontSize(12)
                Text("touchevent.changedTouches0.screenY: " + this.touchevent.changedTouches0.screenY)
                    .id("touchevent.changedTouches0.screenY")
                    .fontSize(12)
                Text("touchevent.changedTouches0.x: " + this.touchevent.changedTouches0.x)
                    .id("touchevent.changedTouches0.x")
                    .fontSize(12)
                Text("touchevent.changedTouches0.y: " + this.touchevent.changedTouches0.y)
                    .id("touchevent.changedTouches0.y")
                    .fontSize(12)

                Text("touchevent.timestamp: " + this.touchevent.timestamp).id("touchevent.timestamp").fontSize(12)

                Text("touchevent.target.area.width: " + this.touchevent.target.area.width)
                    .id("touchevent.target.area.width")
                    .fontSize(12)
                Text("touchevent.target.area.height: " + this.touchevent.target.area.height)
                    .id("touchevent.target.area.height")
                    .fontSize(12)
                Text("touchevent.target.area.position.x: " + this.touchevent.target.area.position.x)
                    .id("touchevent.target.area.position.x")
                    .fontSize(12)
                Text("touchevent.target.area.position.y: " + this.touchevent.target.area.position.y)
                    .id("touchevent.target.area.position.y")
                    .fontSize(12)
                Text("touchevent.target.area.globalPosition.x: " + this.touchevent.target.area.globalPosition.x)
                    .id("touchevent.target.area.globalPosition.x")
                    .fontSize(12)
                Text("touchevent.target.area.globalPosition.y: " + this.touchevent.target.area.globalPosition.y)
                    .id("touchevent.target.area.globalPosition.y")
                    .fontSize(12)

                Text("touchEvent.source: " + this.touchEvent_source).id("touchEvent.source").fontSize(12)
            }
        }.id("Scroll").height(this.parentHeight).width(this.parentWidth).backgroundColor(this.parentBackGroundColor)
    }
}
