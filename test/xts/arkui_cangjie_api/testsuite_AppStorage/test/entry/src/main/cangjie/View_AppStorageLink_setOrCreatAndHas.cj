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
import ohos.arkui.state_macro_manage.*
import ohos.base.*
import ohos.arkui.state_management.*

@Entry
@Component
class View_AppStorageLink_setOrCreatAndHas {
    @StorageLink["PropInt"]
    var ValueInt: Int64 = 0
    @StorageLink["PropFloat"]
    var ValueFloat: Float64 = 0.0
    @StorageLink["PropRune"]
    var ValueRune: Rune = r'a'
    @StorageLink["PropBool"]
    var ValueBool: Bool = false
    @StorageLink["PropString"]
    var ValueString: String = ""
    @StorageLink["PropClass"]
    var ValueClass: AA = AA("")
    @StorageLink["PropStruct"]
    var ValueStruct: BB = BB("")
    @StorageLink["PropEnum"]
    var ValueEnum: EE = EE.ee(0)
    @State
    var res00 = false
    @State
    var res01 = true
    func build() {
        Column(space:10) {
            Button("Set Value In ParentComp")
                .id("Test_Bottum")
                .onClick({ClickEvent =>
                    AppStorage.setOrCreate("PropInt", 20)
                    AppStorage.setOrCreate("PropFloat", 20.00)
                    AppStorage.setOrCreate("PropRune", r"B")
                    AppStorage.setOrCreate("PropBool", false)
                    AppStorage.setOrCreate("PropString", "HelloCangjie")
                    AppStorage.setOrCreate("PropClass", AA("HelloCangjie"))
                    AppStorage.setOrCreate("PropStruct", BB("HelloCangjie"))
                    AppStorage.setOrCreate("PropEnum", EE.ee(100))
                })
            Button("change")
                .id("Test_Bottum_01")
                .onClick({
                    evt =>
                    this.res00 = AppStorage.has("PropInt")
                    this.res01 = AppStorage.has("PropInt1")
                })
            Divider()
            Text("ValueInt AppStorage:" + this.ValueInt.toString()).id("Int1")
            Text("ValueFloat AppStorage:" + this.ValueFloat.toString()).id("Float1")
            Text("ValueRune AppStorage:" + this.ValueRune.toString()).id("Rune1")
            Text("ValueBool AppStorage:" + this.ValueBool.toString()).id("Bool1")
            Text("ValueString AppStorage:" + this.ValueString.toString()).id("String1")
            Text("ValueClass AppStorage:" + this.ValueClass.aa).id("Class1")
            Text("ValueStruct AppStorage:" + this.ValueStruct.bb).id("Struct1")
            Text("ValueEnum AppStorage:" + EE.getEnumNumber(this.ValueEnum)).id("Enum1")
            Text("${this.res00}").id("Test_Res")
            Text("${this.res01}").id("Test_Res1")
            Divider()
        }
    }
}
