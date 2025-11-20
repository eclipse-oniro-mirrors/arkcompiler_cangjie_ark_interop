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
class Test_Menu_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Menu")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_0100
    * @tc.name      : Test_Menu_component_001
    * @tc.desc      : test UIKit Menu
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_001() {
        Hilog.info(0, "","cangjietest", "Test_Menu_component_001 start")
        driver.findComponent(On().id("showmenu")).getOrThrow().click()
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Menu")
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_001] Inspector value: ${Menu}")
        let obj_fontColor = obj.get("$attrs").getOrThrow().asObject().get("fontColor").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_001] obj_fontColor value: ${obj_fontColor}")
        @Expect(obj_fontColor,"\"#FF9B30FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_0200
    * @tc.name      : Test_Menu_component_002
    * @tc.desc      : test UIKit Menu
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_002() {
        Hilog.info(0, "","cangjietest", "Test_Menu_component_002 start")
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Menu")
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_002] Inspector value: ${Menu}")
        let obj_font_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        let obj_font_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        let obj_font_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        let obj_font_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_002] obj_font_size value: ${obj_font_size}")
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_002] obj_font_size value: ${obj_font_weight}")
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_002] obj_font_size value: ${obj_font_family}")
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_002] obj_font_size value: ${obj_font_style}")
        @Expect(obj_font_size,"\"15.00vp\"")
        @Expect(obj_font_weight,"\"FontWeight.Medium\"")
        @Expect(obj_font_family,"\"HarmonyOS Sans\"")
        @Expect(obj_font_style,"\"FontStyle.Italic\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_0300
    * @tc.name      : Test_Menu_component_003
    * @tc.desc      : test UIKit Menu
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_003() {
        Hilog.info(0, "","cangjietest", "Test_Menu_component_003 start")
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Menu")
        let obj = JsonValue.fromStr(Menu).asObject()
        driver.delayMs(300)
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_003] Inspector value: ${Menu}")
        let obj_radius_topLeft = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("borderRadius")
            .getOrThrow()
            .asObject()
            .get("topLeft")
            .getOrThrow()
            .toString()
        driver.delayMs(300)
        let obj_radius_topRight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("borderRadius")
            .getOrThrow()
            .asObject()
            .get("topRight")
            .getOrThrow()
            .toString()
        driver.delayMs(300)
        let obj_radius_bottomLeft = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("borderRadius")
            .getOrThrow()
            .asObject()
            .get("bottomLeft")
            .getOrThrow()
            .toString()
        driver.delayMs(300)
        let obj_radius_bottomRight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("borderRadius")
            .getOrThrow()
            .asObject()
            .get("bottomRight")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_003] obj_font_size value: ${obj_radius_topLeft}")
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_003] obj_font_size value: ${obj_radius_topRight}")
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_003] obj_font_size value: ${obj_radius_bottomLeft}")
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_003] obj_font_size value: ${obj_radius_bottomRight}")
        @Expect(obj_radius_topLeft,"\"40.00%\"")
        @Expect(obj_radius_topRight,"\"40.00%\"")
        @Expect(obj_radius_bottomLeft,"\"40.00%\"")
        @Expect(obj_radius_bottomRight,"\"40.00%\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_0400
    * @tc.name      : Test_Menu_component_004
    * @tc.desc      : test UIKit Menu
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_004() {
        Hilog.info(0, "","cangjietest", "Test_Menu_component_004 start")
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Menu")
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_004] Inspector value: ${Menu}")
        let obj_width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_004] obj_font_size value: ${obj_width}")
        @Expect(obj_width,"\"200.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_0500
    * @tc.name      : Test_Menu_component_005
    * @tc.desc      : test UIKit Menu
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_005() {
        Hilog.info(0, "","cangjietest", "Test_Menu_component_005 start")
        driver.delayMs(1000)
        let Menu = getInspectorByKey("Test_Menu_01")
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_005] Inspector value: ${Menu}")
        let obj_width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_005] obj_font_size value: ${obj_width}")
        @Expect(obj_width,"\"150.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_0600
    * @tc.name      : Test_Menu_component_006
    * @tc.desc      : test UIKit Menu
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_006() {
        let Menu = getInspectorByKey("Menu2")
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_002] Inspector value: ${Menu}")
        let obj_font_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        let obj_font_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        let obj_font_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        let obj_font_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_font_size,"\"15.00vp\"")
        @Expect(obj_font_weight,"\"FontWeight.Medium\"")
        @Expect(obj_font_family,"\"HarmonyOS Sans\"")
        @Expect(obj_font_style,"\"FontStyle.Italic\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_0700
    * @tc.name      : Test_Menu_component_007
    * @tc.desc      : test UIKit Menu
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_007() {
        let Menu = getInspectorByKey("Menu3")
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_002] Inspector value: ${Menu}")
        let obj_font_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        let obj_font_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        let obj_font_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        let obj_font_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_font_size,"\"20.00vp\"")
        @Expect(obj_font_weight,"\"FontWeight.Medium\"")
        @Expect(obj_font_family,"\"HarmonyOS Sans\"")
        @Expect(obj_font_style,"\"FontStyle.Italic\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_0800
    * @tc.name      : Test_Menu_component_008
    * @tc.desc      : test UIKit Menu
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_008() {
        let Menu = getInspectorByKey("Menu4")
        let obj = JsonValue.fromStr(Menu).asObject()
        Hilog.info(0, "","cangjietest", "[Test_Menu_component_002] Inspector value: ${Menu}")
        let obj_font_size = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        let obj_font_weight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        let obj_font_family = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("family")
            .getOrThrow()
            .toString()
        let obj_font_style = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("style")
            .getOrThrow()
            .toString()
        @Expect(obj_font_size,"\"20.00vp\"")
        @Expect(obj_font_weight,"\"FontWeight.Medium\"")
        @Expect(obj_font_family,"\"HarmonyOS Sans\"")
        @Expect(obj_font_style,"\"FontStyle.Italic\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_0900
    * @tc.name      : Test_Menu_component_009
    * @tc.desc      : test UIKit Menu
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_009() {
        let Menu = getInspectorByKey("Menu2")
        let obj = JsonValue.fromStr(Menu).asObject()
        let obj_fontColor = obj.get("$attrs").getOrThrow().asObject().get("fontColor").getOrThrow().toString()
        @Expect(obj_fontColor,"\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_1000
    * @tc.name      : Test_Menu_component_0010
    * @tc.desc      : test UIKit Menu0
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_0010() {
        let Menu = getInspectorByKey("Menu3")
        let obj = JsonValue.fromStr(Menu).asObject()
        let obj_fontColor = obj.get("$attrs").getOrThrow().asObject().get("fontColor").getOrThrow().toString()
        @Expect(obj_fontColor,"\"#FF0099FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Menu_Component_1100
    * @tc.name      : Test_Menu_component_0011
    * @tc.desc      : test UIKit Menu1
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Menu_component_0011() {
        let Menu = getInspectorByKey("Menu2")
        let obj = JsonValue.fromStr(Menu).asObject()
        driver.delayMs(300)
        let obj_radius_topLeft = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("borderRadius")
            .getOrThrow()
            .asObject()
            .get("topLeft")
            .getOrThrow()
            .toString()
        driver.delayMs(300)
        let obj_radius_topRight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("borderRadius")
            .getOrThrow()
            .asObject()
            .get("topRight")
            .getOrThrow()
            .toString()
        driver.delayMs(300)
        let obj_radius_bottomLeft = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("borderRadius")
            .getOrThrow()
            .asObject()
            .get("bottomLeft")
            .getOrThrow()
            .toString()
        driver.delayMs(300)
        let obj_radius_bottomRight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("borderRadius")
            .getOrThrow()
            .asObject()
            .get("bottomRight")
            .getOrThrow()
            .toString()
        @Expect(obj_radius_topLeft,"\"16.00vp\"")
        @Expect(obj_radius_topRight,"\"16.00vp\"")
        @Expect(obj_radius_bottomLeft,"\"16.00vp\"")
        @Expect(obj_radius_bottomRight,"\"16.00vp\"")
    }
}
