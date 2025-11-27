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
class Test_ListItem_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().id("View_List")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_ListItem_Component_0100
    * @tc.name      : Test_ListItem_Component_001
    * @tc.desc      : test UIKit ListItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ListItem_Component_001() {
        Hilog.info(0, "","cangjietest", "Test_List_Component_001 start")
        let ListItem = getInspectorByKey("Test_ListItem_01")
        let obj = JsonValue.fromStr(ListItem).asObject()
        Hilog.info(0, "","cangjietest", "[Test_List_Component_001] Inspector value: ${ListItem}")
        let obj_selectable = obj.get("$attrs").getOrThrow().asObject().get("selectable").getOrThrow().toString()
        @Expect(obj_selectable,"true")
    }
}
