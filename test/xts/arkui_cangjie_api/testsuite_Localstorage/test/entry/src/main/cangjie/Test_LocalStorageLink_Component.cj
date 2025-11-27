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
class Test_LocalStorageLink_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_LocalStorageLink")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_Component_0100
    * @tc.name      : Test_LocalStorageLink_Component_0100
    * @tc.desc      : test UIKit LocalStorageLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_Component_0100() {
        driver.findComponent(On().id("Test_Button01")).getOrThrow().click()
        driver.findComponent(On().id("Test_Button02")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text03")).getOrThrow().getText()
        let res01 = driver.findComponent(On().id("Test_Text04")).getOrThrow().getText()
        let res02 = driver.findComponent(On().id("Test_Text05")).getOrThrow().getText()
        @Expect(res00,"true")
        @Expect(res01,"true")
        @Expect(res02,"3")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_Component_0200
    * @tc.name      : Test_LocalStorageLink_Component_0200
    * @tc.desc      : test UIKit LocalStorageLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_Component_0200() {
        driver.findComponent(On().id("Test_Button00")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text00")).getOrThrow().getText()
        let res01 = driver.findComponent(On().id("Test_Text01")).getOrThrow().getText()
        let res02 = driver.findComponent(On().id("Test_Text02")).getOrThrow().getText()
        @Expect(res00,"false")
        @Expect(res01,"true")
        @Expect(res02,"false")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_Component_0300
    * @tc.name      : Test_LocalStorageLink_Component_0300
    * @tc.desc      : test UIKit LocalStorageLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_Component_0300() {
        driver.findComponent(On().id("Test_Button01")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text03")).getOrThrow().getText()
        let res01 = driver.findComponent(On().id("Test_Text04")).getOrThrow().getText()
        @Expect(res00,"true")
        @Expect(res01,"false")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_Component_0400
    * @tc.name      : Test_LocalStorageLink_Component_0400
    * @tc.desc      : test UIKit LocalStorageLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_Component_0400() {
        driver.findComponent(On().id("Test_Button02")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text05")).getOrThrow().getText()
        @Expect(res00,"2")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_Component_0500
    * @tc.name      : Test_LocalStorageLink_Component_0500
    * @tc.desc      : test UIKit LocalStorageLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_Component_0500() {
        driver.findComponent(On().id("Test_Button03")).getOrThrow().click()
        driver.findComponent(On().id("Test_Button02")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text05")).getOrThrow().getText()
        let res01 = driver.findComponent(On().id("Test_Text06")).getOrThrow().getText()
        @Expect(res00,"2")
        @Expect(res01,"false")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_LocalStorageLink_Component_0600
    * @tc.name      : Test_LocalStorageLink_Component_0600
    * @tc.desc      : test UIKit LocalStorageLink
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LocalStorageLink_Component_0600() {
        driver.findComponent(On().id("Test_Button05")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text08")).getOrThrow().getText()
        @Expect(res00,"1")
        driver.delayMs(200)
        driver.findComponent(On().id("Test_Button04")).getOrThrow().click()
        driver.findComponent(On().id("Test_Button05")).getOrThrow().click()
        let res01 = driver.findComponent(On().id("Test_Text08")).getOrThrow().getText()
        let res02 = driver.findComponent(On().id("Test_Text07")).getOrThrow().getText()
        driver.delayMs(200)
        @Expect(res01,"0")
        @Expect(res02,"true")
    }
}
