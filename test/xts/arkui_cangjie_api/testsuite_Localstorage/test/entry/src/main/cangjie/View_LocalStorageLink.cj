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
import ohos.arkui.state_macro_manage.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import std.collection.*

let storage0 = LocalStorage()
let tmp00 = storage0.setOrCreate("PropA", 47)
let storage10 = LocalStorage()

@Entry[storage0]
@Component
class View_LocalStorageLink {
    @LocalStorageLink["PropA"]
    var a: Int64 = 0
    let tmp01 = storage0.setOrCreate("PropB", 20)
    let tmp02 = storage0.setOrCreate("PropC", 20)
    let tmp1 = storage10.setOrCreate("PropA", 47)
    @State
    var res = false
    @State
    var res1 = false
    @State
    var res2 = false
    @State
    var res3 = false
    @State
    var res4 = false
    @State
    var size: Int64 = 0
    @State
    var size1: Int64 = 0

    let ExpectKeys = ["PropA", "PropC"]
    let ExpectExtraKeys = "PropB"
    var StorageKeys: EquatableCollection<String> = storage0.keys()
    @State
    var StorageKeysFlag1: Bool = StorageKeys.contains(all: ExpectKeys)
    @State
    var StorageKeysFlag2: Bool = StorageKeys.contains(ExpectExtraKeys)

    func build() {
        Column(space:10) {
            Button("Delete")
                .id("Test_Button00")
                .onClick({
                    ClickEvent =>
                    this.res = storage0.delete("PropA")
                    this.res1 = storage0.delete("PropB")
                    this.res2 = storage0.delete("PropD")
                })
            Button("keys")
                .id("Test_Button01")
                .onClick({
                    ClickEvent =>
                    this.StorageKeysFlag1 = StorageKeys.contains(all: ExpectKeys)
                    this.StorageKeysFlag2 = StorageKeys.contains(ExpectExtraKeys)
                })
            Button("size").id("Test_Button02").onClick({
                ClickEvent =>
                this.size = storage0.size()
            })

            Button("clear").id("Test_Button03").onClick({
                ClickEvent =>
                let res3 = storage0.clear()
            })

            Button("clear01").id("Test_Button04").onClick({
                ClickEvent =>
                this.res4 = storage10.clear()
            })

            Button("size01").id("Test_Button05").onClick({
                ClickEvent =>
                this.size1 = storage10.size()
            })

            Text("${this.res}").id("Test_Text00")
            Text("${this.res1}").id("Test_Text01")
            Text("${this.res2}").id("Test_Text02")
            Text("${this.StorageKeysFlag1}").id("Test_Text03")
            Text("${this.StorageKeysFlag2}").id("Test_Text04")
            Text("${this.size}").id("Test_Text05")
            Text("${this.res3}").id("Test_Text06")
            Text("${this.res4}").id("Test_Text07")
            Text("${this.size1}").id("Test_Text08")
        }
    }
}
