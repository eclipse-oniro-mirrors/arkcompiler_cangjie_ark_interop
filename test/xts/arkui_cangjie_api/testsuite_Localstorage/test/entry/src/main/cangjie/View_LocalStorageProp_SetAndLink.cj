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

let storage2 = LocalStorage()
let IntTable2 = storage2.setOrCreate("PropInt", 10)
let FloatTable2 = storage2.setOrCreate("PropFloat", 10.0)
let RuneTable2 = storage2.setOrCreate("PropRune", r'A')
let BoolTable2 = storage2.setOrCreate("PropBool", true)
let StringTable2 = storage2.setOrCreate("PropString", "HelloWorld")
let ClassTable2 = storage2.setOrCreate("PropClass", AA("HelloWorld"))
let StructTable2 = storage2.setOrCreate("PropStruct", BB("HelloWorld"))
let EnumTable2 = storage2.setOrCreate("PropEnum", EE.ee(10))

@Entry[storage2]
@Component
class View_LocalStorageProp_SetAndLink {
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
                .onClick({
                    ClickEvent =>
                    this.ValueInt = storage2.setAndLink<Int64>("PropInt", 100).get()
                    this.ValueFloat = storage2.setAndLink<Float64>("PropFloat", 100.0).get()
                    this.ValueRune = storage2.setAndLink<Rune>("PropRune", r'C').get()
                    this.ValueBool = storage2.setAndLink<Bool>("PropBool", true).get()
                    this.ValueString = storage2.setAndLink<String>("PropString", "HelloCangjie").get()
                    this.ValueClass = storage2.setAndLink<AA>("PropClass", AA("HelloCangjie")).get().aa
                    this.ValueStruct = storage2.setAndLink<BB>("PropStruct", BB("HelloCangjie")).get().bb
                    this.ValueEnum = EE.getEnumNumber(storage2.setAndLink<EE>("PropEnum", EE.ee(0)).get())
                    this.ValueInt1 = storage2.setAndLink<Int64>("PropInt1", 100).get()
                })

            Button("Set setAndlink In ParentComp")
                .id("change2")
                .onClick({
                    ClickEvent =>
                    storage2.set("PropInt", 100)
                    storage2.set("PropFloat", 100.0)
                    storage2.set("PropRune", r'D')
                    storage2.set("PropBool", true)
                    storage2.set("PropString", "HelloCangjieTriple")
                    storage2.set("PropClass", AA("HelloCangjieTriple"))
                    storage2.set("PropStruct", BB("HelloCangjieTriple"))
                    storage2.set("PropEnum", EE.ee(100))
                    storage2.set<Int64>("PropInt1", 50)
                    this.ValueInt = storage2.get<Int64>("PropInt").getOrThrow()
                    this.ValueFloat = storage2.get<Float64>("PropFloat").getOrThrow()
                    this.ValueRune = storage2.get<Rune>("PropRune").getOrThrow()
                    this.ValueBool = storage2.get<Bool>("PropBool").getOrThrow()
                    this.ValueString = storage2.get<String>("PropString").getOrThrow()
                    this.ValueClass = storage2.get<AA>("PropClass").getOrThrow().aa
                    this.ValueStruct = storage2.get<BB>("PropStruct").getOrThrow().bb
                    this.ValueEnum = EE.getEnumNumber(storage2.get<EE>("PropEnum").getOrThrow())
                    this.ValueInt1 = storage2.get<Int64>("PropInt1").getOrThrow()
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
