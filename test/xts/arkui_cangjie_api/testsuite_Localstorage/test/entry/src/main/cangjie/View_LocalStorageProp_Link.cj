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

let storage4 = LocalStorage()
let IntTable4 = storage4.setOrCreate("PropInt", 10)
let FloatTable4 = storage4.setOrCreate("PropFloat", 10.0)
let RuneTable4 = storage4.setOrCreate("PropRune", r'A')
let BoolTable4 = storage4.setOrCreate("PropBool", true)
let StringTable4 = storage4.setOrCreate("PropString", "HelloWorld")
let ClassTable4 = storage4.setOrCreate("PropClass", AA("HelloWorld"))
let StructTable4 = storage4.setOrCreate("PropStruct", BB("HelloWorld"))
let EnumTable4 = storage4.setOrCreate("PropEnum", EE.ee(10))

@Entry[storage4]
@Component
class View_LocalStorageProp_Link {
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
    var ValueInt1 = false

    func build() {
        Column(space:10) {
            Button("Get Prop In ParentComp")
                .id("change1")
                .onClick({
                    ClickEvent =>
                    this.ValueInt = storage4.link<Int64>("PropInt").getOrThrow().get()
                    this.ValueFloat = storage4.link<Float64>("PropFloat").getOrThrow().get()
                    this.ValueRune = storage4.link<Rune>("PropRune").getOrThrow().get()
                    this.ValueBool = storage4.link<Bool>("PropBool").getOrThrow().get()
                    this.ValueString = storage4.link<String>("PropString").getOrThrow().get()
                    this.ValueClass = storage4.link<AA>("PropClass").getOrThrow().get().aa
                    this.ValueStruct = storage4.link<BB>("PropStruct").getOrThrow().get().bb
                    this.ValueEnum = EE.getEnumNumber(storage4.link<EE>("PropEnum").getOrThrow().get())
                    this.ValueInt1 = storage4.link<Int64>("PropInt1").isNone()
                })

            Button("Set Prop In ParentComp")
                .id("change2")
                .onClick({
                    ClickEvent =>
                    storage4.set("PropInt", 50)
                    storage4.set("PropFloat", 50.0)
                    storage4.set("PropRune", r'C')
                    storage4.set("PropBool", true)
                    storage4.set("PropString", "HelloCangjieTwice")
                    storage4.set("PropClass", AA("HelloCangjieTwice"))
                    storage4.set("PropStruct", BB("HelloCangjieTwice"))
                    storage4.set("PropEnum", EE.ee(50))
                    this.ValueInt = storage4.get<Int64>("PropInt").getOrThrow()
                    this.ValueFloat = storage4.get<Float64>("PropFloat").getOrThrow()
                    this.ValueRune = storage4.get<Rune>("PropRune").getOrThrow()
                    this.ValueBool = storage4.get<Bool>("PropBool").getOrThrow()
                    this.ValueString = storage4.get<String>("PropString").getOrThrow()
                    this.ValueClass = storage4.get<AA>("PropClass").getOrThrow().aa
                    this.ValueStruct = storage4.get<BB>("PropStruct").getOrThrow().bb
                    this.ValueEnum = EE.getEnumNumber(storage4.get<EE>("PropEnum").getOrThrow())
                })

            Text("ValueInt In ParentComp: " + this.ValueInt.toString()).id("PropInt")
            Text("ValueFloat In ParentComp: " + this.ValueFloat.toString()).id("PropFloat")
            Text("ValueRune In ParentComp: " + this.ValueRune.toString()).id("PropRune")
            Text("ValueBool In ParentComp: " + this.ValueBool.toString()).id("PropBool")
            Text("ValueBool In ParentComp: " + this.ValueString.toString()).id("PropString")
            Text("ValueClass In ParentComp: " + this.ValueClass.toString()).id("PropClass")
            Text("ValueStruct In ParentComp: " + this.ValueStruct.toString()).id("PropStruct")
            Text("ValueEnum In ParentComp: " + this.ValueEnum).id("PropEnum")
            Text("ValueInt In ParentComp:${this.ValueInt1}").id("PropInt1")
        }.width(100.percent)
    }
}
