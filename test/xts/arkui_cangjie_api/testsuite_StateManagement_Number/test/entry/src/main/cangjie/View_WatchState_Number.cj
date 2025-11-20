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
import ohos.arkui.state_macro_manage.*
import ohos.arkui.state_macro_manage.*
import std.collection.*
import stdx.encoding.json.*
import std.convert.*
import ohos.base.{LengthProp, Length,Color}
import std.time.{DateTime}
import std.sync.{Timer}
import ohos.arkui.state_management.ObservedProperty
import ohos.arkui.state_management.{SubscriberManager, LocalStorage}

@Entry
@Component
class View_WatchState_Number {
    @State
    var CheckString: String = ""
    @State
    @Watch[onWatchNumber]
    var baseNumber: Int64 = 0
    @State
    @Watch[onWatchObject]
    var baseObject: Num1 = Num1(0)
    @State
    @Watch[onWatchString]
    var baseString: String = ""
    @State
    @Watch[onWatchDateTime]
    var baseDate: DateTime = DateTime.now()
    @State
    @Watch[onWatchBoolean]
    var baseBoolean: Bool = false

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

            Button("Trigger onWatchNumber").onClick({ClickEvent =>
                this.baseNumber = 10
            }).key("state1")
            Button("Trigger onWatchObject").onClick({ClickEvent =>
                this.baseObject = Num1(20)
            }).key("state2")
            Button("Trigger onWatchString").onClick({ClickEvent =>
                this.baseString = "30"
            }).key("state3")
            Button("Trigger onWatchDateTime")
                .onClick({ClickEvent =>
                    this.baseDate = DateTime.parse("2023-04-10T08:00:00+08:00")
                })
                .key("state4")
            Button("Trigger onWatchBoolean").onClick({ClickEvent =>
                this.baseBoolean = true
            }).key("state5")
        }.width(100.percent).margin(top: 10)
    }
}
