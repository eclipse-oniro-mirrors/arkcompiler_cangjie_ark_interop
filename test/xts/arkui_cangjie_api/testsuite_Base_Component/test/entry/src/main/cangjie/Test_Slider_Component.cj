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
class Test_Slider_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Slider")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Slider_Component_0100
    * @tc.name      : Test_Slider_component_001
    * @tc.desc      : test UIKit Slider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Slider_component_001() {
        Hilog.info(0,"",   "cangjietest", "Test_Slider_component_001 start")
        driver.delayMs(1000)
        let Slider = getInspectorByKey("Test_Silder")
        Hilog.info(0,"",   "cangjietest", "[Test_Slider_component_001] Inspector value: ${Slider}")
        let obj = JsonValue.fromStr(Slider).asObject()
        let obj_value = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("constructor")
            .getOrThrow()
            .asObject()
            .get("value")
            .getOrThrow()
            .toString()
        let obj_min = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("constructor")
            .getOrThrow()
            .asObject()
            .get("min")
            .getOrThrow()
            .toString()
        let obj_max = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("constructor")
            .getOrThrow()
            .asObject()
            .get("max")
            .getOrThrow()
            .toString()
        let obj_step = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("constructor")
            .getOrThrow()
            .asObject()
            .get("step")
            .getOrThrow()
            .toString()
        let obj_style = obj.get("$attrs").getOrThrow().asObject().get("style").getOrThrow().toString()
        let obj_direction = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("constructor")
            .getOrThrow()
            .asObject()
            .get("direction")
            .getOrThrow()
            .toString()
        let obj_reverse = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("constructor")
            .getOrThrow()
            .asObject()
            .get("reverse")
            .getOrThrow()
            .toString()
        @Expect(obj_value,"\"40.000000\"")
        @Expect(obj_min,"\"0.000000\"")
        @Expect(obj_max,"\"100.000000\"")
        @Expect(obj_step,"\"1.000000\"")
        @Expect(obj_style,"\"SliderStyle.InSet\"")
        @Expect(obj_reverse,"\"true\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Slider_Component_0200
    * @tc.name      : Test_Slider_component_002
    * @tc.desc      : test UIKit Slider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Slider_component_002() {
        Hilog.info(0,"",   "cangjietest", "Test_Slider_component_002 start")
        driver.delayMs(1000)
        let Slider = getInspectorByKey("Test_Silder")
        Hilog.info(0,"",   "cangjietest", "[Test_Slider_component_002] Inspector value: ${Slider}")
        let obj = JsonValue.fromStr(Slider).asObject()
        let obj_blockColor = obj.get("$attrs").getOrThrow().asObject().get("blockColor").getOrThrow().toString()
        @Expect(obj_blockColor,"\"#FFCCCCCC\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Slider_Component_0300
    * @tc.name      : Test_Slider_component_003
    * @tc.desc      : test UIKit Slider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Slider_component_003() {
        Hilog.info(0,"",   "cangjietest", "Test_Slider_component_003 start")
        driver.delayMs(1000)
        let Slider = getInspectorByKey("Test_Silder")
        Hilog.info(0,"",   "cangjietest", "[Test_Slider_component_003] Inspector value: ${Slider}")
        let obj = JsonValue.fromStr(Slider).asObject()
        let obj_trackColor = obj.get("$attrs").getOrThrow().asObject().get("trackColor").getOrThrow().toString()
        @Expect(obj_trackColor,"\"#FF000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Slider_Component_0400
    * @tc.name      : Test_Slider_component_004
    * @tc.desc      : test UIKit Slider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Slider_component_004() {
        Hilog.info(0,"",   "cangjietest", "Test_Slider_component_004 start")
        driver.delayMs(1000)
        let Slider = getInspectorByKey("Test_Silder")
        Hilog.info(0,"",   "cangjietest", "[Test_Slider_component_004] Inspector value: ${Slider}")
        let obj = JsonValue.fromStr(Slider).asObject()
        let obj_selectedColor = obj.get("$attrs").getOrThrow().asObject().get("selectedColor").getOrThrow().toString()
        @Expect(obj_selectedColor,"\"#FFCCCCCC\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Slider_Component_0500
    * @tc.name      : Test_Slider_component_005
    * @tc.desc      : test UIKit Slider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Slider_component_005() {
        Hilog.info(0,"",   "cangjietest", "Test_Slider_component_005 start")
        driver.delayMs(1000)
        let Slider = getInspectorByKey("Test_Silder")
        Hilog.info(0,"",   "cangjietest", "[Test_Slider_component_005] Inspector value: ${Slider}")
        let obj = JsonValue.fromStr(Slider).asObject()
        let obj_showSteps = obj.get("$attrs").getOrThrow().asObject().get("showSteps").getOrThrow().toString()
        @Expect(obj_showSteps,"\"false\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Slider_Component_0600
    * @tc.name      : Test_Slider_component_006
    * @tc.desc      : test UIKit Slider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Slider_component_006() {
        Hilog.info(0,"",   "cangjietest", "Test_Slider_component_005 start")
        driver.delayMs(1000)
        let Slider = getInspectorByKey("Test_Silder")
        Hilog.info(0,"",   "cangjietest", "[Test_Slider_component_005] Inspector value: ${Slider}")
        let obj = JsonValue.fromStr(Slider).asObject()
        let obj_showTips = obj.get("$attrs").getOrThrow().asObject().get("showTips").getOrThrow().toString()
        @Expect(obj_showTips,"\"false\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Slider_Component_0700
    * @tc.name      : Test_Slider_component_007
    * @tc.desc      : test UIKit Slider
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Slider_component_007() {
        Hilog.info(0,"",   "cangjietest", "Test_Slider_component_007 start")
        driver.delayMs(1000)
        let Slider = getInspectorByKey("Test_Silder")
        Hilog.info(0,"",   "cangjietest", "[Test_Slider_component_007] Inspector value: ${Slider}")
        let obj = JsonValue.fromStr(Slider).asObject()
        let obj_trackThickness = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("trackThickness")
            .getOrThrow()
            .toString()
        @Expect(obj_trackThickness,"\"10.00vp\"")
    }


    

}
