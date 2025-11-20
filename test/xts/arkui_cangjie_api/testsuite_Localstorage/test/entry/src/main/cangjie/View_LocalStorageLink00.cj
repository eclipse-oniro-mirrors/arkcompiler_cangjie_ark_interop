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

let storage00 = LocalStorage()
let IntTable00 = storage00.setOrCreate("PropInt", 10)
let FloatTable00 = storage00.setOrCreate("PropFloat", 10.0)
let RuneTable00 = storage00.setOrCreate("PropRune", r'A')
let BoolTable00 = storage00.setOrCreate("PropBool", true)
let StringTable00 = storage00.setOrCreate("PropString", "HelloWorld")
let ClassTable00 = storage00.setOrCreate("PropClass", AA("HelloWorld"))
let StructTable00 = storage00.setOrCreate("PropStruct", BB("HelloWorld"))
let EnumTable00 = storage00.setOrCreate("PropEnum", EE.ee(10))

@Entry[storage00]
@Component
class View_LocalStorageLink00 {
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

    func build() {
        Scroll() {
            Column(space:10) {
                Button("Set Value In ParentComp")
                    .id("change1")
                    .onClick({
                        ClickEvent =>
                        this.ValueInt = this.ValueInt - 1
                        this.ValueFloat = this.ValueFloat - 1.00
                        this.ValueRune = r"F"
                        this.ValueBool = false
                        this.ValueString = "Hello"
                        this.ValueClass = AA("Hello")
                        this.ValueStruct = BB("Hello")
                        this.ValueEnum = EE.ee(10)
                    })

                Divider()
                Text("ValueInt storage:" + this.ValueInt.toString()).id("Int1")
                Text("ValueFloat storage:" + this.ValueFloat.toString()).id("Float1")
                Text("ValueRune storage:" + this.ValueRune.toString()).id("Rune1")
                Text("ValueBool storage:" + this.ValueBool.toString()).id("Bool1")
                Text("ValueString storage:" + this.ValueString.toString()).id("String1")
                Text("ValueClass storage:" + this.ValueClass.aa).id("Class1")
                Text("ValueStruct storage:" + this.ValueStruct.bb).id("Struct1")
                Text("ValueEnum storage:" + EE.getEnumNumber(this.ValueEnum)).id("Enum1")
                Divider()
                View_ChildLink00_00()
                Divider()
                View_ChildLink00_01()
                Divider()
            }
        }
    }
}

@Component
class View_ChildLink00_00 {
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

    func build() {
        Column(space:10) {
            Text("ValueInt In ChildComp: " + this.ValueInt.toString()).id("LinkInt2")
            Text("ValueFloat In ChildComp: " + this.ValueFloat.toString()).id("LinkFloat2")
            Text("ValueRune In ChildComp: " + this.ValueRune.toString()).id("LinkRune2")
            Text("ValueBool In ChildComp: " + this.ValueBool.toString()).id("LinkBool2")
            Text("ValueString In ChildComp: " + this.ValueString.toString()).id("LinkString2")
            Text("ValueClass In ChildComp: " + this.ValueClass.aa).id("LinkClass2")
            Text("ValueStruct In ChildComp: " + this.ValueStruct.bb).id("LinkStruct2")
            Text("ValueEnum In ChildComp: " + EE.getEnumNumber(this.ValueEnum)).id("LinkEnum2")
        }.width(100.percent)
    }
}

@Component
class View_ChildLink00_01 {
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

    func build() {
        Column(space:10) {
            Text("ValueInt In ChildComp: " + this.ValueInt.toString()).id("LinkInt3")
            Text("ValueFloat In ChildComp: " + this.ValueFloat.toString()).id("LinkFloat3")
            Text("ValueRune In ChildComp: " + this.ValueRune.toString()).id("LinkRune3")
            Text("ValueBool In ChildComp: " + this.ValueBool.toString()).id("LinkBool3")
            Text("ValueString In ChildComp: " + this.ValueString.toString()).id("LinkString3")
            Text("ValueClass In ChildComp: " + this.ValueClass.aa).id("LinkClass3")
            Text("ValueStruct In ChildComp: " + this.ValueStruct.bb).id("LinkStruct3")
            Text("ValueEnum In ChildComp: " + EE.getEnumNumber(this.ValueEnum)).id("LinkEnum3")
            Divider()
            View_ChildLink00_02()
        }.width(100.percent)
    }
}

@Component
class View_ChildLink00_02 {
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

    func build() {
        Column(space:10) {
            Text("ValueInt In ChildComp: " + this.ValueInt.toString()).id("LinkInt4")
            Text("ValueFloat In ChildComp: " + this.ValueFloat.toString()).id("LinkFloat4")
            Text("ValueRune In ChildComp: " + this.ValueRune.toString()).id("LinkRune4")
            Text("ValueBool In ChildComp: " + this.ValueBool.toString()).id("LinkBool4")
            Text("ValueString In ChildComp: " + this.ValueString.toString()).id("LinkString4")
            Text("ValueClass In ChildComp: " + this.ValueClass.aa).id("LinkClass4")
            Text("ValueStruct In ChildComp: " + this.ValueStruct.bb).id("LinkStruct4")
            Text("ValueEnum In ChildComp: " + EE.getEnumNumber(this.ValueEnum)).id("LinkEnum4")
        }.width(100.percent)
    }
}
