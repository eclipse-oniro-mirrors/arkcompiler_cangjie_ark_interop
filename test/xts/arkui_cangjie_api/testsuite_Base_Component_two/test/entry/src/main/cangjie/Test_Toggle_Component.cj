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
class Test_Toggle_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Toggle")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    protected override func beforeEach() {
        driver.delayMs(1000)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Toggle_Component_0100
    * @tc.name      : Test_Toggle_Component_001
    * @tc.desc      : test UIKit Toggle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Toggle_Component_001() {
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_001 start")
        let Inspector = getInspectorByKey("toggleSwitch")
        Hilog.info(0, "","cangjietest", "[Test_Toggle_Component_001] Inspector value: \n" + Inspector.toString())
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_selectedColor = attrs.get("selectedColor").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Toggle_Component_001] selectedColor value: ${attrs_selectedColor}")
        @Expect(attrs_selectedColor, "\"#FF007DFF\"")
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_001 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Toggle_Component_0200
    * @tc.name      : Test_Toggle_Component_002
    * @tc.desc      : test UIKit Toggle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Toggle_Component_002() {
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_002 start")
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("test_toggle")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_ToggleType = obj.get("$attrs").getOrThrow().asObject().get("type").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Toggle_Component_002] ToggleType value: ${obj_ToggleType}")
        let obj_isOn = obj.get("$attrs").getOrThrow().asObject().get("isOn").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Toggle_Component_002] isOn value: ${obj_isOn}")
        @Expect(obj_ToggleType, "\"ToggleType.Switch\"")
        @Expect(obj_isOn, "\"true\"")
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_002 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Toggle_Component_0300
    * @tc.name      : Test_Toggle_Component_003
    * @tc.desc      : test UIKit Toggle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Toggle_Component_003() {
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_003 start")
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("test_toggle")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_selectedColor = obj.get("$attrs").getOrThrow().asObject().get("selectedColor").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Toggle_Component_003] selectedColor value: ${obj_selectedColor}")
        @Expect(obj_selectedColor, "\"#FFFF0000\"")
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_003 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Toggle_Component_0400
    * @tc.name      : Test_Toggle_Component_004
    * @tc.desc      : test UIKit Toggle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Toggle_Component_004() {
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_004 start")
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("toggleSwitch")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_switchPointColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("switchPointColor")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Toggle_Component_004] switchPointColor value: ${obj_switchPointColor}")
        @Expect(obj_switchPointColor, "\"#FFFF0000\"")
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_004 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Toggle_Component_0500
    * @tc.name      : Test_Toggle_Component_005
    * @tc.desc      : test UIKit Toggle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Toggle_Component_005() {
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_005 start")
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("test_toggle")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_switchPointColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("switchPointColor")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Toggle_Component_005] switchPointColor value: ${obj_switchPointColor}")
        @Expect(obj_switchPointColor, "\"#FF008000\"")
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_005 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Toggle_Component_0600
    * @tc.name      : Test_Toggle_Component_006
    * @tc.desc      : test UIKit Toggle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Toggle_Component_006() {
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_006 start")
        driver.findComponent(On().id("toggleSwitch")).getOrThrow().click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("textcontent")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Toggle_Component_006] textcontent value: ${obj_content}")
        @Expect(obj_content, "\"switch true\"")
        Hilog.info(0, "","cangjietest", "Test_Toggle_Component_006 End")
    }
}
