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
class Test_Gauge_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Gauge")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_0100
    * @tc.name      : Test_Gauge_Component_001
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_001() {
        Hilog.info(0,"",   "cangjietest", "Test_Gauge_Component_001 start")
        let Inspector = getInspectorByKey("Gaugebase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_001] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("value").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_001] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"50.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_0200
    * @tc.name      : Test_Gauge_Component_002
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_002() {
        Hilog.info(0,"",   "cangjietest", "Test_Gauge_Component_002 start")
        let Inspector = getInspectorByKey("Gaugebase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_002] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("max").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_002] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"100.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_0300
    * @tc.name      : Test_Gauge_Component_003
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_003() {
        Hilog.info(0,"",   "cangjietest", "Test_Gauge_Component_003 start")
        let Inspector = getInspectorByKey("Gaugebase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_003] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("min").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_003] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"0.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_0400
    * @tc.name      : Test_Gauge_Component_004
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_004() {
        Hilog.info(0,"",   "cangjietest", "Test_Gauge_Component_004 start")
        let Inspector = getInspectorByKey("Gaugebase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_004] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("startAngle").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_004] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"220.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_0500
    * @tc.name      : Test_Gauge_Component_005
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_005() {
        Hilog.info(0,"",   "cangjietest", "Test_Gauge_Component_005 start")
        let Inspector = getInspectorByKey("Gaugebase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_005] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("endAngle").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_005] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"135.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_0600
    * @tc.name      : Test_Gauge_Component_006
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_006() {
        Hilog.info(0,"",   "cangjietest", "Test_Gauge_Component_006 start")
        let Inspector = getInspectorByKey("Gaugebase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_006] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("colors").getOrThrow().toString()
        @Expect(obj_borderStyle.contains("#65EEC9A3"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_0700
    * @tc.name      : Test_Gauge_Component_007
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_007() {
        Hilog.info(0,"",   "cangjietest", "Test_Gauge_Component_007 start")
        let Inspector = getInspectorByKey("Gaugebase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_007] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_007] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"80.00%\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_0800
    * @tc.name      : Test_Gauge_Component_008
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_008() {
        Hilog.info(0,"",   "cangjietest", "Test_Gauge_Component_004 start")
        let Inspector = getInspectorByKey("Gaugebase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_004] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("strokeWidth").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_004] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"18.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_0900
    * @tc.name      : Test_Gauge_Component_009
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_009() {
        Hilog.info(0,"",   "cangjietest", "Test_Gauge_Component_009 start")
        let Inspector = getInspectorByKey("Gaugebase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_009] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("trackShadow")
            .getOrThrow()
            .asObject()
            .get("radius")
            .getOrThrow()
            .toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_009] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"7.000000\"")
        let obj_offsetX = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("trackShadow")
            .getOrThrow()
            .asObject()
            .get("offsetX")
            .getOrThrow()
            .toString()
        let obj_offsetY = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("trackShadow")
            .getOrThrow()
            .asObject()
            .get("offsetY")
            .getOrThrow()
            .toString()
        @Expect(obj_offsetX, "\"7.000000\"")
        @Expect(obj_offsetY, "\"7.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_1000
    * @tc.name      : Test_Gauge_Component_010
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_010() {
        Hilog.info(0,"",   "cangjietest", "Test_Gauge_Component_010 start")
        let Inspector = getInspectorByKey("Gaugebase")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_010] Inspector value:  ${i}")
        }
        let obj_icon = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("indicator")
            .getOrThrow()
            .asObject()
            .get("icon")
            .getOrThrow()
            .toString()
        let obj_space = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("indicator")
            .getOrThrow()
            .asObject()
            .get("space")
            .getOrThrow()
            .toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Gauge_Component_010] borderStyle value: ${obj_icon}")
        @Expect(obj_icon, "\"SystemStyle\"")
        @Expect(obj_space, "\"8.00vp\"")
    }
}
