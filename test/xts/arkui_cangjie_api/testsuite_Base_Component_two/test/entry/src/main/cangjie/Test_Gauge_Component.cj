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
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_1100
    * @tc.name      : Test_Gauge_Component_011
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_011() {
        let Inspector = getInspectorByKey("Gaugebase2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("startAngle").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Gauge_Component_004] borderStyle value: ${obj_borderStyle}")
        @Expect(obj_borderStyle, "\"220.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_1300
    * @tc.name      : Test_Gauge_Component_013
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_013() {
        let Inspector = getInspectorByKey("Gaugebase2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("value").getOrThrow().toString()
        @Expect(obj_borderStyle, "\"10.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_1400
    * @tc.name      : Test_Gauge_Component_014
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_014() {
        let Inspector = getInspectorByKey("Gaugebase2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("endAngle").getOrThrow().toString()
        @Expect(obj_borderStyle, "\"135.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_1500
    * @tc.name      : Test_Gauge_Component_015
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_015() {
        let Inspector = getInspectorByKey("Gaugebase2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0, "","cangjietest", "[Test_Gauge_Component_015] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("colors").getOrThrow().toString()
        @Expect(obj_borderStyle,"\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_1600
    * @tc.name      : Test_Gauge_Component_016
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_016() {
        let Inspector = getInspectorByKey("Gaugebase3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("colors").getOrThrow().toString()
        @Expect(obj_borderStyle,"\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_1700
    * @tc.name      : Test_Gauge_Component_017
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_017() {
        let Inspector = getInspectorByKey("Gaugebase4")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("colors").getOrThrow().toString()
        @Expect(obj_borderStyle,"\"#FF929A9F\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_1800
    * @tc.name      : Test_Gauge_Component_018
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_018() {
        let Inspector = getInspectorByKey("Gaugebase5")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("colors").getOrThrow().toString()
        @Expect(obj_borderStyle,"\"#FF929A9F\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_1900
    * @tc.name      : Test_Gauge_Component_019
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_019() {
        let Inspector = getInspectorByKey("Gaugebase6")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("colors").getOrThrow().toString()
        @Expect(obj_borderStyle.contains("#65EEC9A3"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_2000
    * @tc.name      : Test_Gauge_Component_020
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_020() {
        let Inspector = getInspectorByKey("Gaugebase7")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("colors").getOrThrow().toString()
        @Expect(obj_borderStyle.contains("#65EEC9A3"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_2100
    * @tc.name      : Test_Gauge_Component_021
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_021() {
        let Inspector = getInspectorByKey("Gaugebase8")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("colors").getOrThrow().toString()
        @Expect(obj_borderStyle.contains("#65EEC9A3"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_2200
    * @tc.name      : Test_Gauge_Component_022
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_022() {
        let Inspector = getInspectorByKey("Gaugebase2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
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
        Hilog.info(0, "","cangjietest", "[Test_Gauge_Component_010] borderStyle value: ${obj_icon}")
        @Expect(obj_icon, "\"SystemStyle\"")
        @Expect(obj_space, "\"8.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_2300
    * @tc.name      : Test_Gauge_Component_023
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_023() {
        let Inspector = getInspectorByKey("Gaugebase4")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
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
        Hilog.info(0, "","cangjietest", "[Test_Gauge_Component_010] borderStyle value: ${obj_icon}")
        @Expect(obj_icon, "\"SystemStyle\"")
        @Expect(obj_space, "\"8.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_2400
    * @tc.name      : Test_Gauge_Component_024
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_024() {
        let Inspector = getInspectorByKey("Gaugebase3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
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
        Hilog.info(0, "","cangjietest", "[Test_Gauge_Component_010] borderStyle value: ${obj_icon}")
        @Expect(obj_icon, "\"SystemStyle\"")
        @Expect(obj_space, "\"8.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_2500
    * @tc.name      : Test_Gauge_Component_025
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_025() {
        let Inspector = getInspectorByKey("Gaugebase2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")

        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("value").getOrThrow().toString()
        let max = obj.get("$attrs").getOrThrow().asObject().get("max").getOrThrow().toString()
        let min = obj.get("$attrs").getOrThrow().asObject().get("min").getOrThrow().toString()
        @Expect(obj_borderStyle, "\"10.00\"")
        @Expect(max, "\"100.00\"")
        @Expect(min, "\"0.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_2600
    * @tc.name      : Test_Gauge_Component_026
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_026() {
        let Inspector = getInspectorByKey("Gaugebase3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("value").getOrThrow().toString()
        let max = obj.get("$attrs").getOrThrow().asObject().get("max").getOrThrow().toString()
        let min = obj.get("$attrs").getOrThrow().asObject().get("min").getOrThrow().toString()
        @Expect(obj_borderStyle, "\"50.00\"")
        @Expect(max, "\"100.00\"")
        @Expect(min, "\"0.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_2700
    * @tc.name      : Test_Gauge_Component_027
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_027() {
        let Inspector = getInspectorByKey("Gaugebase4")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("value").getOrThrow().toString()
        let max = obj.get("$attrs").getOrThrow().asObject().get("max").getOrThrow().toString()
        let min = obj.get("$attrs").getOrThrow().asObject().get("min").getOrThrow().toString()
        @Expect(obj_borderStyle, "\"50.00\"")
        @Expect(max, "\"100.00\"")
        @Expect(min, "\"0.00\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Gauge_Component_2800
    * @tc.name      : Test_Gauge_Component_028
    * @tc.desc      : test UIKit Gauge
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Gauge_Component_028() {
        let Inspector = getInspectorByKey("Gaugebase5")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("value").getOrThrow().toString()
        let max = obj.get("$attrs").getOrThrow().asObject().get("max").getOrThrow().toString()
        let min = obj.get("$attrs").getOrThrow().asObject().get("min").getOrThrow().toString()
        @Expect(obj_borderStyle, "\"50.00\"")
        @Expect(max, "\"100.00\"")
        @Expect(min, "\"0.00\"")
    }
}
