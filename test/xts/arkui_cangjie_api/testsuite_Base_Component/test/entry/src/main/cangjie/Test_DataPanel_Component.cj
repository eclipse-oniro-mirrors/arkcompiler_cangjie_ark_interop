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
class Test_DataPanel_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_DataPanel")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DataPanel_Component_0100
    * @tc.name      : Test_DataPanel_Component_001
    * @tc.desc      : test UIKit DataPanel
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DataPanel_Component_001() {
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_001] start")
        // 1、获取页面中id为dataPanelBasis的组件信息
        let Inspector = getInspectorByKey("dataPanelBasis")
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_001] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_001]: ${a}")
        }
        //3、读取组件信息json中的values
        let obj_values = obj.get("$attrs").getOrThrow().asObject().get("values").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_001] values value: ${obj_values}")
        @Expect(obj_values, "[20,20,20,20]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DataPanel_Component_0200
    * @tc.name      : Test_DataPanel_Component_002
    * @tc.desc      : test UIKit DataPanel
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DataPanel_Component_002() {
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_002] start")
        // 1、获取页面中id为dataPanelBasis的组件信息
        let Inspector = getInspectorByKey("dataPanelBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的max
        let obj_max = obj.get("$attrs").getOrThrow().asObject().get("max").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_002] max value: ${obj_max}")
        @Expect(obj_max, "\"100.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DataPanel_Component_0300
    * @tc.name      : Test_DataPanel_Component_003
    * @tc.desc      : test UIKit DataPanel
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DataPanel_Component_003() {
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_003] start")
        // 1、获取页面中id为dataPanelBasis的组件信息
        let Inspector = getInspectorByKey("dataPanelBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的panelType
        let obj_panelType = obj.get("$attrs").getOrThrow().asObject().get("type").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_003] panelType value: ${obj_panelType}")
        @Expect(obj_panelType, "\"DataPanelType.Circle\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DataPanel_Component_0400
    * @tc.name      : Test_DataPanel_Component_004
    * @tc.desc      : test UIKit DataPanel
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DataPanel_Component_004() {
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_004] start")
        // 1、获取页面中id为dataPanelBasis的组件信息
        let Inspector = getInspectorByKey("dataPanelBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的closeEffect
        let obj_closeEffect = obj.get("$attrs").getOrThrow().asObject().get("closeEffect").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_004] closeEffect value: ${obj_closeEffect}")
        @Expect(obj_closeEffect, "\"true\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DataPanel_Component_0500
    * @tc.name      : Test_DataPanel_Component_005
    * @tc.desc      : test UIKit DataPanel
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DataPanel_Component_005() {
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_005] start")
        // 1、获取页面中id为dataPanelBasis的组件信息
        let Inspector = getInspectorByKey("dataPanelBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的valueColors
        let obj_valueColors = obj.get("$attrs").getOrThrow().asObject().get("valueColors").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_005] valueColors value: ${obj_valueColors}")
        @Expect(obj_valueColors.contains("65EEC9A3"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DataPanel_Component_0600
    * @tc.name      : Test_DataPanel_Component_006
    * @tc.desc      : test UIKit DataPanel
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DataPanel_Component_006() {
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_006] start")
        // 1、获取页面中id为dataPanelBasis的组件信息
        let Inspector = getInspectorByKey("dataPanelBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的trackBackgroundColor
        let obj_trackBackgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("trackBackgroundColor")
            .getOrThrow()
            .toString()
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_006] trackBackgroundColor value: ${obj_trackBackgroundColor}")
        @Expect(obj_trackBackgroundColor, "\"#08182431\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DataPanel_Component_0700
    * @tc.name      : Test_DataPanel_Component_007
    * @tc.desc      : test UIKit DataPanel
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DataPanel_Component_007() {
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_007] start")
        // 1、获取页面中id为dataPanelBasis的组件信息
        let Inspector = getInspectorByKey("dataPanelBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的strokeWidth
        let obj_strokeWidth = obj.get("$attrs").getOrThrow().asObject().get("strokeWidth").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_007] strokeWidth value: ${obj_strokeWidth}")
        @Expect(obj_strokeWidth, "\"30.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DataPanel_Component_0800
    * @tc.name      : Test_DataPanel_Component_008
    * @tc.desc      : test UIKit DataPanel
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DataPanel_Component_008() {
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_008] start")
        // 1、获取页面中id为dataPanelBasis的组件信息
        let Inspector = getInspectorByKey("dataPanelBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的trackShadow
        let obj_trackShadow = obj.get("$attrs").getOrThrow().asObject().get("trackShadow").getOrThrow().asObject()
        let obj_trackShadow_radius = obj_trackShadow.get("radius").getOrThrow().toString()
        let obj_trackShadow_offsetX = obj_trackShadow.get("offsetX").getOrThrow().toString()
        let obj_trackShadow_offsetY = obj_trackShadow.get("offsetY").getOrThrow().toString()
        let obj_trackShadow_colors = obj_trackShadow.get("colors").getOrThrow().toString()

        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_008] trackShadow_radius value: ${obj_trackShadow_radius}")
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_008] trackShadow_offsetX value: ${obj_trackShadow_offsetX}")
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_008] trackShadow_offsetX value: ${obj_trackShadow_offsetY}")
        Hilog.info(0,"",   "cangjietest", "[Test_DataPanel_Component_008] trackShadow_colors value: ${obj_trackShadow_colors}")
        @Expect(obj_trackShadow_radius, "\"5.500000\"")
        @Expect(obj_trackShadow_offsetX, "\"15.500000\"")
        @Expect(obj_trackShadow_offsetY, "\"15.500000\"")
        @Expect(obj_trackShadow_colors.contains("65EEC9A3"))
    }
}
