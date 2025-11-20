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
class View_AppStorage_Link {
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
                .onClick({ClickEvent =>
                    this.ValueInt = AppStorage.link<Int64>("PropInt").getOrThrow().get()
                    this.ValueFloat = AppStorage.link<Float64>("PropFloat").getOrThrow().get()
                    this.ValueRune = AppStorage.link<Rune>("PropRune").getOrThrow().get()
                    this.ValueBool = AppStorage.link<Bool>("PropBool").getOrThrow().get()
                    this.ValueString = AppStorage.link<String>("PropString").getOrThrow().get()
                    this.ValueClass = AppStorage.link<AA>("PropClass").getOrThrow().get().aa
                    this.ValueStruct = AppStorage.link<BB>("PropStruct").getOrThrow().get().bb
                    this.ValueEnum = EE.getEnumNumber(AppStorage.link<EE>("PropEnum").getOrThrow().get())
                    this.ValueInt1 = AppStorage.link<Int64>("PropInt1").isNone()
                })

            Button("Set Prop In ParentComp")
                .id("change2")
                .onClick({ClickEvent =>
                    AppStorage.set("PropInt", 50)
                    AppStorage.set("PropFloat", 50.0)
                    AppStorage.set("PropRune", r'C')
                    AppStorage.set("PropBool", true)
                    AppStorage.set("PropString", "HelloCangjieTwice")
                    AppStorage.set("PropClass", AA("HelloCangjieTwice"))
                    AppStorage.set("PropStruct", BB("HelloCangjieTwice"))
                    AppStorage.set("PropEnum", EE.ee(50))
                    this.ValueInt = AppStorage.get<Int64>("PropInt").getOrThrow()
                    this.ValueFloat = AppStorage.get<Float64>("PropFloat").getOrThrow()
                    this.ValueRune = AppStorage.get<Rune>("PropRune").getOrThrow()
                    this.ValueBool = AppStorage.get<Bool>("PropBool").getOrThrow()
                    this.ValueString = AppStorage.get<String>("PropString").getOrThrow()
                    this.ValueClass = AppStorage.get<AA>("PropClass").getOrThrow().aa
                    this.ValueStruct = AppStorage.get<BB>("PropStruct").getOrThrow().bb
                    this.ValueEnum = EE.getEnumNumber(AppStorage.get<EE>("PropEnum").getOrThrow())
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
