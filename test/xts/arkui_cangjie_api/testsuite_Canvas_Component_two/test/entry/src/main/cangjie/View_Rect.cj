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
import ohos.base.{LengthProp,  Color, Length}
import kit.LocalizationKit.{AppResource}


@Entry
@Component
class View_Rect {
    func build() {
        Column(space:10) {
            Rect(width: 100, height: 100)
                .radiusWidth(40.00)
                .radiusHeight(20.00)
                .fillOpacity(@r(app.string.fillOpacity))
                .stroke(@r(app.color.start_window_background))
                .strokeDashArray([20.vp])
                .strokeDashOffset(10.vp)
                .strokeWidth(50.00)
                .antiAlias(false)
                .fill(@r(app.color.red))
                .strokeOpacity(@r(app.string.strokeOpacity))
                .id("Rect_component")
                .strokeDashOffset(10.vp)

            Rect(width: 100.vp, height: 100.vp)
                .radiusWidth(40.vp)
                .radiusHeight(20.vp)
                .fill(0x00000)
                .fillOpacity(1.00)
                .stroke(0xF0000)
                .strokeDashArray([20.00])
                .strokeDashOffset(10.00)
                .strokeMiterLimit(5.00)
                .strokeOpacity(1.0)
                .strokeWidth(50.vp)
                .id("Rect_component1")

            Rect(width: 100.00, height: 100.00).radius(20.vp).id("Rect_component2")
            Rect().radius(20).id("Rect_component3").width(50.vp).fill(Color.Red).height(50)
            Rect().radius(20.00).id("Rect_component4").width(50.vp).fill(Color.Green).height(50)
            Rect().radius([20]).id("Rect_component5").width(50.vp).fill(Color.Red).height(50)
            Rect().radius([20.00]).id("Rect_component6").width(50.vp).fill(Color.Green).height(50)
            Rect().radius([20.vp]).id("Rect_component7").width(50.vp).fill(Color.Red).height(50)
            Rect().radius([20.vp, 40.vp]).id("Rect_component8").width(50.vp).fill(Color.Green).height(50)
            Rect().radius([20.00, 40.00]).id("Rect_component9").width(50.vp).fill(Color.Red).height(50)
            Rect().radius([20, 40]).id("Rect_component10").width(50.vp).fill(Color.Green).height(50)
        }
    }
}
