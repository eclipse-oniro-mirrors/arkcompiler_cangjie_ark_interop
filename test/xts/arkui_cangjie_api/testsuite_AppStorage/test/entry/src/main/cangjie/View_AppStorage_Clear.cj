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
import ohos.arkui.state_macro_manage.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import std.collection.*

@Entry
@Component
class View_AppStorage_Clear {
    @State
    var size: Int64 = 0
    @State
    var res = false
    func build() {
        Column(space: 10) {
            Button("size").id("Test_Button01").onClick({
                ClickEvent => this.size = AppStorage.size()
            })
            Button("clear").id("Test_Button02").onClick({
                ClickEvent => this.res = AppStorage.clear()
            })
            Text("${this.size}").id("Test_Text00")
            Text("${this.res}").id("Test_Text01")
        }
    }
}
