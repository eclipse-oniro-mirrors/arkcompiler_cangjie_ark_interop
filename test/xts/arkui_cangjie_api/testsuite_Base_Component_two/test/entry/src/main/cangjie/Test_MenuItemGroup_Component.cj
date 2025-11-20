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
import std.collection.skip

@Test
class Test_MenuItemGroup_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Menu")).getOrThrow().click()
        driver.delayMs(3000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItemGroup_Component_0100
    * @tc.name      : Test_MenuItemGroup_Component_001
    * @tc.desc      : test UIKit MenuItemGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItemGroup_Component_001() {
        Hilog.info(0, "","cangjietest", "Test_MenuItem_component_001 start")
        driver.findComponent(On().id("showmenu")).getOrThrow().click()
        driver.delayMs(1000)
        let text = driver.findComponent(On().text("小标题"))
        let Text = text.getOrThrow().getText()
        @Expect(Text,"小标题")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItemGroup_Component_0200
    * @tc.name      : Test_MenuItemGroup_Component_002
    * @tc.desc      : test UIKit MenuItemGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItemGroup_Component_002() {
        Hilog.info(0, "","cangjietest", "Test_MenuItemGroup_Component_002 start")
        let text = driver.findComponent(On().text("Test"))
        let Text = text.getOrThrow().getText()
        @Expect(Text,"Test")
    }

    

}
