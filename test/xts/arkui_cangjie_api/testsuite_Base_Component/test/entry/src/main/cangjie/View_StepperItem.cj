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
import std.collection.*

@Entry
@Component
class View_StepperItem {
    @State
    var currentIndex: UInt32 = 0
    @State
    var firstState: ItemState = ItemState.Normal
    @State
    var secondState: ItemState = ItemState.Normal
    @State
    var thirdState: ItemState = ItemState.Normal

    func build() {
        Column() {
            Stepper(index:currentIndex) {
                // 第一个步骤页
                StepperItem() {
                    Column() {
                        Text("Page One").fontSize(35).fontColor(0x182431)
//                        Button("change status: ${this.firstState.getValue()}")
//                            .id("changebutton")
//                            .backgroundColor(0x007dFF)
//                            .onClick(
//                                {
//                                    evt => if (this.firstState.toString() == "Skip") {
//                                        this.firstState = ItemState.Normal
//                                    } else {
//                                        this.firstState = ItemState.Skip
//                                    }
//                                })
                    }
                }.nextLabel("下一页").status(status:this.firstState).id("StepperItem1")
                // 第二个步骤页
                StepperItem() {
                    Column() {
                        Text("Page Two").fontSize(35).fontColor(0x182431)
//                        Button("change status: ${this.secondState.getValue()}")
//                            .id("changedisable")
//                            .backgroundColor(0x007dFF)
//                            .onClick(
//                                {
//                                    evt => if (this.secondState.toString() == "Disabled") {
//                                        this.secondState = ItemState.Normal
//                                    } else {
//                                        this.secondState = ItemState.Disabled
//                                    }
//                                })
                    }
                }.nextLabel("下一页").prevLabel("上一页").status(status:this.secondState).id("StepperItem2")
                // 第三个步骤页
                StepperItem() {
                    Column() {
                        Text("Page Three").fontSize(35).fontColor(0x182431)
//                        Button("change status: ${this.thirdState.getValue()}")
//                            .id("changewaiting")
//                            .backgroundColor(0x007dFF)
//                            .onClick(
//                                {
//                                    evt => if (this.thirdState.toString() == "Waiting") {
//                                        this.thirdState = ItemState.Normal
//                                    } else {
//                                        this.thirdState = ItemState.Waiting
//                                    }
//                                })
                    }
                }.nextLabel("下一页").prevLabel("上一页").status(status:this.thirdState).id("StepperItem3")
                // 第四个步骤页
                StepperItem() {
                    Column() {
                        Text("Page Four").fontSize(35).fontColor(0x182431)
                    }
                }
            }
                .backgroundColor(0xF1F3F5)
                .onFinish({
                    =>
                    // 此处可处理点击最后一页的Finish时的逻辑，例如路由跳转等
                    Hilog.info(0,"",   "cangjietest", "onFinish")
                })
                .onSkip({
                    =>
                    // 此处可处理点击跳过时的逻辑，例如动态修改Stepper的index值使其跳转到某一步骤页等
                    Hilog.info(0,"",   "cangjietest", "onSkip")
                })
                .onChange({
                    prevIndex: UInt32, index: UInt32 => if (index != 0) {
                        currentIndex = index
                    }
                })
        }.width(100.percent).padding(top: 5)
    }
}
