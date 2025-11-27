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
import ohos.multimedia.image.Size as size00
import ohos.multimedia.image.ScaleMode
import std.collection.ArrayList
import ohos.multimedia.image.AlphaType
import ohos.multimedia.image.PixelMapFormat

@Entry
@Component
class View_onDrageEvent {
    @State
    var onDragStart_info: String = ""
    @State
    var onDragEnter_info: String = ""
    @State
    var onDragMove_info: String = ""
    @State
    var onDragLeave_info: String = ""
    @State
    var onDrop_info: String = ""
    @State
    var numbers: ObservedArrayList<String> = ObservedArrayList<String>(["one", "two", "three", "four", "five", "six"])
    @State
    var text: String = ""
    @State
    var bool: Bool = false
    @State
    var bool1: Bool = false
    @State
    var appleVisible: Visibility = Visibility.Visible
    @State
    var orangeVisible: Visibility = Visibility.Visible
    @State
    var bananaVisible: Visibility = Visibility.Visible
    @State
    var select: Int32 = 0
    @Builder
    func pixelMapBuilder() {
        Column() {
            Text(this.text)
                .width(50.percent)
                .height(60)
                .fontSize(16)
                .borderRadius(10)
                .textAlign(TextAlign.Center)
                .backgroundColor(0xFF0000)
        }
    }

    func build() {
        Scroll() {
            Column(space:30) {
                Text("There are three Text elements here")
                    .fontSize(12)
                    .fontColor(0xCCCCCC)
                    .width(90.percent)
                    .textAlign(TextAlign.Start)
                    .margin(5)
                Flex(direction: FlexDirection.Row, alignItems: ItemAlign.Center,
                        justifyContent: FlexAlign.SpaceAround) {
                    Button("banana")
                        .width(25.percent)
                        .height(35)
                        .fontSize(16)
                        .backgroundColor(0xAFEEEE)
                        .visibility(this.bananaVisible)
                        .onDragStart(
                            {
                                evt =>
                                this.text = "apple"
                                this.bananaVisible = Visibility.Hidden
                                var colors: Array<UInt8> = [80, 2, 4, 8, 40, 2, 4, 8]
                                var size: size00 = size00(4, 3)
                                let opts = InitializationOptions(size,scaleMode: ScaleMode.CenterCrop,alphaType: AlphaType.Opaque, editable: false,srcPixelFormat: PixelMapFormat.Nv12, pixelFormat: PixelMapFormat.Nv12)
                                let pixelMap = createPixelMap(colors, opts)
                                return DragItemInfo(pixelMap,  bind(this.pixelMapBuilder,this), "button2")
                            }
                        )
                }.border(width: 1.px).width(90.percent).padding(top: 10, bottom: 10).margin(10)

                Text("This is a List element")
                    .fontSize(12)
                    .fontColor(0xCCCCCC)
                    .width(90.percent)
                    .textAlign(TextAlign.Start)
                    .margin(15)

                List(space: 20, initialIndex: 0) {
                    ForEach(
                        this.numbers,
                        itemGeneratorFunc: {
                            itemInfo: String, index: Int64 => ListItem() {
                                Text(itemInfo)
                                    .fontSize(16.px)
                                    .textAlign(TextAlign.Center)
                                    .borderRadius(10.px)
                                    .backgroundColor(0xAFEEEE)
                                    .width(100.percent)
                                    .height(80)
                            }.onDragStart(
                                {
                                    evt =>
                                    Hilog.info(0,"", "cangjietest",
                                        "onDragStart info:" + evt.extraParams + "," + evt.touchPoint.x.getOrThrow().value.toString() + "," +
                                            evt.touchPoint.y.getOrThrow().value.toString())
                                    this.onDragStart_info = "onDragStart"
                                }
                            )
                        }
                    )
                }
                    .height(50.percent)
                    .width(90.percent)
                    .border(width: 1.px)
                    .divider(ListDividerOptions(strokeWidth: 2.px, color: Color.Red, startMargin: 20.px, endMargin: 20.px))
                    .onDragEnter(
                        {
                            evt =>
                            Hilog.info(0,"", "cangjietest",
                                "onDragEnter info:" + evt.extraParams + "," + evt.touchPoint.x.getOrThrow().value.toString() + "," +
                                    evt.touchPoint.y.getOrThrow().value.toString())
                            this.onDragEnter_info = "onDragEnter"
                        }
                    )
                    .onDragMove(
                        {
                            evt =>
                            Hilog.info(0,"", "cangjietest",
                                "onDragMove info:" + evt.extraParams + "," + evt.touchPoint.x.getOrThrow().value.toString() + "," +
                                    evt.touchPoint.y.getOrThrow().value.toString())
                            this.onDragMove_info = "onDragMove"
                        }
                    )
                    .onDragLeave(
                        {
                            evt =>
                            Hilog.info(0,"", "cangjietest",
                                "onDragLeave info:" + evt.extraParams + "," + evt.touchPoint.x.getOrThrow().value.toString() + "," +
                                    evt.touchPoint.y.getOrThrow().value.toString())
                            this.onDragLeave_info = "onDragLeave"
                        }
                    )
                    .onDrop(
                        {
                            evt =>
                            Hilog.info(0,"", "cangjietest",
                                "onDrop info:" + evt.extraParams + "," + evt.touchPoint.x.getOrThrow().value.toString() + "," +
                                    evt.touchPoint.y.getOrThrow().value.toString())
                            this.onDrop_info = "onDrop"
                        }
                    )
                Text("${onDragStart_info},${onDragEnter_info},${onDragMove_info},${onDragLeave_info}").id("text1")
                Text("${onDrop_info}").id("text2")
            }
        }
    }
}
