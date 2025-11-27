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
class View_RichText {
    @State
    var RichText_data: String = """
            <h1 style="text-align: center;">h1标题</h1>
            <h1 style="text-align: center;"><i>h1斜体</i></h1>
            <h1 style="text-align: center;"><u>h1下划线</u></h1>
            <h2 style="text-align: center;">h2标题</h2>
            <h3 style="text-align: center;">h3标题</h3>
            <p style="text-align: center;">p常规</p><hr/>
            <div style="width: 500px;height: 500px;border: 1px solid;margin: 0 auto;">
            <p style="font-size: 35px;text-align: center;font-weight: bold; color: rgb(24,78,228)">字体大小35px,行高45px</p>
            <p style="background-color: #e5e5e5;line-height: 45px;font-size: 35px;text-indent: 2em;">
            <p>Hello Cangjie Hello World</p>;
        """
    @State
    var RichText_eventInfo_001: String = ""
    @State
    var RichText_eventInfo_002: String = ""

    func build() {
        Flex(direction: FlexDirection.Column, wrap: FlexWrap.Wrap) {
            Text("RichText_eventInfo_001: ${RichText_eventInfo_001}").id("RichText_eventInfo_001")
            RichText(this.RichText_data)
                .id("RichText_001")
                .width(100.percent)
                .height(300)
                .backgroundColor(Color(0X92C48D))
                .onStart(
                    {
                        =>
                        this.RichText_eventInfo_001 = "onStart触发"
                        Hilog.info(0,"",   "cangjietest", "RichText onStart Trigger!")
                    }
                )

            Text("RichText_eventInfo_002: ${RichText_eventInfo_002}").id("RichText_eventInfo_002")
            RichText(this.RichText_data)
                .id("RichText_002")
                .width(100.percent)
                .height(300)
                .backgroundColor(Color(0X92C48D))
                .onComplete(
                    {
                        =>
                        this.RichText_eventInfo_002 = "onComplete触发"
                        Hilog.info(0,"",   "cangjietest", "RichText onComplete Trigger!")
                    }
                )
        }
    }
}
