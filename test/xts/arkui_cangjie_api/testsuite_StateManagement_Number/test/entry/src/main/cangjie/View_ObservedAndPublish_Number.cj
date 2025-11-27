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
import std.collection.*
import stdx.encoding.json.*
import std.convert.*
import ohos.base.{LengthProp, Length, Color}

@Observed
class ClassAA {
    @Publish
    var a: Int64 = 0
    @Publish
    var classbb: ClassBB = ClassBB()
}

@Observed
class ClassBB {
    @Publish
    var b: Int64 = 0
}

@Entry
@Component
class View_ObservedAndPublish_Number {
    @State
    var count_ClassAA: ClassAA = ClassAA(a: 0)
    @State
    var count_ClassBB: ClassBB = ClassBB(b: 0)

    func build() {
        Column(space:20) {
            Text("${this.count_ClassAA.a}").key("count_ClassAA")
            Button("change count to ClassAA").onClick({ClickEvent =>
                this.count_ClassAA.a = 100
            }).key("state1")

            Text("${this.count_ClassAA.classbb.b}").key("count_ClassBB")
            Button("change count to ClassBB").onClick({ClickEvent =>
                this.count_ClassAA.classbb.b = 100
            }).key("state2")
        }.width(100.percent).margin(top: 10)
    }
}
