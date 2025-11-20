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

let storage3 = LocalStorage()
let IntTable3 = storage3.setOrCreate("PropInt", 10)
let FloatTable3 = storage3.setOrCreate("PropFloat", 10.0)
let RuneTable3 = storage3.setOrCreate("PropRune", r'A')
let BoolTable3 = storage3.setOrCreate("PropBool", true)
let StringTable3 = storage3.setOrCreate("PropString", "HelloWorld")
let ClassTable3 = storage3.setOrCreate("PropClass", AA("HelloWorld"))
let StructTable3 = storage3.setOrCreate("PropStruct", BB("HelloWorld"))
let EnumTable3 = storage3.setOrCreate("PropEnum", EE.ee(10))

@Entry[storage3]
@Component
class View_LocalStorageProp_SetAndGet {
    @LocalStorageProp["PropInt"]
    let ValueInt: Int64 = 0
    @LocalStorageProp["PropFloat"]
    let ValueFloat: Float64 = 0.0
    @LocalStorageProp["PropRune"]
    let ValueRune: Rune = r'a'
    @LocalStorageProp["PropBool"]
    let ValueBool: Bool = false
    @LocalStorageProp["PropString"]
    let ValueString: String = ""
    @LocalStorageProp["PropClass"]
    let ValueClass: AA = AA("")
    @LocalStorageProp["PropStruct"]
    let ValueStruct: BB = BB("")
    @LocalStorageProp["PropEnum"]
    let ValueEnum: EE = EE.ee(0)
    @State
    var res1 = false
    @State
    var res2 = false
    @State
    var res3 = false
    @State
    var res4 = false
    @State
    var res5 = false
    @State
    var res6 = false
    @State
    var res7 = false
    @State
    var res8 = false
    @State
    var res9 = false

    func build() {
        Column(space:10) {
            Button("Set Value In ParentComp")
                .id("change1")
                .onClick({
                    ClickEvent =>
                    this.res1 = storage3.set("PropInt", 20)
                    this.res2 = storage3.set("PropFloat", 20.00)
                    this.res3 = storage3.set("PropRune", r"B")
                    this.res4 = storage3.set("PropBool", false)
                    this.res5 = storage3.set("PropString", "HelloCangjie")
                    this.res6 = storage3.set("PropClass", AA("HelloCangjie"))
                    this.res7 = storage3.set("PropStruct", BB("HelloCangjie"))
                    this.res8 = storage3.set("PropEnum", EE.ee(100))
                    this.res9 = storage3.set("PropInt1", 20)
                })

            Divider()
            Text("ValueInt storage3:${this.res1} " + this.ValueInt.toString()).id("Int1")
            Text("ValueFloat storage3:${this.res2} " + this.ValueFloat.toString()).id("Float1")
            Text("ValueRune storage3:${this.res3} " + this.ValueRune.toString()).id("Rune1")
            Text("ValueBool storage3:${this.res4} " + this.ValueBool.toString()).id("Bool1")
            Text("ValueString storage3:${this.res5} " + this.ValueString.toString()).id("String1")
            Text("ValueClass storage3:${this.res6} " + this.ValueClass.aa).id("Class1")
            Text("ValueStruct storage3:${this.res7} " + this.ValueStruct.bb).id("Struct1")
            Text("ValueEnum storage3:${this.res8} " + EE.getEnumNumber(this.ValueEnum)).id("Enum1")
            Text("ValueInt1 storage3:${this.res9}").id("Int2")
            Divider()
            View_ChildProp_SetAndGet()
            Divider()
        }
    }
}

@Component
class View_ChildProp_SetAndGet {
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
    @State
    var ValueClass: AA = AA("")
    @State
    var ValueStruct: BB = BB("")
    @State
    var ValueEnum: EE = EE.ee(0)
    @State
    var ValueInt_01 = false

    func build() {
        Column(space:10) {
            Button("Get LinkValue In ChildComp")
                .id("change2")
                .onClick({
                    ClickEvent =>
                    this.ValueInt = storage3.get<Int64>("PropInt").getOrThrow()
                    this.ValueFloat = storage3.get<Float64>("PropFloat").getOrThrow()
                    this.ValueRune = storage3.get<Rune>("PropRune").getOrThrow()
                    this.ValueBool = storage3.get<Bool>("PropBool").getOrThrow()
                    this.ValueString = storage3.get<String>("PropString").getOrThrow()
                    this.ValueClass = storage3.get<AA>("PropClass").getOrThrow()
                    this.ValueStruct = storage3.get<BB>("PropStruct").getOrThrow()
                    this.ValueEnum = storage3.get<EE>("PropEnum").getOrThrow()
                    this.ValueInt_01 = storage3.get<Int64>("ValueInt_01").isNone() //None
                })

            Text("ValueInt In ChildComp: " + this.ValueInt.toString()).id("LinkInt2")
            Text("ValueFloat In ChildComp: " + this.ValueFloat.toString()).id("LinkFloat2")
            Text("ValueRune In ChildComp: " + this.ValueRune.toString()).id("LinkRune2")
            Text("ValueBool In ChildComp: " + this.ValueBool.toString()).id("LinkBool2")
            Text("ValueString In ChildComp: " + this.ValueString.toString()).id("LinkString2")
            Text("ValueClass In ChildComp: " + this.ValueClass.aa).id("LinkClass2")
            Text("ValueStruct In ChildComp: " + this.ValueStruct.bb).id("LinkStruct2")
            Text("ValueEnum In ChildComp: " + EE.getEnumNumber(this.ValueEnum)).id("LinkEnum2")
            Text("ValueEnum In ValueInt_01:${this.ValueInt_01}").id("ValueInt_01")
        }.width(100.percent)
    }
}
