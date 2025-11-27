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
import std.unittest.testmacro.*
import ohos.ui_test.*
import ohos.arkui.state_macro_manage.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.arkui.state_macro_manage.r

@Test
class Test_AppStorageProp_setOrCreateAndHas_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().id("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_AppStorageProp_setOrCreatAndHas")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageProp_setOrCreateAndHas_Component_0100
     * @tc.desic：setOrCreate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageProp_setOrCreateAndHas_Component_0100() {
        let text00 = driver.findComponent(On().id("Int1")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("Float1")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("Rune1")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("Bool1")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("String1")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("Class1")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("Struct1")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("Enum1")).getOrThrow().getText()
        @Expect(text00,"ValueInt AppStorage:10")
        @Expect(text01,"ValueFloat AppStorage:10.000000")
        @Expect(text02,"ValueRune AppStorage:A")
        @Expect(text03,"ValueBool AppStorage:true")
        @Expect(text04,"ValueString AppStorage:HelloWorld")
        @Expect(text05,"ValueClass AppStorage:HelloWorld")
        @Expect(text06,"ValueStruct AppStorage:HelloWorld")
        @Expect(text07,"ValueEnum AppStorage:10")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageProp_setOrCreateAndHas_Component_0200
     * @tc.desic： setOrCreate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageProp_setOrCreateAndHas_Component_0200() {
        driver.findComponent(On().id("Test_Bottum")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("Int1")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("Float1")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("Rune1")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("Bool1")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("String1")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("Class1")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("Struct1")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("Enum1")).getOrThrow().getText()
        @Expect(text00,"ValueInt AppStorage:20")
        @Expect(text01,"ValueFloat AppStorage:20.000000")
        @Expect(text02,"ValueRune AppStorage:B")
        @Expect(text03,"ValueBool AppStorage:false")
        @Expect(text04,"ValueString AppStorage:HelloCangjie")
        @Expect(text05,"ValueClass AppStorage:HelloCangjie")
        @Expect(text06,"ValueStruct AppStorage:HelloCangjie")
        @Expect(text07,"ValueEnum AppStorage:100")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageProp_setOrCreateAndHas_Component_0300
     * @tc.desic： has
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageProp_setOrCreateAndHas_Component_0300() {
        driver.findComponent(On().id("Test_Bottum_01")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("Test_Res")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("Test_Res1")).getOrThrow().getText()
        @Expect(text00,"true")
        @Expect(text01,"false")
    }
}
