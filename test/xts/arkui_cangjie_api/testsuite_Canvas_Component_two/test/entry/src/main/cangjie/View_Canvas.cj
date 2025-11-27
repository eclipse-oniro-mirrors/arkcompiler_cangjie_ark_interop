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
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.arkui.ui_context.*
import ohos.base.{LengthProp,  Color, Length}

@Entry
@Component
class View_Canvas {
    var settings: RenderingContextSettings = RenderingContextSettings(antialias: true)
    var context: CanvasRenderingContext2D = CanvasRenderingContext2D(this.settings)
    @State
    var text = ""
    func build() {
        Flex(direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center
        ) {
            Column() {
                Text("${this.text}").id("Test_Text")
            }
            Column() {
                Canvas(this.context)
                    .id("CanvasBasis")
                    .width(100.percent)
                    .height(100.percent)
                    .backgroundColor(0xdda0dd)
                    .position(x: 3, y: 5)
                    .align(Alignment.Center)
                    .onReady(
                        {
                            =>
                            this.context.fillStyle = 0xFF9EC1BB 
                            this.context.fillRect(30.0, 30.0, 100.0, 100.0)
                            this.context.lineWidth = 5.0
                            this.context.strokeRect(25.0, 25.0, 55.0, 75.0)
                            this.context.lineWidth = 10.0
                            this.context.strokeStyle = 0x0000ff 
                            this.context.strokeRect(115.0, 25.0, 75.0, 55.0)
                            this.context.lineWidth= 8.0
                            this.context.beginPath()
                            this.context.lineCap = "LineCapStyle.Round"
                            this.context.moveTo(220.0, 50.0)
                            this.context.lineTo(320.0, 50.0)
                            this.context.stroke()
                            this.text = "OnReady"
                        }
                    )
            }.width(100.percent).height(100.percent)
        }
    }
}
