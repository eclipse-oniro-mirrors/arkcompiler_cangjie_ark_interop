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

let storage6 = LocalStorage()
let IntTable6 = storage6.setOrCreate("PropInt", 10)
let FloatTable6 = storage6.setOrCreate("PropFloat", 10.0)
let RuneTable6 = storage6.setOrCreate("PropRune", r'A')
let BoolTable6 = storage6.setOrCreate("PropBool", true)
let StringTable6 = storage6.setOrCreate("PropString", "HelloWorld")
let ClassTable6 = storage6.setOrCreate("PropClass", AA("HelloWorld"))
let StructTable6 = storage6.setOrCreate("PropStruct", BB("HelloWorld"))
let EnumTable6 = storage6.setOrCreate("PropEnum", EE.ee(10))

@Entry[storage6]
@Component
class View_LocalStorageLink_setOrCreatAndHas {
    @LocalStorageLink["PropInt"]
    var ValueInt: Int64 = 0
    @LocalStorageLink["PropFloat"]
    var ValueFloat: Float64 = 0.0
    @LocalStorageLink["PropRune"]
    var ValueRune: Rune = r'a'
    @LocalStorageLink["PropBool"]
    var ValueBool: Bool = false
    @LocalStorageLink["PropString"]
    var ValueString: String = ""
    @LocalStorageLink["PropClass"]
    var ValueClass: AA = AA("")
    @LocalStorageLink["PropStruct"]
    var ValueStruct: BB = BB("")
    @LocalStorageLink["PropEnum"]
    var ValueEnum: EE = EE.ee(0)
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
            Text("IntTable storage6:${IntTable6} ").id("IntTable")
            Text("FloatTable storage6:${FloatTable6} ").id("FloatTable")
            Text("RuneTable storage6:${RuneTable6} ").id("RuneTable")
            Text("BoolTable storage6:${BoolTable6} ").id("BoolTable")
            Text("StringTable storage6:${StringTable6} ").id("StringTable")
            Text("ClassTable storage6:${ClassTable6} ").id("ClassTable")
            Text("StructTable storage6:${StructTable6} ").id("StructTable")
            Text("EnumTable storage6:${EnumTable6} ").id("EnumTable")

            Button("Set Value In ParentComp")
                .id("Test_Bottum")
                .onClick({
                    ClickEvent =>
                    this.res1 = storage6.setOrCreate("PropInt", 20)
                    this.res2 = storage6.setOrCreate("PropFloat", 20.00)
                    this.res3 = storage6.setOrCreate("PropRune", r"B")
                    this.res4 = storage6.setOrCreate("PropBool", false)
                    this.res5 = storage6.setOrCreate("PropString", "HelloCangjie")
                    this.res6 = storage6.setOrCreate("PropClass", AA("HelloCangjie"))
                    this.res7 = storage6.setOrCreate("PropStruct", BB("HelloCangjie"))
                    this.res8 = storage6.setOrCreate("PropEnum", EE.ee(100))
                })
            Button("change")
                .id("Test_Bottum_01")
                .onClick({
                    evt =>
                    this.res00 = storage6.has("PropInt")
                    this.res01 = storage6.has("PropInt1")
                })
            Divider()
            Text("ValueInt storage6:${this.res1} " + this.ValueInt.toString()).id("Int1")
            Text("ValueFloat storage6:${this.res2} " + this.ValueFloat.toString()).id("Float1")
            Text("ValueRune storage6:${this.res3} " + this.ValueRune.toString()).id("Rune1")
            Text("ValueBool storage6:${this.res4} " + this.ValueBool.toString()).id("Bool1")
            Text("ValueString storage6:${this.res5} " + this.ValueString.toString()).id("String1")
            Text("ValueClass storage6:${this.res6} " + this.ValueClass.aa).id("Class1")
            Text("ValueStruct storage6:${this.res7} " + this.ValueStruct.bb).id("Struct1")
            Text("ValueEnum storage6:${this.res8} " + EE.getEnumNumber(this.ValueEnum)).id("Enum1")
            Text("${this.res00}").id("Test_Res")
            Text("${this.res01}").id("Test_Res1")
            Divider()
        }
    }
}
