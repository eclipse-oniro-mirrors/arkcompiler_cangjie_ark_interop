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
class Test_Blank_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Blank")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Blank_Component_0100
    * @tc.name      : Test_Blank_Component_001
    * @tc.desc      : test UIKit Blank
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Blank_Component_001() {
        Hilog.info(0, "","cangjietest", "Test_Blank_Component_001 start")
        let Blank = getInspectorByKey("blank")
        let obj = JsonValue.fromStr(Blank).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Blank_Component_001] Inspector value: ${Blank}")
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Blank_Component_001] borderStyle value: ${obj_backgroundColor}")
        @Expect(obj_backgroundColor,"\"#FF9B30FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Blank_Component_0200
    * @tc.name      : Test_Blank_Component_002
    * @tc.desc      : test UIKit Blank
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Blank_Component_002() {
        Hilog.info(0, "","cangjietest", "Test_Blank_Component_002 start")
        let Blank = getInspectorByKey("blank")
        let obj = JsonValue.fromStr(Blank).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Blank_Component_002] Inspector value: ${Blank}")
        let obj_min = obj.get("$attrs").getOrThrow().asObject().get("min").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Blank_Component_002] borderStyle value: ${obj_min}")
        @Expect(obj_min,"\"0.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Blank_Component_0300
    * @tc.name      : Test_Blank_Component_003
    * @tc.desc      : test UIKit Blank
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Blank_Component_003() {
        Hilog.info(0, "","cangjietest", "Test_Blank_Component_001 start")
        let Blank = getInspectorByKey("blank2")
        let obj = JsonValue.fromStr(Blank).asObject()
        let backgroundColor = obj.get("$attrs").getOrThrow().asObject().get("backgroundColor").getOrThrow().toString()
        @Expect(backgroundColor,"\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Blank_Component_0400
    * @tc.name      : Test_Blank_Component_004
    * @tc.desc      : test UIKit Blank
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Blank_Component_004() {
        Hilog.info(0, "","cangjietest", "Test_Blank_Component_001 start")
        let Blank = getInspectorByKey("blank2")
        let obj = JsonValue.fromStr(Blank).asObject()
        let backgroundColor = obj.get("$attrs").getOrThrow().asObject().get("backgroundColor").getOrThrow().toString()
        @Expect(backgroundColor,"\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Blank_Component_0500
    * @tc.name      : Test_Blank_Component_005
    * @tc.desc      : test UIKit Blank
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Blank_Component_005() {
        Hilog.info(0, "","cangjietest", "Test_Blank_Component_002 start")
        let Blank = getInspectorByKey("blank2")
        let obj = JsonValue.fromStr(Blank).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Blank_Component_002] Inspector value: ${Blank}")
        let obj_min = obj.get("$attrs").getOrThrow().asObject().get("min").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Blank_Component_002] borderStyle value: ${obj_min}")
        @Expect(obj_min,"\"0.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Blank_Component_0600
    * @tc.name      : Test_Blank_Component_006
    * @tc.desc      : test UIKit Blank
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Blank_Component_006() {
        Hilog.info(0, "","cangjietest", "Test_Blank_Component_002 start")
        let Blank = getInspectorByKey("blank3")
        let obj = JsonValue.fromStr(Blank).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Blank_Component_002] Inspector value: ${Blank}")
        let obj_min = obj.get("$attrs").getOrThrow().asObject().get("min").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Blank_Component_002] borderStyle value: ${obj_min}")
        @Expect(obj_min,"\"0.00vp\"")
    }
}
