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
class View_Image {
    var pixelMap: ?PixelMap = None
    @State
    var loaded: Bool = false
    var LoadingStatus: Int32 = 1
    @State
    var finished = ""
    func build() {
        Scroll() {
            Column {
                Image(@r(app.media.startIcon))
                    .id("imagebasic")
                    .alt(@r(app.media.image))
                    .objectFit(ImageFit.Contain)
                    .objectRepeat(ImageRepeat.NoRepeat)
                    .interpolation(ImageInterpolation.High)
                    .renderMode(ImageRenderMode.Original)
                    .sourceSize(20, 20)
                    .syncLoad(true)
                    .autoResize(false)
                    .fillColor(Color.Blue)
                    .matchTextDirection(true)
                    .fitOriginalSize(true)
                    .width(110)
                    .height(110)
                    .border(width: 1.vp)
                    .borderStyle(BorderStyle.Dashed)



                Image(@r(app.media.image))
                    .id("imagefinished")
                    .onFinish({
                        =>
                        this.finished = "finished"
                        Hilog.info(0,"",   "cangjietest", "load finished")
                    })
                    .height(100)
                    .width(100)
                Text("${this.finished}").id("finished")

                Image("http://gips0.baidu.com/it/u=1690853528,250687")
                    .width(110)
                    .height(110)
                    .border(width: 1.vp)
                    .borderStyle(BorderStyle.Dashed)

                    .height(100)
                    .width(100)
            }.height(100.percent).width(360).padding(right: 10, top: 10)
        }
    }
}
