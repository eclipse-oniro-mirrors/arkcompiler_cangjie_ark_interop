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
import std.unittest.*

@Test
class Test_RichText_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(1000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_RichText")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }


    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichText_Component_0200
    * @tc.name      : Test_RichText_Component_002
    * @tc.desc      : test UIKit RichText
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichText_Component_002() {
        Hilog.info(0,"",   "cangjietest", "Test_RichText_Component_002 Start")
        let obj = driver.findComponent(On().id("RichText_eventInfo_001"))
        driver.delayMs(1000)
        let obj_text = obj.getOrThrow().getText()
        Hilog.info(0,"",   "cangjietest", "[Test_RichText_Component_002] text value: ${obj_text}")
        @Expect(obj_text, "RichText_eventInfo_001: onStart触发")
        Hilog.info(0,"",   "cangjietest", "Test_RichText_Component_002 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichText_Component_0300
    * @tc.name      : Test_RichText_Component_003
    * @tc.desc      : test UIKit RichText
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichText_Component_003() {
        Hilog.info(0,"",   "cangjietest", "Test_RichText_Component_003 Start")
        let obj = driver.findComponent(On().id("RichText_eventInfo_002"))
        driver.delayMs(1000)
        let obj_text = obj.getOrThrow().getText()
        Hilog.info(0,"",   "cangjietest", "[Test_RichText_Component_003] text value: ${obj_text}")
        @Expect(obj_text, "RichText_eventInfo_002: onComplete触发")
        Hilog.info(0,"",   "cangjietest", "Test_RichText_Component_003 End")
    }
}
