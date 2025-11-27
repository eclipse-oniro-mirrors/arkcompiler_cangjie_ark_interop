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
class Test_MenuItem_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }


    protected override func beforeAll() {
        driver.delayMs(4000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Menu")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_0100
    * @tc.name      : Test_MenuItem_component_001
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_001() {
        Hilog.info(0, "","cangjietest", "Test_MenuItem_component_001 start")
        driver.findComponent(On().id("showmenu")).getOrThrow().click()
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Test_Menu_01")
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_MenuItem_component_001] Inspector value: ${Menu}")
        let obj_startIcon = obj.get("$attrs").getOrThrow().asObject().get("startIcon").getOrThrow().toString()
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        let obj_labelInfo = obj.get("$attrs").getOrThrow().asObject().get("labelInfo").getOrThrow().toString()
        let obj_endIcon = obj.get("$attrs").getOrThrow().asObject().get("endIcon").getOrThrow().toString()
        @Expect(obj_startIcon,"\"测试\"")
        @Expect(obj_content,"\"复制\"")
        @Expect(obj_labelInfo,"\"Ctrl+C\"")
        @Expect(obj_endIcon,"\"菜单\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_0200
    * @tc.name      : Test_MenuItem_component_002
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_002() {
        Hilog.info(0, "","cangjietest", "Test_MenuItem_component_002 start")
        driver.delayMs(1000)
        driver.findComponent(On().id("Test_Menu_05")).getOrThrow().click()
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Test_Menu_07")
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_MenuItem_component_002] Inspector value: ${Menu}")
        let obj_startIcon = obj.get("$attrs").getOrThrow().asObject().get("startIcon").getOrThrow().toString()
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        let obj_labelInfo = obj.get("$attrs").getOrThrow().asObject().get("labelInfo").getOrThrow().toString()
        let obj_endIcon = obj.get("$attrs").getOrThrow().asObject().get("endIcon").getOrThrow().toString()
        @Expect(obj_startIcon,"\" \"")
        @Expect(obj_content,"\"复制\"")
        @Expect(obj_labelInfo,"\"Ctrl+C\"")
        @Expect(obj_endIcon,"\" \"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_0300
    * @tc.name      : Test_MenuItem_component_003
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_003() {
        Hilog.info(0, "","cangjietest", "Test_Menu_component_003 start")
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Test_Menu_04")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_MenuItem_component_003] Inspector value: ${Menu}")
        let obj_selectIcon = obj.get("$attrs").getOrThrow().asObject().get("selectIcon").getOrThrow().toString()
        @Expect(obj_selectIcon,"\"true\"")
    }


    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_0500
    * @tc.name      : Test_MenuItem_component_005
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_005() {
        Hilog.info(0, "","cangjietest", "Test_MenuItem_component_005 start")
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Test_Menu_01")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_MenuItem_component_005] Inspector value: ${Menu}")
        driver.delayMs(1000)
        let obj_contentFont_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_contentFont_size,"\"15.00vp\"")
        @Expect(obj_contentFont_weight,"\"FontWeight.Medium\"")
        @Expect(obj_contentFont_family,"\"HarmonyOS Sans\"")
        @Expect(obj_contentFont_style,"\"FontStyle.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_0600
    * @tc.name      : Test_MenuItem_component_006
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_006() {
        Hilog.info(0, "","cangjietest", "Test_MenuItem_component_006 start")
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Test_Menu_01")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_MenuItem_component_006] Inspector value: ${Menu}")
        let obj_contentFontColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFontColor")
            .getOrThrow()
            .toString()
        @Expect(obj_contentFontColor,"\"#FF0099FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_0700
    * @tc.name      : Test_MenuItem_component_007
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_007() {
        Hilog.info(0, "","cangjietest", "Test_MenuItem_component_007 start")
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Test_Menu_01")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_MenuItem_component_007] Inspector value: ${Menu}")
        driver.delayMs(1000)
        let obj_labelFont_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_labelFont_size,"\"15.00vp\"")
        @Expect(obj_labelFont_weight,"\"FontWeight.Medium\"")
        @Expect(obj_labelFont_family,"\"Arial\"")
        @Expect(obj_labelFont_style,"\"FontStyle.Italic\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_0800
    * @tc.name      : Test_MenuItem_component_008
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_008() {
        let Menu = getInspectorByKey("Test_Menu_01")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_MenuItem_component_008] Inspector value: ${Menu}")
        let obj_contentFontColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFontColor")
            .getOrThrow()
            .toString()
        @Expect(obj_contentFontColor,"\"#FFFF0000\"")
    }


    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_1000
    * @tc.name      : Test_MenuItem_component_0010
    * @tc.desc      : test UIKit MenuItem0
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_0010() {
        let Menu = getInspectorByKey("Test_Menu_05")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        let obj_selectIcon = obj.get("$attrs").getOrThrow().asObject().get("selectIcon").getOrThrow().toString()
        @Expect(obj_selectIcon,"\"true\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_1100
    * @tc.name      : Test_MenuItem_component_011
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_011() {
        let Menu = getInspectorByKey("Test_Menu_02")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        driver.delayMs(1000)
        let obj_contentFont_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_contentFont_size,"\"15.00vp\"")
        @Expect(obj_contentFont_weight,"\"FontWeight.Medium\"")
        @Expect(obj_contentFont_family,"\"HarmonyOS Sans\"")
        @Expect(obj_contentFont_style,"\"FontStyle.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_1200
    * @tc.name      : Test_MenuItem_component_012
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_012() {
        let Menu = getInspectorByKey("Test_Menu_03")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        driver.delayMs(1000)
        let obj_contentFont_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_contentFont_size,"\"20.00vp\"")
        @Expect(obj_contentFont_weight,"\"FontWeight.Medium\"")
        @Expect(obj_contentFont_family,"\"HarmonyOS Sans\"")
        @Expect(obj_contentFont_style,"\"FontStyle.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_1300
    * @tc.name      : Test_MenuItem_component_013
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_013() {
        let Menu = getInspectorByKey("Test_Menu_03")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        driver.delayMs(1000)
        let obj_contentFont_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_contentFont_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("contentFont")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_contentFont_size,"\"20.00vp\"")
        @Expect(obj_contentFont_weight,"\"FontWeight.Medium\"")
        @Expect(obj_contentFont_family,"\"HarmonyOS Sans\"")
        @Expect(obj_contentFont_style,"\"FontStyle.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_1400
    * @tc.name      : Test_MenuItem_component_014
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_014() {
        let Menu = getInspectorByKey("Test_Menu_02")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        driver.delayMs(1000)
        let obj_labelFont_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_labelFont_size,"\"15.00vp\"")
        @Expect(obj_labelFont_weight,"\"FontWeight.Medium\"")
        @Expect(obj_labelFont_family,"\"Arial\"")
        @Expect(obj_labelFont_style,"\"FontStyle.Italic\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_1500
    * @tc.name      : Test_MenuItem_component_015
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_015() {
        let Menu = getInspectorByKey("Test_Menu_03")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        driver.delayMs(1000)
        let obj_labelFont_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_labelFont_size,"\"20.00vp\"")
        @Expect(obj_labelFont_weight,"\"FontWeight.Medium\"")
        @Expect(obj_labelFont_family,"\"Arial\"")
        @Expect(obj_labelFont_style,"\"FontStyle.Italic\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_MenuItem_Component_1600
    * @tc.name      : Test_MenuItem_component_016
    * @tc.desc      : test UIKit MenuItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_MenuItem_component_016() {
        let Menu = getInspectorByKey("Test_Menu_04")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Menu).asObject()
        driver.delayMs(1000)
        let obj_labelFont_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        driver.delayMs(1000)
        let obj_labelFont_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("labelFont")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_labelFont_size,"\"20.00vp\"")
        @Expect(obj_labelFont_weight,"\"FontWeight.Medium\"")
        @Expect(obj_labelFont_family,"\"Arial\"")
        @Expect(obj_labelFont_style,"\"FontStyle.Italic\"")
    }
}
