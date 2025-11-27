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
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*

@Test
class Test_Divider_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Divider")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Divider_Component_0100
    * @tc.name      : Test_Divider_Component_001
    * @tc.desc      : test UIKit Divider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Divider_Component_001() {
        Hilog.info(0,"",   "cangjietest", "Test_Divider_Component_001 start")
        let Inspector = getInspectorByKey("dividerbase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Divider_Component_001] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("vertical").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Divider_Component_001] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"false\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Divider_Component_0200
    * @tc.name      : Test_Divider_Component_002
    * @tc.desc      : test UIKit Divider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Divider_Component_002() {
        Hilog.info(0,"",   "cangjietest", "Test_Divider_Component_002 start")
        let Inspector = getInspectorByKey("dividerbase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Divider_Component_002] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("color").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Divider_Component_002] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"#FF008000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Divider_Component_0300
    * @tc.name      : Test_Divider_Component_003
    * @tc.desc      : test UIKit Divider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Divider_Component_003() {
        Hilog.info(0,"",   "cangjietest", "Test_Divider_Component_003 start")
        let Inspector = getInspectorByKey("dividerbase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Divider_Component_003] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("strokeWidth").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Divider_Component_003] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"2.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Divider_Component_0400
    * @tc.name      : Test_Divider_Component_004
    * @tc.desc      : test UIKit Divider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Divider_Component_004() {
        Hilog.info(0,"",   "cangjietest", "Test_Divider_Component_004 start")
        let Inspector = getInspectorByKey("dividerbase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Divider_Component_004] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("lineCap").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Divider_Component_004] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"SQUARE\"")
    }
}
