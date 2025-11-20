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
class Test_Builder_Extend {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(1000)
        driver.findComponent(On().id("View_Builder_Extend")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Builder_Extend_0100
    * @tc.name      : Test_Builder_Extend_0100
    * @tc.desc      : test UIKit Builder Extend
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Builder_Extend_0100() {
        Hilog.info(0,"", "cangjietest", "Test_Builder_Extend_0100 Start")
        driver.findComponent(On().id("bindMenu")).getOrThrow().longClick()
        driver.delayMs(1500)
        var builderInfo1 = driver.findComponent(On().id("Builder_bindMenu_RedFont")).getOrThrow().getText()
        var builderInfo2 = driver.findComponent(On().id("Builder_bindMenu_BlueFont")).getOrThrow().getText()
        Hilog.info(0,"", "cangjietest", "Test_Builder_Extend_0100 content:  ${builderInfo1}")
        Hilog.info(0,"", "cangjietest", "Test_Builder_Extend_0100 content:  ${builderInfo2}")
        @Expect(builderInfo1,"Builder_Extend_RedFont")
        @Expect(builderInfo2,"Builder_Extend_BlueFont")
        driver.pressBack()
        Hilog.info(0,"", "cangjietest", "Test_Builder_Extend_0100 End")
    }

}
