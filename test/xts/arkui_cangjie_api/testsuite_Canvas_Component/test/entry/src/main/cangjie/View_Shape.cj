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
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.arkui.ui_context.*
import ohos.arkui.component.*
import ohos.base.{LengthProp, Color, Length}

@Entry
@Component
class View_Shape {
    @State
    var arr: Array<Float64> = [1.0, 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
    func build() {
        Column() {
            Shape() {
                Rect().width(300).height(50)
            }
                .id("Shape_component")
                .width(350)
                .height(140)
                .viewPort(x: -2, y: -2, width: 304, height: 130)
                .mesh(arr, 1, 3)
                .fill(0x317AF7)
                .fillOpacity(50.0)
                .stroke(Color.Black)
                .strokeDashArray([20])
                .strokeDashOffset(10)
                .strokeLineCap(LineCapStyle.Round)
                .strokeLineJoin(LineJoinStyle.Round)
                .strokeMiterLimit(5.0)
                .strokeOpacity(0.5)
                .strokeWidth(50.0)
                .antiAlias(true)
        }
    }
}
