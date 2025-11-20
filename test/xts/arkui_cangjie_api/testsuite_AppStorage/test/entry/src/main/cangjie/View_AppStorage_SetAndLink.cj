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
class View_AppStorage_SetAndLink {
    @State
    var ValueInt: Int64 = 0
    @State
    var ValueFloat: Float64 = 0.0
    @State
    var ValueRune: Rune = r'a'
    @State
    var ValueBool: Bool = false
    @State
    var ValueString: String = ""
    var ObjClass: AA = AA("")
    @State
    var ValueClass: String = ObjClass.aa
    var ObjStruct: BB = BB("")
    @State
    var ValueStruct: String = ObjStruct.bb
    var ObjEnum: EE = EE.ee(0)
    @State
    var ValueEnum: String = EE.getEnumNumber(ObjEnum)
    @State
    var ValueInt1: Int64 = 0

    func build() {
        Column(space:10) {
            Button("Get setAndlink In ParentComp")
                .id("change1")
                .onClick({ClickEvent =>
                    this.ValueInt = AppStorage.setAndLink<Int64>("PropInt", 100).get()
                    this.ValueFloat = AppStorage.setAndLink<Float64>("PropFloat", 100.0).get()
                    this.ValueRune = AppStorage.setAndLink<Rune>("PropRune", r'C').get()
                    this.ValueBool = AppStorage.setAndLink<Bool>("PropBool", true).get()
                    this.ValueString = AppStorage.setAndLink<String>("PropString", "HelloCangjie").get()
                    this.ValueClass = AppStorage.setAndLink<AA>("PropClass", AA("HelloCangjie")).get().aa
                    this.ValueStruct = AppStorage.setAndLink<BB>("PropStruct", BB("HelloCangjie")).get().bb
                    this.ValueEnum = EE.getEnumNumber(AppStorage.setAndLink<EE>("PropEnum", EE.ee(0)).get())
                    this.ValueInt1 = AppStorage.setAndLink<Int64>("PropInt1", 100).get()
                })

            Button("Set setAndlink In ParentComp")
                .id("change2")
                .onClick({ClickEvent =>
                    AppStorage.set("PropInt", 100)
                    AppStorage.set("PropFloat", 100.0)
                    AppStorage.set("PropRune", r'D')
                    AppStorage.set("PropBool", true)
                    AppStorage.set("PropString", "HelloCangjieTriple")
                    AppStorage.set("PropClass", AA("HelloCangjieTriple"))
                    AppStorage.set("PropStruct", BB("HelloCangjieTriple"))
                    AppStorage.set("PropEnum", EE.ee(100))
                    AppStorage.set<Int64>("PropInt1", 50)
                    this.ValueInt = AppStorage.get<Int64>("PropInt").getOrThrow()
                    this.ValueFloat = AppStorage.get<Float64>("PropFloat").getOrThrow()
                    this.ValueRune = AppStorage.get<Rune>("PropRune").getOrThrow()
                    this.ValueBool = AppStorage.get<Bool>("PropBool").getOrThrow()
                    this.ValueString = AppStorage.get<String>("PropString").getOrThrow()
                    this.ValueClass = AppStorage.get<AA>("PropClass").getOrThrow().aa
                    this.ValueStruct = AppStorage.get<BB>("PropStruct").getOrThrow().bb
                    this.ValueEnum = EE.getEnumNumber(AppStorage.get<EE>("PropEnum").getOrThrow())
                    this.ValueInt1 = AppStorage.get<Int64>("PropInt1").getOrThrow()
                })

            Text("ValueInt In ParentComp: " + this.ValueInt.toString()).id("LinkInt")
            Text("ValueFloat In ParentComp: " + this.ValueFloat.toString()).id("LinkFloat")
            Text("ValueRune In ParentComp: " + this.ValueRune.toString()).id("LinkRune")
            Text("ValueBool In ParentComp: " + this.ValueBool.toString()).id("LinkBool")
            Text("ValueString In ParentComp: " + this.ValueString.toString()).id("LinkString")
            Text("ValueClass In ParentComp: " + this.ValueClass.toString()).id("LinkClass")
            Text("ValueStruct In ParentComp: " + this.ValueStruct.toString()).id("LinkStruct")
            Text("ValueEnum In ParentComp: " + this.ValueEnum).id("LinkEnum")
            Text("ValueInt1 In ParentComp: " + this.ValueInt1.toString()).id("LinkInt1")
        }.width(100.percent)
    }
}
