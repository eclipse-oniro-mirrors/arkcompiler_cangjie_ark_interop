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
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
import std.collection.*

public func getValue(itemState:ItemState) {
    match (itemState) {
        case Normal => "ItemState.Normal"
        case Skip => "ItemState.Skip"
        case Disabled => "ItemState.Disabled"
        case _ => ""
    }
}

 public func toString(itemState:ItemState): String {
        match(itemState) {
            case Normal => "Normal"
            case Skip     => "Skip"
            case Disabled     => "Disabled"
            case _ => ""
        }
    }


@Entry
@Component
class View_Stepper {
    @State
    var currentIndex: UInt32 = 0
    @State
    var previousIndex: UInt32 = 0
    @State
    var nextIndex: UInt32 = 0
    @State
    var thisIndex: UInt32 = 0
    @State
    var lastIndex: UInt32 = 0
    @State
    var firstState: ItemState = ItemState.Normal
    @State
    var secondState: ItemState = ItemState.Normal
    @State
    var thirdState: ItemState = ItemState.Normal
    @State
    var fourthState: ItemState = ItemState.Normal

    func build() {
        Column() {
            Stepper(index:this.currentIndex) {
                // 第一个步骤页
                StepperItem() {
                    Column() {
                        Text("Page One").fontSize(35).fontColor(0x182431)
                        Button("change status: ${getValue(this.firstState)}")
                            .id("changebutton")
                            .backgroundColor(0x007dFF)
                            .onClick(
                                {
                                    evt => if (toString(this.firstState) == "Skip") {
                                        this.firstState = ItemState.Normal
                                    } else {
                                        this.firstState = ItemState.Skip
                                    }
                                })
                    }
                }.nextLabel("下一页").status(status:this.firstState)
                // 第二个步骤页
                StepperItem() {
                    Column() {
                        Text("Page Two").fontSize(35).fontColor(0x182431)
                        Button("change status: ${getValue(this.secondState)}")
                            .backgroundColor(0x007dFF)
                            .onClick(
                                {
                                    evt => if (toString(this.secondState) == "Disabled") {
                                        this.secondState = ItemState.Normal
                                    } else {
                                        this.secondState = ItemState.Disabled
                                    }
                                })
                    }
                }.nextLabel("下一页").prevLabel("上一页").status(status:this.secondState)
                // 第三个步骤页
                StepperItem() {
                    Column() {
                        Text("Page Three").fontSize(35).fontColor(0x182431)
                        Button("change status: ${getValue(this.thirdState)}")
                            .backgroundColor(0x007dFF)
                            .onClick(
                                {
                                    evt => if (toString(this.thirdState) == "Waiting") {
                                        this.thirdState = ItemState.Normal
                                    } else {
                                        this.thirdState = ItemState.Waiting
                                    }
                                })
                    }
                }.nextLabel("下一页").prevLabel("上一页").status(status:this.thirdState)
                // 第四个步骤页
                StepperItem() {
                    Column() {
                        Text("Page Four").fontSize(35).fontColor(0x182431)
                    }
                }.nextLabel("finish").prevLabel("上一页").status(status:this.fourthState)

                // 第5个步骤页
                StepperItem() {
                    Column() {
                        Text("Page 5").fontSize(35).fontColor(0x182431)
                        Button("change status: ${getValue(this.firstState)}")
                            .id("changebutton5")
                            .backgroundColor(0x007dFF)
                            .onClick(
                                {
                                    evt => if (toString(this.firstState) == "Skip") {
                                        this.firstState = ItemState.Normal
                                    } else {
                                        this.firstState = ItemState.Skip
                                    }
                                })
                    }
                }
                // 第6个步骤页
                StepperItem() {
                    Column() {
                        Text("Page 6").fontSize(35).fontColor(0x182431)
                        Button("change status: ${getValue(this.firstState)}")
                            .id("changebutton6")
                            .backgroundColor(0x007dFF)
                    }
                }

                // 第7个步骤页
                StepperItem() {
                    Column() {
                        Text("Page 7").fontSize(35).fontColor(0x182431)
                        Button("change status: ${getValue(this.firstState)}")
                            .id("changebutton7")
                            .backgroundColor(0x007dFF)
                    }
                }
            }
                .backgroundColor(0xF1F3F5)
                .onFinish({
                    =>
                    // 此处可处理点击最后一页的Finish时的逻辑，例如路由跳转等
                    Hilog.info(0, "","cangjietest", "onFinish")
                })
                .onSkip({
                    =>
                    // 此处可处理点击跳过时的逻辑，例如动态修改Stepper的index值使其跳转到某一步骤页等
                    Hilog.info(0, "","cangjietest", "onSkip")
                })
                .onChange(
                    {
                        prevIndex: UInt32, index: UInt32 => if (index != 0) {
                            this.thisIndex = index
                            this.previousIndex = prevIndex
                        }
                    })
                .onPrevious(
                    {
                        index: UInt32, pendingIndex: UInt32 => if (index != 0) {
                            this.thisIndex = index
                            this.lastIndex = pendingIndex
                        }
                    })
                .onNext(
                    {
                        index: UInt32, pendingIndex: UInt32 => if (index != 0) {
                            this.thisIndex = index
                            this.nextIndex = pendingIndex
                        }
                    })
                .id("stepperbasic").height(70.percent)
            Text("${toString(this.firstState)}").id("state")
            Text("${this.previousIndex},${this.thisIndex}").id("changepage")
            Text("${this.thisIndex},${this.nextIndex}").id("nextpage")
            Text("${this.thisIndex},${this.lastIndex}").id("lastpage")
            Text("finished").id("finish")
        }.width(100.percent).padding(top: 5).height(100.percent)
    }
}
