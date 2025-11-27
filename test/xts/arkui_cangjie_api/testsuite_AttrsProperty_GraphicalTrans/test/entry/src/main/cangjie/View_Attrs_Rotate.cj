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
import kit.LocalizationKit.{AppResource}
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.base.*
import ohos.arkui.ui_context.*

@Entry
@Component
class View_EmptyAttrs_Rotate {
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
        this.targetView = getUIContext().getRouter()
            .getParams()
            .getOrThrow()
    }
    func build() {
        Scroll() {
            Column() {
                ForEach(
                    ObservedArrayList<(String, Any, String)>(Rotate_Prop_List),
                    itemGeneratorFunc: {
                        Rotate_Prop: (String, Any, String), idx: Int64 => if (this.renderFlag) {}
                        else if (this.targetView == "AlphabetIndexer") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                AlphabetIndexer(arrayValue: ["#", "A", "B", "C", "D"], selected: 0)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                AlphabetIndexer(arrayValue: ["#", "A", "B", "C", "D"], selected: 0)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource, 
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource, 
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource, 
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource, 
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource, 
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource, 
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        }
                        else if (this.targetView == "Blank") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Blank(min: 10)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Blank(min: 10)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Button") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Button {Text("Button")
                                        .width(90.percent)
                                        .height(90.percent)
                                        .backgroundColor(Color.Gray)}
                                    .shape(ButtonType.Normal)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Button {Text("Button")
                                        .width(90.percent)
                                        .height(90.percent)
                                        .backgroundColor(Color.Gray)}
                                    .shape(ButtonType.Normal)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Checkbox") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Checkbox()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Checkbox()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "CheckboxGroup") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                CheckboxGroup()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                CheckboxGroup()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "DataPanel") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                DataPanel(values: [30.0])
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                DataPanel(values: [30.0])
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "DatePicker") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                DatePicker()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                DatePicker()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Divider") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Divider()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Divider()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Gauge") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Gauge(value: 50.0, min: 0.0, max: 100.0) {
                                    Text("Gauge")
                                        .width(50.percent)
                                        .height(50.percent)
                                        .backgroundColor(Color.Red)
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Gauge(value: 50.0, min: 0.0, max: 100.0) {
                                    Text("Gauge")
                                        .width(50.percent)
                                        .height(50.percent)
                                        .backgroundColor(Color.Red)
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Image") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Image(@r(app.media.startIcon))
                                    .objectFit(ImageFit.Contain)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Image(@r(app.media.startIcon))
                                    .objectFit(ImageFit.Contain)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "ImageSpan") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Text() {
                                    ImageSpan(@r(app.media.startIcon))
                                        .objectFit(ImageFit.Contain)
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                }
                                    .width(80.percent)
                                    .height(100.percent)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Text() {
                                    ImageSpan(@r(app.media.startIcon))
                                        .objectFit(ImageFit.Contain)
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                }
                                    .width(80.percent)
                                    .height(100.percent)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "LoadingProgress") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                LoadingProgress()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                LoadingProgress()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Menu") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Menu() {
                                    MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                        MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Menu() {
                                    MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                        MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "MenuItem") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Menu() {
                                    MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                        MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                            .id(this.targetView + Rotate_Prop[0])
                                            .rotate(
                                                x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[0],
                                                y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[1],
                                                z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[2],
                                                angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[3],
                                                centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[4],
                                                centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[5]
                                            )
                                            .width(100)
                                            .height(50)
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Menu() {
                                    MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                        MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                            .id(this.targetView + Rotate_Prop[0])
                                            .rotate(
                                                x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                    AppResource)).getOrThrow())[0],
                                                y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                    AppResource)).getOrThrow())[1],
                                                z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                    AppResource)).getOrThrow())[2],
                                                angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                    AppResource, AppResource)).getOrThrow())[3],
                                                centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                    AppResource, AppResource)).getOrThrow())[4],
                                                centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                    AppResource, AppResource)).getOrThrow())[5]
                                            )
                                            .width(100)
                                            .height(50)
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "MenuItemGroup") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Menu() {
                                    MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                        MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Menu() {
                                    MenuItemGroup(header: "MenuItemGroup", footer: "") {
                                        MenuItem(startIcon: "MenuItem", content: "menuItem", endIcon: "", labelInfo: "")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "Progress") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Progress(value: 10.0)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Progress(value: 10.0)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "QRCode") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                QRCode(targetView)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                QRCode(targetView)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Radio") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Radio(group: "1", value: "A")
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Radio(group: "1", value: "A")
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Rating") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Rating(rating: 3.5, indicator: false)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Rating(rating: 3.5, indicator: false)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Refresh") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Refresh(RefreshOptions(refreshing: @Binder(this.isRefreshing))) {
                                    Text("1")
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Refresh(RefreshOptions(refreshing: @Binder(this.isRefreshing))) {
                                    Text("1")
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "RichEditor") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                RichEditor(richEditorController)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                RichEditor(richEditorController)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "RichText") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                RichText("""
<p style="font-size: 35px;color: rgb(24,78,228)">Text</p> """)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                RichText("""
<p style="font-size: 35px;color: rgb(24,78,228)">Text</p> """)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "RowSplit") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
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
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
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
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "ScrollBar") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
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
                                }
                                    .height(150)
                                    .scrollBar(BarState.Off)
                                    .scrollable(ScrollDirection.Vertical)
                                ScrollBar(scroller: this.scroller, direction: ScrollBarDirection.Vertical,
                                    state: BarState.On) {
                                    Text("")
                                        .width(100)
                                        .height(50)
                                        .borderRadius(10)
                                        .backgroundColor(0xC0C0C0)
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
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
                                }
                                    .height(150)
                                    .scrollBar(BarState.Off)
                                    .scrollable(ScrollDirection.Vertical)
                                ScrollBar(scroller: this.scroller, direction: ScrollBarDirection.Vertical,
                                    state: BarState.On) {
                                    Text("")
                                        .width(100)
                                        .height(50)
                                        .borderRadius(10)
                                        .backgroundColor(0xC0C0C0)
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Search") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Search(value: "", placeholder: "Type to search")
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Search(value: "", placeholder: "Type to search")
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Slider") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Slider()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Slider()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Stepper") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Stepper(index: 0) {
                                    StepperItem() {
                                        Text("Page One")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Stepper(index: 0) {
                                    StepperItem() {
                                        Text("Page One")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "StepperItem") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Stepper(index: 0) {
                                    StepperItem() {
                                        Text("Page One")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Stepper(index: 0) {
                                    StepperItem() {
                                        Text("Page One")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "Text") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Text(targetView)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Text(targetView)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "TextArea") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                TextArea(text: targetView)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                TextArea(text: targetView)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "TextClock") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                TextClock()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                TextClock()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "TextInput") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                TextInput(placeholder: "TextInput")
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                TextInput(placeholder: "TextInput")
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "TextPicker") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                TextPicker(range: ["apple", "banana", "orange", "peach"])
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                TextPicker(range: ["apple", "banana", "orange", "peach"])
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "TextTimer") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                TextTimer(isCountDown: true, count: 30000, controller: TextTimerController())
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                TextTimer(isCountDown: true, count: 30000, controller: TextTimerController())
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Toggle") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Toggle(ToggleType.Switch, isOn: false)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Toggle(ToggleType.Switch, isOn: false)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Web") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Web(src: "www.baidu.com", controller: webController)
                                    .onPageBegin({evt => Hilog.info(0, "cangjietest", "page begin url: ${evt.url}")})
                                    .onPageEnd({evt => Hilog.info(0, "cangjietest", "page end url: ${evt.url}")})
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Web(src: "www.baidu.com", controller: webController)
                                    .onPageBegin({evt => Hilog.info(0, "cangjietest", "page begin url: ${evt.url}")})
                                    .onPageEnd({evt => Hilog.info(0, "cangjietest", "page end url: ${evt.url}")})
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Select") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Select(
                                    [SelectOptions(value: "aaa", icon: @r(app.media.startIcon)),
                                        SelectOptions(value: "bbb", icon: @r(app.media.startIcon))])
                                    .value("Select")
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Select(
                                    [SelectOptions(value: "aaa", icon: @r(app.media.startIcon)),
                                        SelectOptions(value: "bbb", icon: @r(app.media.startIcon))])
                                    .value("Select")
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Badge") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Badge(count: 1, style: BadgeStyle(color: this.Colors[2])) {
                                    Button("message")
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Badge(count: 1, style: BadgeStyle(color: this.Colors[2])) {
                                    Button("message")
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Column") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Column() {
                                    Text("1")
                                        .height(80.percent)
                                        .width(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Column() {
                                    Text("1")
                                        .height(80.percent)
                                        .width(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Grid") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Grid(
                                    child: {
                                        => GridItem(
                                            {
                                                => Text("Message")
                                                    .width(80.percent)
                                                    .height(80.percent)
                                                    .backgroundColor(this.Colors[2])
                                            })
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[1])
                                    })
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Grid(
                                    child: {
                                        => GridItem(
                                            {
                                                => Text("Message")
                                                    .width(80.percent)
                                                    .height(80.percent)
                                                    .backgroundColor(this.Colors[2])
                                            })
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[1])
                                    })
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "GridItem") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Grid(
                                    child: {
                                        => GridItem(
                                            {
                                                => Text("Message")
                                                    .width(80.percent)
                                                    .height(80.percent)
                                                    .backgroundColor(this.Colors[2])
                                            })
                                            .id(this.targetView + Rotate_Prop[0])
                                            .rotate(
                                                x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[0],
                                                y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[1],
                                                z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[2],
                                                angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[3],
                                                centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[4],
                                                centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[5]
                                            )
                                            .width(100)
                                            .height(50)
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[1])
                                    })
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Grid(
                                    child: {
                                        => GridItem(
                                            {
                                                => Text("Message")
                                                    .width(80.percent)
                                                    .height(80.percent)
                                                    .backgroundColor(this.Colors[2])
                                            })
                                            .id(this.targetView + Rotate_Prop[0])
                                            .rotate(
                                                x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                    AppResource)).getOrThrow())[0],
                                                y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                    AppResource)).getOrThrow())[1],
                                                z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                    AppResource)).getOrThrow())[2],
                                                angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                    AppResource, AppResource)).getOrThrow())[3],
                                                centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                    AppResource, AppResource)).getOrThrow())[4],
                                                centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                    AppResource, AppResource)).getOrThrow())[5]
                                            )
                                            .width(100)
                                            .height(50)
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[1])
                                    })
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "GridRow") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                GridRow() {
                                    GridCol() {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                GridRow() {
                                    GridCol() {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "GridCol") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                GridRow() {
                                    GridCol() {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                GridRow() {
                                    GridCol() {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "Flex") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Flex() {
                                    Text("1")
                                        .height(80.percent)
                                        .width(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Flex() {
                                    Text("1")
                                        .height(80.percent)
                                        .width(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "List") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                List() {
                                    ListItemGroup() {
                                        ListItem() {
                                            Text("Text")
                                                .width(80.percent)
                                                .height(80.percent)
                                                .backgroundColor(this.Colors[3])
                                        }
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                List() {
                                    ListItemGroup() {
                                        ListItem() {
                                            Text("Text")
                                                .width(80.percent)
                                                .height(80.percent)
                                                .backgroundColor(this.Colors[3])
                                        }
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "ListItem") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                List() {
                                    ListItemGroup() {
                                        ListItem() {
                                            Text("Text")
                                                .width(80.percent)
                                                .height(80.percent)
                                                .backgroundColor(this.Colors[3])
                                        }
                                            .id(this.targetView + Rotate_Prop[0])
                                            .rotate(
                                                x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[0],
                                                y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[1],
                                                z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[2],
                                                angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[3],
                                                centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[4],
                                                centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                    Length)).getOrThrow())[5]
                                            )
                                            .width(100)
                                            .height(50)
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                List() {
                                    ListItemGroup() {
                                        ListItem() {
                                            Text("Text")
                                                .width(80.percent)
                                                .height(80.percent)
                                                .backgroundColor(this.Colors[3])
                                        }
                                            .id(this.targetView + Rotate_Prop[0])
                                            .rotate(
                                                x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                    AppResource)).getOrThrow())[0],
                                                y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                    AppResource)).getOrThrow())[1],
                                                z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                    AppResource)).getOrThrow())[2],
                                                angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                    AppResource, AppResource)).getOrThrow())[3],
                                                centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                    AppResource, AppResource)).getOrThrow())[4],
                                                centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                    AppResource, AppResource)).getOrThrow())[5]
                                            )
                                            .width(100)
                                            .height(50)
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "ListItemGroup") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                List() {
                                    ListItemGroup() {
                                        ListItem() {
                                            Text("Text")
                                                .width(80.percent)
                                                .height(80.percent)
                                                .backgroundColor(this.Colors[3])
                                        }
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                List() {
                                    ListItemGroup() {
                                        ListItem() {
                                            Text("Text")
                                                .width(80.percent)
                                                .height(80.percent)
                                                .backgroundColor(this.Colors[3])
                                        }
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "RelativeContainer") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                RelativeContainer() {
                                    Text("Text")
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                RelativeContainer() {
                                    Text("Text")
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Row") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Row() {
                                    Text("1")
                                        .height(80.percent)
                                        .width(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Row() {
                                    Text("1")
                                        .height(80.percent)
                                        .width(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Scroll") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Scroll() {
                                    Text("1")
                                        .height(80.percent)
                                        .width(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Scroll() {
                                    Text("1")
                                        .height(80.percent)
                                        .width(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Stack") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Stack() {
                                    Text("1")
                                        .height(80.percent)
                                        .width(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Stack() {
                                    Text("1")
                                        .height(80.percent)
                                        .width(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Swiper") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Swiper(controller:SwiperController()) {
                                    Text("1")
                                        .width(80.percent)
                                        .height(80.percent)
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Swiper(controller:SwiperController()) {
                                    Text("1")
                                        .width(80.percent)
                                        .height(80.percent)
                                }
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Tabs") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Tabs() {
                                    TabContent {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .tabBar("1")
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Tabs() {
                                    TabContent {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .tabBar("1")
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                                    .width(100)
                                    .height(50)
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "TabContent") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Tabs() {
                                    TabContent {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .tabBar("1")
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                                .getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length,
                                                Length)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Tabs() {
                                    TabContent {
                                        Text("Text")
                                            .width(80.percent)
                                            .height(80.percent)
                                            .backgroundColor(this.Colors[2])
                                    }
                                        .tabBar("1")
                                        .id(this.targetView + Rotate_Prop[0])
                                        .rotate(
                                            x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[0],
                                            y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[1],
                                            z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[2],
                                            angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                                AppResource)).getOrThrow())[3],
                                            centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[4],
                                            centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64,
                                                AppResource, AppResource)).getOrThrow())[5]
                                        )
                                        .width(100)
                                        .height(50)
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])
                                }
                                    .width(80.percent)
                                    .height(100)
                                    .backgroundColor(this.Colors[0])
                            }
                        } else if (this.targetView == "Circle") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Circle()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Circle()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Line") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Line()
                                    .startPoint((0.0, 0.0))
                                    .endPoint((10.0, 20.0))
                                    .stroke(Color.Black)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Line()
                                    .startPoint((0.0, 0.0))
                                    .endPoint((10.0, 20.0))
                                    .stroke(Color.Black)
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Rect") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Rect()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Rect()
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Shape") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Shape() {Rect()
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])}
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Shape() {Rect()
                                        .width(80.percent)
                                        .height(80.percent)
                                        .backgroundColor(this.Colors[1])}
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        } else if (this.targetView == "Path") {
                            if (this.renderFlag) {}
                            else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, Length, Length)) {
                                Path()
                                    .commands("M0 0 H200 V200 H0 Z")
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, Length, Length))
                                            .getOrThrow())[5]
                                    )
                            } else if (Rotate_Prop[1] is (Float64, Float64, Float64, Float64, AppResource, AppResource)) {
                                Path()
                                    .commands("M0 0 H200 V200 H0 Z")
                                    .width(150)
                                    .height(80)
                                    .backgroundColor(this.Colors[0])
                                    .id(this.targetView + Rotate_Prop[0])
                                    .rotate(
                                        x: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[0],
                                        y: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[1],
                                        z: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[2],
                                        angle: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[3],
                                        centerX: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[4],
                                        centerY: ((Rotate_Prop[1] as (Float64, Float64, Float64, Float64, AppResource,
                                            AppResource)).getOrThrow())[5]
                                    )
                            }
                        }
                    }
                )
            }
        }
            .id("Scroll")
            .height(this.parentHeight)
            .width(this.parentWidth)
            .backgroundColor(this.parentBackGroundColor)
    }
}
