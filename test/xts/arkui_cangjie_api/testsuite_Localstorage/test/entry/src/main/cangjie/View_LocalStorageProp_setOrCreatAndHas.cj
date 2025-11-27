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

let storage = LocalStorage()
let IntTable = storage.setOrCreate("PropInt", 10)
let FloatTable = storage.setOrCreate("PropFloat", 10.0)
let RuneTable = storage.setOrCreate("PropRune", r'A')
let BoolTable = storage.setOrCreate("PropBool", true)
let StringTable = storage.setOrCreate("PropString", "HelloWorld")
let ClassTable = storage.setOrCreate("PropClass", AA("HelloWorld"))
let StructTable = storage.setOrCreate("PropStruct", BB("HelloWorld"))
let EnumTable = storage.setOrCreate("PropEnum", EE.ee(10))

@Entry[storage]
@Component
class View_LocalStorageProp_setOrCreatAndHas {
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
    var res00 = false
    @State
    var res01 = true
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

    func build() {
        Column(space:10) {
            Text("IntTable storage: ${IntTable}").id("IntTable")
            Text("FloatTable storage: ${FloatTable}").id("FloatTable")
            Text("RuneTable storage: ${RuneTable}").id("RuneTable")
            Text("BoolTable storage: ${BoolTable}").id("BoolTable")
            Text("StringTable storage: ${StringTable}").id("StringTable")
            Text("ClassTable storage: ${ClassTable}").id("ClassTable")
            Text("StructTable storage: ${StructTable}").id("StructTable")
            Text("EnumTable storage: ${EnumTable}").id("EnumTable")

            Button("Set Value In ParentComp")
                .id("Test_Bottum")
                .onClick({
                    ClickEvent =>
                    this.res1 = storage.setOrCreate("PropInt", 20)
                    this.res2 = storage.setOrCreate("PropFloat", 20.00)
                    this.res3 = storage.setOrCreate("PropRune", r"B")
                    this.res4 = storage.setOrCreate("PropBool", false)
                    this.res5 = storage.setOrCreate("PropString", "HelloCangjie")
                    this.res6 = storage.setOrCreate("PropClass", AA("HelloCangjie"))
                    this.res7 = storage.setOrCreate("PropStruct", BB("HelloCangjie"))
                    this.res8 = storage.setOrCreate("PropEnum", EE.ee(100))
                })

            Button("change")
                .id("Test_Bottum_01")
                .onClick({
                    evt =>
                    this.res00 = storage.has("PropInt")
                    this.res01 = storage.has("PropInt1")
                })

            Divider()
            Text("ValueInt storage:${this.res1} " + this.ValueInt.toString()).id("Int1")
            Text("ValueFloat storage:${this.res2} " + this.ValueFloat.toString()).id("Float1")
            Text("ValueRune storage:${this.res3} " + this.ValueRune.toString()).id("Rune1")
            Text("ValueBool storage:${this.res4} " + this.ValueBool.toString()).id("Bool1")
            Text("ValueString storage:${this.res5} " + this.ValueString.toString()).id("String1")
            Text("ValueClass storage:${this.res6} " + this.ValueClass.aa).id("Class1")
            Text("ValueStruct storage:${this.res7} " + this.ValueStruct.bb).id("Struct1")
            Text("ValueEnum storage:${this.res8} " + EE.getEnumNumber(this.ValueEnum)).id("Enum1")
            Text("${this.res00}").id("Test_Res")
            Text("${this.res01}").id("Test_Res1")
            Divider()
        }
    }
}
