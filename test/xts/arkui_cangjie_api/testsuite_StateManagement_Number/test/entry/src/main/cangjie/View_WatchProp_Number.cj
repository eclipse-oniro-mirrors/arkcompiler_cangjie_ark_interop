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

import std.unittest.testmacro.*
import ohos.ui_test.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import std.collection.*
import stdx.encoding.json.*
import std.convert.*
import ohos.base.{LengthProp, Length,  Color}
import std.time.{DateTime}
import std.sync.{Timer}

@Component
class Child_WatchProp_Number {
    @State
    var CheckString: String = ""
    @Prop
    @Watch[onWatchNumber]
    var count_number: Int64
    @Prop
    @Watch[onWatchObject]
    var count_Object: Num3
    @Prop
    @Watch[onWatchString]
    var count_String: String
    @Prop
    @Watch[onWatchDateTime]
    var count_date: DateTime
    @Prop
    @Watch[onWatchBoolean]
    var count_Boolean: Bool

    func onWatchNumber() {
        this.CheckString = "onWatchNumber Trggier"
    }

    func onWatchObject() {
        this.CheckString = "onWatchObject Trggier"
    }

    func onWatchString() {
        this.CheckString = "onWatchString Trggier"
    }

    func onWatchDateTime() {
        this.CheckString = "onWatchDateTime Trggier"
    }

    func onWatchBoolean() {
        this.CheckString = "onWatchBoolean Trggier"
    }

    func build() {
        Column(space:20) {
            Text("WatchStatus: ${CheckString}").key("WatchState")

            Button("change").onClick({ClickEvent =>
                this.count_number = 10
            }).key("state1")
            Button("change").onClick({ClickEvent =>
                this.count_Object = Num3(20)
            }).key("state2")
            Button("change").onClick({ClickEvent =>
                this.count_String = "30"
            }).key("state3")
            Button("change").onClick({ClickEvent =>
                this.count_date = DateTime.parse("2023-04-10T08:00:00+08:00")
            }).key("state4")
            Button("change").onClick({ClickEvent =>
                this.count_Boolean = true
            }).key("state5")
        }.width(100.percent).margin(top: 10)
    }
}

@Entry
@Component
class View_WatchProp_Number {
    @State
    var count_number: Int64 = 0
    @State
    var count_Object: Num3 = Num3(0)
    @State
    var count_String: String = ""
    @State
    var count_date: DateTime = DateTime.now()
    @State
    var count_Boolean: Bool = false

    func build() {
        Column(space:20) {
            Child_WatchProp_Number(count_number: count_number, count_Object: count_Object, count_String: count_String,
                count_date: count_date, count_Boolean: count_Boolean)
        }.width(100.percent).margin(top: 10)
    }
}
