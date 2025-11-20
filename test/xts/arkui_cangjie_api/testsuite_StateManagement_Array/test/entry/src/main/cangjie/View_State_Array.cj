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
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import std.convert.*
import ohos.base.{LengthProp, Length, Color}

class AA {
    var aa = 0
    init(aa: Int64) {
        this.aa = aa
    }
}

@Entry
@Component
class View_State_Array {
    @State
    var array_Int64: Array<Int64> = [1]
    @State
    var array_Boolean: Array<Bool> = [false]
    @State
    var array_Length: Array<Length> = [0.px]
    @State
    var array_Object: Array<AA> = [AA(0)]
    @State
    var array_Resource: Array<AppResource> = [@r(app.string.module_desc)]

    func build() {
        Column(space:20) {
            Text("切换变量Array<Int64>: ${array_Int64}").id("StateInt64")
            Button("change").onClick({
                ClickEvent =>
                this.array_Int64 = [10]
            }).id("state1")

            Text("切换变量Array<boolean>: ${array_Boolean}").id("StateBoolean")
            Button("change").onClick({
                ClickEvent =>
                this.array_Boolean = [true]
            }).id("state2")

            Text("切换变量Array<Length>: ${array_Length[0].value}").id("StateLength")
            Button("change").onClick({
                ClickEvent =>
                this.array_Length = [1.vp]
            }).id("state3")

            Text("切换变量Array<AA>: ${array_Object[0].aa}").id("StateObject")
            Button("change").onClick({
                ClickEvent =>
                this.array_Object = [AA(1)]
            }).id("state4")

            Text("切换变量Array<AppResource>: ${array_Resource[0].id}").id("StateResource")
            Button("change").onClick({
                ClickEvent =>
                this.array_Resource = [@r(app.string.EntryAbility_desc)]
            }).id("state5")
        }.width(100.percent).margin(top: 10)
    }
}
