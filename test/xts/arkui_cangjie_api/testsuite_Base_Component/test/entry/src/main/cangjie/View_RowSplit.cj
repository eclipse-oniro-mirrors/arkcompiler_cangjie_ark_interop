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
class View_RowSplit {
    @State
    var arr: Array<Int64> = [1, 2]
    func build() {
        Column() {
            RowSplit() {
                Text("1").width(10.percent).height(100).backgroundColor(0xF5DEB3).textAlign(TextAlign.Center)
                Text("2").width(10.percent).height(100).backgroundColor(0xD2B48C).textAlign(TextAlign.Center)
                Text("3").width(10.percent).height(100).backgroundColor(0xF5DEB3).textAlign(TextAlign.Center)
                Text("4").width(10.percent).height(100).backgroundColor(0xD2B48C).textAlign(TextAlign.Center)
                Text("5").width(10.percent).height(100).backgroundColor(0xF5DEB3).textAlign(TextAlign.Center)
            }.resizeable(true) // 可拖动
                .width(90.percent).height(100).id("RowSplit_component")
        }
    }
}
