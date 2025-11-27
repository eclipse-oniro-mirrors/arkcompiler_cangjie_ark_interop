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

let storage9 = LocalStorage()
let IntTable9 = storage9.setOrCreate("PropInt", 10)
let FloatTable9 = storage9.setOrCreate("PropFloat", 10.0)
let RuneTable9 = storage9.setOrCreate("PropRune", r'A')
let BoolTable9 = storage9.setOrCreate("PropBool", true)
let StringTable9 = storage9.setOrCreate("PropString", "HelloWorld")
let ClassTable9 = storage9.setOrCreate("PropClass", AA("HelloWorld"))
let StructTable9 = storage9.setOrCreate("PropStruct", BB("HelloWorld"))
let EnumTable9 = storage9.setOrCreate("PropEnum", EE.ee(10))

@Entry[storage9]
@Component
class View_LocalStorageLink_Link {
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
                    this.ValueInt = storage9.link<Int64>("PropInt").getOrThrow().get()
                    this.ValueFloat = storage9.link<Float64>("PropFloat").getOrThrow().get()
                    this.ValueRune = storage9.link<Rune>("PropRune").getOrThrow().get()
                    this.ValueBool = storage9.link<Bool>("PropBool").getOrThrow().get()
                    this.ValueString = storage9.link<String>("PropString").getOrThrow().get()
                    this.ValueClass = storage9.link<AA>("PropClass").getOrThrow().get().aa
                    this.ValueStruct = storage9.link<BB>("PropStruct").getOrThrow().get().bb
                    this.ValueEnum = EE.getEnumNumber(storage9.link<EE>("PropEnum").getOrThrow().get())
                    this.ValueInt1 = storage4.link<Int64>("PropInt1").isNone()
                })

            Button("Set Prop In ParentComp")
                .id("change2")
                .onClick({
                    ClickEvent =>
                    storage9.set("PropInt", 50)
                    storage9.set("PropFloat", 50.0)
                    storage9.set("PropRune", r'C')
                    storage9.set("PropBool", true)
                    storage9.set("PropString", "HelloCangjieTwice")
                    storage9.set("PropClass", AA("HelloCangjieTwice"))
                    storage9.set("PropStruct", BB("HelloCangjieTwice"))
                    storage9.set("PropEnum", EE.ee(50))
                    this.ValueInt = storage9.get<Int64>("PropInt").getOrThrow()
                    this.ValueFloat = storage9.get<Float64>("PropFloat").getOrThrow()
                    this.ValueRune = storage9.get<Rune>("PropRune").getOrThrow()
                    this.ValueBool = storage9.get<Bool>("PropBool").getOrThrow()
                    this.ValueString = storage9.get<String>("PropString").getOrThrow()
                    this.ValueClass = storage9.get<AA>("PropClass").getOrThrow().aa
                    this.ValueStruct = storage9.get<BB>("PropStruct").getOrThrow().bb
                    this.ValueEnum = EE.getEnumNumber(storage9.get<EE>("PropEnum").getOrThrow())
                })

            Text("ValueInt In ParentComp: " + this.ValueInt.toString()).id("PropInt")
            Text("ValueFloat In ParentComp: " + this.ValueFloat.toString()).id("PropFloat")
            Text("ValueRune In ParentComp: " + this.ValueRune.toString()).id("PropRune")
            Text("ValueBool In ParentComp: " + this.ValueBool.toString()).id("PropBool")
            Text("ValueString In ParentComp: " + this.ValueString.toString()).id("PropString")
            Text("ValueClass In ParentComp: " + this.ValueClass.toString()).id("PropClass")
            Text("ValueStruct In ParentComp: " + this.ValueStruct.toString()).id("PropStruct")
            Text("ValueEnum In ParentComp: " + this.ValueEnum).id("PropEnum")
            Text("ValueInt In ParentComp:${this.ValueInt1}").id("PropInt1")
        }.width(100.percent)
    }
}
