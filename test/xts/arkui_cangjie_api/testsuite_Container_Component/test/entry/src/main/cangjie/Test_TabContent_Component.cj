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
class Test_TabContent_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().id("View_Tabs")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_TabContent_Component_0100
    * @tc.name      : Test_TabContent_Component_001
    * @tc.desc      : test UIKit TabContent
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TabContent_Component_001() {
        Hilog.info(0, "","cangjietest", "Test_TabContent_Component_001 start")
        let TabContent = getInspectorByKey("Test_TabContent_01")
        let obj = JsonValue.fromStr(TabContent).asObject()
        Hilog.info(0, "","cangjietest", "[Test_TabContent_Component_001] Inspector value: ${TabContent}")
        let obj_tabBar = obj.get("$attrs").getOrThrow().asObject().get("text").getOrThrow().toString()
        @Expect(obj_tabBar,"\"Tab0\"")
    }
}
