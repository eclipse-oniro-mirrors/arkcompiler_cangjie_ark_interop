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
class View_ImageSpan {
    func build() {
        Column {
            Text() {
                ImageSpan(@r(app.media.startIcon))
                    .width(150.px)
                    .height(250.px)
                    .objectFit(ImageFit.Contain)
                    .verticalAlign(ImageSpanAlignment.Center)
                    .id("imagespanbasic")

              
                ImageSpan(@r(app.media.startIcon))
                    .width(150.px)
                    .height(50.px)
                    .objectFit(ImageFit.Contain)
                    .verticalAlign(ImageSpanAlignment.Top)
             
                ImageSpan(@r(app.media.startIcon))
                    .width(150.px)
                    .height(250.px)
                    .objectFit(ImageFit.Fill)
                    .verticalAlign(ImageSpanAlignment.Baseline)
             
                ImageSpan(@r(app.media.startIcon))
                    .width(150.px)
                    .height(50.px)
                    .objectFit(ImageFit.Auto)
                    .verticalAlign(ImageSpanAlignment.Bottom)
               
            }.textAlign(TextAlign.Center)
        }.height(720).width(360).padding(left: 0, right: 0, top: 0)
    }
}
