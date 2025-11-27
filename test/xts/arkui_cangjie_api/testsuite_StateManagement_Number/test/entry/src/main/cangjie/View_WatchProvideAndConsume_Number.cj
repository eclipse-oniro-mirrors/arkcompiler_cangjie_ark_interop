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
import ohos.base.{LengthProp, Length, Color}
import std.time.{DateTime}
import std.sync.{Timer}

@Component
class Childson_WatchProvideAndConsume_Number {
    @State
    var CheckConsumeString: String = ""
    @Consume
    @Watch[onWatchNumber]
    var count_number: Int64
    @Consume
    @Watch[onWatchObject]
    var count_Object: Num2
    @Consume
    @Watch[onWatchString]
    var count_String: String
    @Consume
    @Watch[onWatchDateTime]
    var count_date: DateTime
    @Consume
    @Watch[onWatchBoolean]
    var count_Boolean: Bool

    func onWatchNumber() {
        this.CheckConsumeString = "onWatchNumber Trggier"
    }

    func onWatchObject() {
        this.CheckConsumeString = "onWatchObject Trggier"
    }

    func onWatchString() {
        this.CheckConsumeString = "onWatchString Trggier"
    }

    func onWatchDateTime() {
        this.CheckConsumeString = "onWatchDateTime Trggier"
    }

    func onWatchBoolean() {
        this.CheckConsumeString = "onWatchBoolean Trggier"
    }

    func build() {
        Text("WatchConsumeState: ${CheckConsumeString}").key("WatchConsumeState")
    }
}

@Component
class Child_WatchProvideAndConsume_Number {
    func build() {
        Column(space:20) {
            Childson_WatchProvideAndConsume_Number()
        }.width(100.percent).margin(top: 10)
    }
}

@Entry
@Component
class View_WatchProvideAndConsume_Number {
    @State
    var CheckProvideString: String = ""
    @Provide
    @Watch[onWatchNumber]
    var count_number: Int64 = 0
    @Provide
    @Watch[onWatchObject]
    var count_Object: Num2 = Num2(0)
    @Provide
    @Watch[onWatchString]
    var count_String: String = ""
    @Provide
    @Watch[onWatchDateTime]
    var count_date: DateTime = DateTime.now()
    @Provide
    @Watch[onWatchBoolean]
    var count_Boolean: Bool = false

    func onWatchNumber() {
        this.CheckProvideString = "onWatchNumber Trggier"
    }

    func onWatchObject() {
        this.CheckProvideString = "onWatchObject Trggier"
    }

    func onWatchString() {
        this.CheckProvideString = "onWatchString Trggier"
    }

    func onWatchDateTime() {
        this.CheckProvideString = "onWatchDateTime Trggier"
    }

    func onWatchBoolean() {
        this.CheckProvideString = "onWatchBoolean Trggier"
    }

    func build() {
        Column(space:20) {
            Text("WatchProvideState: ${CheckProvideString}").key("WatchProvideState")
            Child_WatchProvideAndConsume_Number()
            Button("change").onClick({ClickEvent =>
                this.count_number += 10
            }).key("state1")
            Button("change").onClick({ClickEvent =>
                this.count_Object = Num2(this.count_number)
            }).key("state2")
            Button("change").onClick({ClickEvent =>
                this.count_String += "Cangjie"
            }).key("state3")
            Button("change").onClick({ClickEvent =>
                this.count_date = DateTime.parse(DateTime.now().toString())
            }).key("state4")
            Button("change").onClick({ClickEvent =>
                this.count_Boolean = !this.count_Boolean
            }).key("state5")
        }.width(100.percent).margin(top: 10)
    }
}
