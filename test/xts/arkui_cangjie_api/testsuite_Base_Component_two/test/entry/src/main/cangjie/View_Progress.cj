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

@Entry
@Component
class View_Progress {
    func build() {
        Column(space:15) {
            Text("Linear Progress").fontSize(9).fontColor(0xCCCCCC).width(90.percent)
            Progress(value: 10.0, progressType: ProgressType.Linear).width(200).id("LinearProgressBasis1")
            Progress(value: 20.0, total: 150.0, progressType: ProgressType.Linear)
                .color(Color(0x6572B513))
                .value(50.0)
                .width(200)
                .id("LinearProgressBasis2")

            Text("Eclipse Progress").fontSize(9).fontColor(0xCCCCCC).width(90.percent)
            Row(space:40) {
                Progress(value: 10.0, progressType: ProgressType.Eclipse).width(100)
                Progress(value: 20.0, total: 150.0, progressType: ProgressType.Eclipse)
                    .color(Color(0x6572B513))
                    .value(50.0)
                    .width(100)
                    .id("EclipseProgressBasis")
            }

            Text("ScaleRing Progress").fontSize(9).fontColor(0xCCCCCC).width(90.percent)
            Row(space:40) {
                Progress(value: 10.0, progressType: ProgressType.ScaleRing).width(100)
                Progress(value: 20.0, total: 150.0, progressType: ProgressType.ScaleRing)
                    .color(Color(0x6572B513))
                    .value(50.0)
                    .width(100)
                    .style(strokeWidth: 15.vp, scaleCount: 15, scaleWidth: 5.vp)
                    .id("ScaleRingProgressBasis")
            }

            Text("Ring Progress").fontSize(9).fontColor(0xCCCCCC).width(90.percent)
            Row(space:40) {
                Progress(value: 10.0, progressType: ProgressType.Ring).width(100)
                Progress(value: 20.0, total: 150.0, progressType: ProgressType.Ring)
                    .color(Color(0x6572B513))
                    .value(50.0)
                    .width(100)
                    .style(strokeWidth: 20, scaleCount: 30, scaleWidth: 20)
                    .id("RingProgressBasis")
            }

            Text("Capsule Progress").fontSize(9).fontColor(0xCCCCCC).width(90.percent)
            Row(space:40) {
                Progress(value: 10.0, progressType: ProgressType.Capsule).width(100).height(50)
                Progress(value: 20.0, total: 150.0,progressType: ProgressType.Capsule)
                    .color(Color(0x6572B513))
                    .value(50.0)
                    .width(100)
                    .height(50)
                    .id("CapsuleProgressBasis")
            }

            Text("abnormal").fontSize(9).fontColor(0xCCCCCC).width(90.percent)
            Row(space:40) {
                Progress(value: 0.0, progressType: ProgressType.Ring)
                    .width(100)
                    .height(50)
                    .value(0.0)
                    .color(Color.Red)
                    .style(strokeWidth: -1, scaleCount: -1, scaleWidth: -1)
                    .id("abnormal_Progress1")

                Progress(value: -0.01, progressType: ProgressType.Eclipse)
                    .width(100)
                    .height(50)
                    .value(-0.01)
                    .style(strokeWidth: 0, scaleCount: 0, scaleWidth: 0)
                    .id("abnormal_Progress2")

                Progress(value: 100.01, total: 90.0, progressType: ProgressType.ScaleRing)
                    .width(100)
                    .height(50)
                    .value(100.01)
                    .id("abnormal_Progress3")
            }
        }.width(100.percent).margin(top: 30)
    }
}
