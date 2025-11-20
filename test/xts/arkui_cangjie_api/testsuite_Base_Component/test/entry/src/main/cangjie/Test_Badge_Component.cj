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
class Test_Badge_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Badge")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Badge_Component_0100
    * @tc.name      : Test_Badge_Component_001
    * @tc.desc      : test UIKit Badge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Badge_Component_001() {
        let Inspector = getInspectorByKey("Badge_commpont")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "Test_Badge_Component_001]: ${a}")
        }
        let color = obj.get("$attrs").getOrThrow().asObject().get("id").getOrThrow().toString()
        @Expect(color, "\"Badge_commpont\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Badge_Component_0200
    * @tc.name      : Test_Badge_Component_002
    * @tc.desc      : test UIKit Badge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Badge_Component_002() {
        let Inspector = getInspectorByKey("Badge_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let color = obj.get("$attrs").getOrThrow().asObject().get("count").getOrThrow().toString()
        @Expect(color, "\"1\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Badge_Component_0300
    * @tc.name      : Test_Badge_Component_003
    * @tc.desc      : test UIKit Badge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Badge_Component_003() {
        let Inspector = getInspectorByKey("Badge_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let color = obj.get("$attrs").getOrThrow().asObject().get("maxCount").getOrThrow().toString()
        @Expect(color, "\"15\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Badge_Component_0400
    * @tc.name      : Test_Badge_Component_004
    * @tc.desc      : test UIKit Badge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Badge_Component_004() {
        let Inspector = getInspectorByKey("Badge_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let color = obj.get("$attrs").getOrThrow().asObject().get("position").getOrThrow().toString()
        @Expect(color, "\"BadgePosition.Right\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Badge_Component_0500
    * @tc.name      : Test_Badge_Component_005
    * @tc.desc      : test UIKit Badge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Badge_Component_005() {
        let Inspector = getInspectorByKey("Badge_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let style = obj.get("$attrs").getOrThrow().asObject().get("style").getOrThrow().toString()
        @Expect(style.contains("color\\\":\\\"#FF000000"))
        @Expect(style.contains("fontSize\\\":\\\"20.00vp"))
        @Expect(style.contains("badgeColor\\\":\\\"#FFFFCCCC"))
        @Expect(style.contains("badgeSize\\\":\\\"25.00vp"))
    }
}
