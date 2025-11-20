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

import kit.LocalizationKit.{AppResource}

@Entry
@Component
class View_Circle {
    @State
    var arr: Array<Int64> = [1, 2]
    func build() {
        Column(space:10) {
            Circle(width: 200, height: 100)
                .id("Circle_component")
                .fill(Color.Black)
                .fillOpacity(0.50)
                .stroke(0x317AF7)
                .strokeDashArray([20.00])
                .strokeDashOffset(10.00)
                .strokeLineCap(LineCapStyle.Square)
                .strokeLineJoin(LineJoinStyle.Miter)
                .strokeMiterLimit(5.00)
                .strokeOpacity(1.0)
                .strokeWidth(5.00)
                .antiAlias(false)

            Circle(width: 100.vp, height: 100.vp)
                .id("Circle_component_01")
                .fill(@r(app.color.rectGreen))
                .fillOpacity(@r(app.string.fillOpacity))
                .stroke(@r(app.color.red))
                .strokeDashArray([20.vp])
                .strokeDashOffset(10.vp)
                .strokeOpacity(@r(app.string.strokeOpacity))
                .strokeWidth(5.vp)

            Circle(width: 100.00, height: 100.00).id("Circle_component_02")

            Circle().width(100).height(100).id("Circle_component_03")
        }
    }
}
