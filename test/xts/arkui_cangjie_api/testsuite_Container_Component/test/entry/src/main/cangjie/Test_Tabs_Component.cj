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
class Test_Tabs_Component {
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
    * @tc.number    : Sub_Cangjie_UIKit_Test_Tabs_Component_0100
    * @tc.name      : Test_Tabs_Component_001
    * @tc.desc      : test UIKit Tabs
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Tabs_Component_001() {
        Hilog.info(0, "","cangjietest", "Test_Tabs_Component_001 start")
        let Tabs = getInspectorByKey("Test_Tabs")
        let obj = JsonValue.fromStr(Tabs).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Tabs_Component_001] Inspector value: ${Tabs}")
        let obj_barPosition = obj.get("$attrs").getOrThrow().asObject().get("barPosition").getOrThrow().toString()
        @Expect(obj_barPosition,"\"BarPosition.End\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Tabs_Component_0200
    * @tc.name      : Test_Tabs_Component_002
    * @tc.desc      : test UIKit Tabs
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Tabs_Component_002() {
        Hilog.info(0, "","cangjietest", "Test_Tabs_Component_002 start")
        let Tabs = getInspectorByKey("Test_Tabs")
        let obj = JsonValue.fromStr(Tabs).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Tabs_Component_002] Inspector value: ${Tabs}")
        let obj_index = obj.get("$attrs").getOrThrow().asObject().get("index").getOrThrow().toString()
        @Expect(obj_index,"\"0\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Tabs_Component_0300
    * @tc.name      : Test_Tabs_Component_003
    * @tc.desc      : test UIKit Tabs
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Tabs_Component_003() {
        Hilog.info(0, "","cangjietest", "Test_Tabs_Component_003 start")
        let Tabs = getInspectorByKey("Test_Tabs")
        let obj = JsonValue.fromStr(Tabs).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Tabs_Component_003] Inspector value: ${Tabs}")
        let obj_vertical = obj.get("$attrs").getOrThrow().asObject().get("vertical").getOrThrow().toString()
        @Expect(obj_vertical,"\"true\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Tabs_Component_0400
    * @tc.name      : Test_Tabs_Component_004
    * @tc.desc      : test UIKit Tabs
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Tabs_Component_004() {
        Hilog.info(0, "","cangjietest", "Test_Tabs_Component_004 start")
        let Tabs = getInspectorByKey("Test_Tabs")
        let obj = JsonValue.fromStr(Tabs).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Tabs_Component_004] Inspector value: ${Tabs}")
        let obj_scrollable = obj.get("$attrs").getOrThrow().asObject().get("scrollable").getOrThrow().toString()
        @Expect(obj_scrollable,"true")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Tabs_Component_0500
    * @tc.name      : Test_Tabs_Component_005
    * @tc.desc      : test UIKit Tabs
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Tabs_Component_005() {
        Hilog.info(0, "","cangjietest", "Test_Tabs_Component_005 start")
        let Tabs = getInspectorByKey("Test_Tabs")
        let obj = JsonValue.fromStr(Tabs).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Tabs_Component_005] Inspector value: ${Tabs}")
        let obj_barMode = obj.get("$attrs").getOrThrow().asObject().get("barMode").getOrThrow().toString()
        @Expect(obj_barMode,"\"BarMode.Fixed\"")
    }

    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Tabs_Component_0800
    * @tc.name      : Test_Tabs_Component_008
    * @tc.desc      : test UIKit Tabs
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Tabs_Component_008() {
        Hilog.info(0, "","cangjietest", "Test_Tabs_Component_008 start")
        let Tabs = getInspectorByKey("Test_Tabs")
        let obj = JsonValue.fromStr(Tabs).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Tabs_Component_008] Inspector value: ${Tabs}")
        let obj_animationDuration = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("animationDuration")
            .getOrThrow()
            .toString()
        @Expect(obj_animationDuration,"0")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Tabs_Component_0900
    * @tc.name      : Test_Tabs_Component_009
    * @tc.desc      : test UIKit Tabs
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Tabs_Component_009() {
        Hilog.info(0, "","cangjietest", "Test_Tabs_Component_009 start")
        driver.findComponent(On().id("Test_TabContent_01")).getOrThrow().click()
        driver.delayMs(1000)
        let text = driver.findComponent(On().text("Click Jump to Tab0"))
        let Text = text.getOrThrow().getText()
        @Expect(Text,"Click Jump to Tab0")
    }
}
