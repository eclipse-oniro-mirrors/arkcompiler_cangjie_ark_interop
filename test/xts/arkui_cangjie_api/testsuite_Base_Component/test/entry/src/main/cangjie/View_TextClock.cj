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
class View_TextClock {
    @State
    var controller: TextClockController = TextClockController()
    @State
    var accumulateTime: Int64 = 0
    @State
    var textShadows: Array<ShadowOptions> = [
        ShadowOptions(radius: 10.0, shadowType: ShadowType.Color, offsetX: 10.0, offsetY: 0.0, color: Color.Red),
        ShadowOptions(radius: 10.0, shadowType: ShadowType.Color, offsetX: 20.0, offsetY: 0.0, color: Color.Black),
        ShadowOptions(radius: 10.0, shadowType: ShadowType.Color, offsetX: 30.0, offsetY: 0.0, color: Color.Blue),
        ShadowOptions(radius: 10.0, shadowType: ShadowType.Color, offsetX: 40.0, offsetY: 0.0, color: Color.Green)
    ]
    func build() {
        Column() {
            Text("${this.accumulateTime}").fontSize(20).id("accumulateTime")
            // 以12小时制显示东八区的系统时间，精确到秒。
            TextClock(timeZoneOffset: -8.0, controller: this.controller)
                .id("TextClockBasis")
                .format("aa hh:mm:ss")
                .onDateChange({
                    value: Int64 => accumulateTime = value
                })
                .margin(20)
                .fontSize(30)
                .textShadow(textShadows)
                .fontColor(Color.Blue)
                .fontStyle(FontStyle.Italic)
                .fontWeight(FontWeight.W400)
                .fontFamily("Arial")
            Button("start TextClock").id("startButton").margin(bottom: 10).onClick({
                e =>
                // 启动文本时钟
                controller.start()
            })
            Button("stop TextClock").id("stopButton").onClick({
                e =>
                // 停止文本时钟
                this.controller.stop()
            })
        }.width(100.percent).padding(top: 5)
    }
}
