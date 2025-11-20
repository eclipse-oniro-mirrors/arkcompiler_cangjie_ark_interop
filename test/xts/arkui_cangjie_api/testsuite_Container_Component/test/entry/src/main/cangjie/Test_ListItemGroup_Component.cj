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
class Test_ListItemGroup_Component {
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
    * @tc.number    : Sub_Cangjie_UIKit_Test_ListItemGroup_Component_0100
    * @tc.name      : Test_ListItemGroup_Component_001
    * @tc.desc      : test UIKit ListItemGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ListItemGroup_Component_001() {
        Hilog.info(0, "","cangjietest", "Test_ListItemGroup_Component_001 start")
        let ListItemGroup = getInspectorByKey("Test_ListItemGroup")
        let obj = JsonValue.fromStr(ListItemGroup).asObject()
        Hilog.info(0, "","cangjietest", "[Test_ListItemGroup_Component_001] Inspector value: ${ListItemGroup}")
        let obj_space = obj.get("$attrs").getOrThrow().asObject().get("space").getOrThrow().toString()
        @Expect(obj_space,"\"10.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_ListItemGroup_Component_0200
    * @tc.name      : Test_ListItemGroup_Component_002
    * @tc.desc      : test UIKit ListItemGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ListItemGroup_Component_002() {
        Hilog.info(0, "","cangjietest", "Test_ListItemGroup_Component_002 start")
        let ListItemGroup = getInspectorByKey("Test_ListItemGroup")
        let obj = JsonValue.fromStr(ListItemGroup).asObject()
        Hilog.info(0, "","cangjietest", "[Test_ListItemGroup_Component_002] Inspector value: ${ListItemGroup}")
        let obj_strokeWidth = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("divider")
            .getOrThrow()
            .asObject()
            .get("strokeWidth")
            .getOrThrow()
            .toString()
        let obj_startMargin = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("divider")
            .getOrThrow()
            .asObject()
            .get("strokeWidth")
            .getOrThrow()
            .toString()
        let obj_endMargin = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("divider")
            .getOrThrow()
            .asObject()
            .get("strokeWidth")
            .getOrThrow()
            .toString()
        let obj_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("divider")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_strokeWidth,"\"10.00vp\"")
        @Expect(obj_startMargin,"\"10.00vp\"")
        @Expect(obj_endMargin,"\"10.00vp\"")
        @Expect(obj_color,"\"#FF0000FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_ListItemGroup_Component_0300
    * @tc.name      : Test_ListItemGroup_Component_003
    * @tc.desc      : test UIKit ListItemGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ListItemGroup_Component_003() {
        Hilog.info(0, "","cangjietest", "Test_ListItemGroup_Component_003 start")
        let text = driver.findComponent(On().text("Header1"))
        let Text = text.getOrThrow().getText()
        @Expect(Text,"Header1")
    }

}
