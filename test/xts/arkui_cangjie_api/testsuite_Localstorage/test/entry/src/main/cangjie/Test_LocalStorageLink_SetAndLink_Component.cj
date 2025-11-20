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

@Test
class Test_LocalStorageLink_SetAndLink_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_LocalStorageLink_SetAndLink")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_SetAndLink_Component_0100
    * @tc.name      : Test_LocalStorageLink_SetAndLink_Component_0100
    * @tc.desc      : test UIKit LocalStorageLink SetAndLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_SetAndLink_Component_0100() {
        driver.findComponent(On().id("change1")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("LinkInt")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("LinkFloat")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("LinkRune")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("LinkBool")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("LinkString")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("LinkClass")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("LinkStruct")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("LinkEnum")).getOrThrow().getText()
        let text08 = driver.findComponent(On().id("LinkInt1")).getOrThrow().getText()
        @Expect(text00,"ValueInt In ParentComp: 10")
        @Expect(text01,"ValueFloat In ParentComp: 10.000000")
        @Expect(text02,"ValueRune In ParentComp: A")
        @Expect(text03,"ValueBool In ParentComp: true")
        @Expect(text04,"ValueString In ParentComp: HelloWorld")
        @Expect(text05,"ValueClass In ParentComp: HelloWorld")
        @Expect(text06,"ValueStruct In ParentComp: HelloWorld")
        @Expect(text07,"ValueEnum In ParentComp: 10")
        @Expect(text08,"ValueInt1 In ParentComp: 100")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_SetAndLink_Component_0200
    * @tc.name      : Test_LocalStorageLink_SetAndLink_Component_0200
    * @tc.desc      : test UIKit LocalStorageLink SetAndLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_SetAndLink_Component_0200() {
        driver.findComponent(On().id("change2")).getOrThrow().click()
        let text00 = driver.findComponent(On().id("LinkInt")).getOrThrow().getText()
        let text01 = driver.findComponent(On().id("LinkFloat")).getOrThrow().getText()
        let text02 = driver.findComponent(On().id("LinkRune")).getOrThrow().getText()
        let text03 = driver.findComponent(On().id("LinkBool")).getOrThrow().getText()
        let text04 = driver.findComponent(On().id("LinkString")).getOrThrow().getText()
        let text05 = driver.findComponent(On().id("LinkClass")).getOrThrow().getText()
        let text06 = driver.findComponent(On().id("LinkStruct")).getOrThrow().getText()
        let text07 = driver.findComponent(On().id("LinkEnum")).getOrThrow().getText()
        let text08 = driver.findComponent(On().id("LinkInt1")).getOrThrow().getText()
        @Expect(text00,"ValueInt In ParentComp: 100")
        @Expect(text01,"ValueFloat In ParentComp: 100.000000")
        @Expect(text02,"ValueRune In ParentComp: D")
        @Expect(text03,"ValueBool In ParentComp: true")
        @Expect(text04,"ValueString In ParentComp: HelloCangjieTriple")
        @Expect(text05,"ValueClass In ParentComp: HelloCangjieTriple")
        @Expect(text06,"ValueStruct In ParentComp: HelloCangjieTriple")
        @Expect(text07,"ValueEnum In ParentComp: 100")
        @Expect(text08,"ValueInt1 In ParentComp: 50")
    }
}
