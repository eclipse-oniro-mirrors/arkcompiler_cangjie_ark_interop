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
import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*

@Entry
@Component
class View_BindContentCover {
    @State
    var isShow: Bool = false
    @State
    var isShow2: Bool = false
    @State
    var onAppear00 = 0
    @State
    var onDisappear00 = 0
    public func onAppear():Unit {
        onAppear00 = onAppear00 + 1
        Hilog.info(0, "cangjietest", "BindContentCover onAppear.")
    }
    public func onDisappear():Unit {
        onDisappear00 = onDisappear00 + 1
        Hilog.info(0, "cangjietest", "BindContentCover onDisappear.")
    }
    @Builder
    public func myBuilder2():Unit {
        Column() {
            Text("onAppear:${onAppear00}").id("Test_text04")
            Text("onDisappear:${onDisappear00}").id("Test_text05")
            Button("close modal 2").margin(10).fontSize(20).onClick({ClickEvent =>
                this.isShow2 = false
            })
        }.width(100.percent).height(100.percent).justifyContent(FlexAlign.Center)
    }

    @Builder
    public func myBuilder():Unit {
        Column() {
            Text("onAppear:${onAppear00}").id("Test_text02")
            Text("onDisappear:${onDisappear00}").id("Test_text03")
            Button("transition modal 2")
                .margin(10)
                .fontSize(20)
                .onClick({ClickEvent
                    => this.isShow2 = true
                })
                .bindContentCover(
                    this.isShow2,
                    myBuilder2,
                    options:ContentCoverOptions(
                        modalTransition: ModalTransition.Default,
                        backgroundColor: Color.Green,
                        onAppear: onAppear,
                        onDisappear: onDisappear
                    )
                )

            Button("close modal 1").margin(10).fontSize(20).onClick({ClickEvent
                => this.isShow = false
            })
        }.width(100.percent).height(100.percent).justifyContent(FlexAlign.Center)
    }
    func build() {
        Column {
            Text("onAppear:${onAppear00}").id("Test_text00")
            Text("onDisappear:${onDisappear00}").id("Test_text01")
            Button("transition modal 1")
                .onClick({ClickEvent
                    => this.isShow = true
                })
                .fontSize(20)
                .margin(10)
                .bindContentCover(
                    this.isShow,
                    myBuilder,
                    options:ContentCoverOptions(
                        modalTransition: ModalTransition.Default,
                        backgroundColor: Color.Red,
                        onAppear: onAppear,
                        onDisappear: onDisappear
                    )
                )
        }
            .justifyContent(FlexAlign.Center)
            .backgroundColor(Color.White)
            .width(100.percent)
            .height(100.percent)
            .id("Test_Column")
    }
}
