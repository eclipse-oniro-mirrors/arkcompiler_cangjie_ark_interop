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
class Test_AppStorageLink00_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().id("Scroll")).getOrThrow()
        driver.delayMs(1000)
        scrollBar.scrollSearch(On().id("View_AppStorageLink00")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageProp_Component_001
     * @tc.desic：change
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageLink00_Component_0100() {
        driver.findComponent(On().id("change1")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("Int1")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("Float1")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("Rune1")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("Bool1")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("String1")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("Class1")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("Struct1")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("Enum1")).getOrThrow().getText()
        @Expect(text00,"ValueInt storage:9")
        @Expect(text01,"ValueFloat storage:9.000000")
        @Expect(text02,"ValueRune storage:F")
        @Expect(text03,"ValueBool storage:false")
        @Expect(text04,"ValueString storage:Hello")
        @Expect(text05,"ValueClass storage:Hello")
        @Expect(text06,"ValueStruct storage:Hello")
        @Expect(text07,"ValueEnum storage:10")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageLink00_Component_0200
     * @tc.desic：change
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageLink00_Component_0200() {
        let text00 = driver.findComponent(On().id("LinkInt2")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("LinkFloat2")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("LinkRune2")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("LinkBool2")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("LinkString2")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("LinkClass2")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("LinkStruct2")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("LinkEnum2")).getOrThrow().getText()
        @Expect(text00,"ValueInt In ChildComp: 9")
        @Expect(text01,"ValueFloat In ChildComp: 9.000000")
        @Expect(text02,"ValueRune In ChildComp: F")
        @Expect(text03,"ValueBool In ChildComp: false")
        @Expect(text04,"ValueString In ChildComp: Hello")
        @Expect(text05,"ValueClass In ChildComp: Hello")
        @Expect(text06,"ValueStruct In ChildComp: Hello")
        @Expect(text07,"ValueEnum In ChildComp: 10")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageLink00_Component_0300
     * @tc.desic：change
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageLink00_Component_0300() {
        let text00 = driver.findComponent(On().id("LinkInt3")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("LinkFloat3")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("LinkRune3")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("LinkBool3")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("LinkString3")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("LinkClass3")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("LinkStruct3")).getOrThrow().getText()
        @Expect(text00,"ValueInt In ChildComp: 9")
        @Expect(text01,"ValueFloat In ChildComp: 9.000000")
        @Expect(text02,"ValueRune In ChildComp: F")
        @Expect(text03,"ValueBool In ChildComp: false")
        @Expect(text04,"ValueString In ChildComp: Hello")
        @Expect(text05,"ValueClass In ChildComp: Hello")
        @Expect(text06,"ValueStruct In ChildComp: Hello")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageLink00_Component_0400
     * @tc.desic：change
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageLink00_Component_0400() {
        driver.swipe(621, 2245, 621, 1245, speed: 600)
        driver.delayMs(1000)
        let text00 = driver.findComponent(On().id("LinkInt4")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("LinkFloat4")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("LinkRune4")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("LinkBool4")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("LinkString4")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("LinkClass4")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("LinkStruct4")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("LinkEnum4")).getOrThrow().getText()
        @Expect(text00,"ValueInt In ChildComp: 9")
        @Expect(text01,"ValueFloat In ChildComp: 9.000000")
        @Expect(text02,"ValueRune In ChildComp: F")
        @Expect(text03,"ValueBool In ChildComp: false")
        @Expect(text04,"ValueString In ChildComp: Hello")
        @Expect(text05,"ValueClass In ChildComp: Hello")
        @Expect(text06,"ValueStruct In ChildComp: Hello")
        @Expect(text07,"ValueEnum In ChildComp: 10")
    }
}
