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

class Num2 {
    public var pages: Int64
    init(pages: Int64) {
        this.pages = pages
    }
}

@Component
class Childson_ProvideAndConsume_Number {
    @Consume
    var count_number: Int64
    @Consume
    var count_Object: Num2
    @Consume
    var count_String: String
    @Consume
    var count_date: DateTime
    @Consume
    var count_Boolean: Bool

    func build() {
        Column(space:20) {
            Text("变量赋值number类型: ${count_number}").key("ConsumeNumber")
            Text("切换变量赋值Num1: ${count_Object.pages}").key("ConsumeObject")
            Text("切换变量赋值String: ${count_String}").key("ConsumeString")
            Text("切换变量赋值Date: ${count_date}").key("ConsumeDate")
            Text("切换变量赋值Boolean: ${count_Boolean}").key("ConsumeBoolean")
        }
    }
}

@Component
class Child_ProvideAndConsume_Number {
    func build() {
        Column(space:20) {
            Childson_ProvideAndConsume_Number()
        }.width(100.percent).margin(top: 10)
    }
}

@Entry
@Component
class View_ProvideAndConsume_Number {
    @Provide
    var count_number: Int64 = 0
    @Provide
    var count_Object: Num2 = Num2(0)
    @Provide
    var count_String: String = ""
    @Provide
    var count_date: DateTime = DateTime.now()
    @Provide
    var count_Boolean: Bool = false

    func build() {
        Column(space:20) {
            Child_ProvideAndConsume_Number()
            Button("change").onClick({ClickEvent =>
                this.count_number = 10
            }).key("state1")
            Button("change").onClick({ClickEvent =>
                this.count_Object = Num2(20)
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
