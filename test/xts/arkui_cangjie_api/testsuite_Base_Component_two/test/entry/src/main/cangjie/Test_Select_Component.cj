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
import ohos.arkui.state_macro_manage.r

@Test
class Test_Select_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Select")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_0100
    * @tc.name      : Test_Select_Component_001
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_001() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_001 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_001] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_options = obj.get("$attrs").getOrThrow().asObject().get("options").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_001] obj_options value: ${obj_options}")
        @Expect(obj_options,"\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\":\\\"resource:///16777257.png\\\"},{\\\"value\\\":\\\"bbb\\\",\\\"icon\\\":\\\"resource:///16777257.png\\\"},{\\\"value\\\":\\\"ccc\\\",\\\"icon\\\":\\\"resource:///16777257.png\\\"},{\\\"value\\\":\\\"ddd\\\",\\\"icon\\\":\\\"resource:///16777257.png\\\"}]}\"")
        @Expect(obj_options.contains("\"{\\\"options\\\":[{\\\"value\\\":\\\"aaa\\\",\\\"icon\\\""))
        @Expect(obj_options.contains("${@r(app.media.startIcon).id}"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_0200
    * @tc.name      : Test_Select_Component_002
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_002() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_002 start")
        driver.delayMs(1000)
        let text = driver.findComponent(On().id("Test_Select")).getOrThrow().getText()
        @Expect(text,"TTTTT")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_0300
    * @tc.name      : Test_Select_Component_003
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_003() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_003 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_003] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_selected = obj.get("$attrs").getOrThrow().asObject().get("selected").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_003] obj_fontColor value: ${obj_selected}")
        @Expect(obj_selected,"\"1\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_0400
    * @tc.name      : Test_Select_Component_004
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_004() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_004 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_004] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_selectOptionBgColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedOptionBgColor")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_004] obj_selectOptionBgColor value: ${obj_selectOptionBgColor}")
        @Expect(obj_selectOptionBgColor,"\"#33007DFF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_0500
    * @tc.name      : Test_Select_Component_005
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_005() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_005 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_005] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_selectOptionFont = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedOptionFont")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_005] obj_fontColor value: ${obj_selectOptionFont}")
        @Expect(obj_selectOptionFont.contains("{\\\"size\\\":\\\"16.00vp\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"sans-serif\\\",\\\"style\\\":\\\"FontStyle.Normal\\\"}"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_0600
    * @tc.name      : Test_Select_Component_006
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_006() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_006 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_006] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_selectedOptionFontColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedOptionFontColor")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_006] obj_fontColor value: ${obj_selectedOptionFontColor}")
        @Expect(obj_selectedOptionFontColor,"\"#FF007DFF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_0700
    * @tc.name      : Test_Select_Component_007
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_007() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_007 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_007] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_optionBgColor = obj.get("$attrs").getOrThrow().asObject().get("optionBgColor").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_007] obj_fontColor value: ${obj_optionBgColor}")
        @Expect(obj_optionBgColor,"\"#FFFFFFFF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_0800
    * @tc.name      : Test_Select_Component_008
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_008() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_008 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_008] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_optionFont = obj.get("$attrs").getOrThrow().asObject().get("optionFont").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_008] obj_fontColor value: ${obj_optionFont}")
        @Expect(obj_optionFont.contains("{\\\"size\\\":\\\"20.00vp\\\",\\\"weight\\\":\\\"400\\\",\\\"family\\\":\\\"sans-serif\\\",\\\"style\\\":\\\"FontStyle.Normal\\\"}"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_0900
    * @tc.name      : Test_Select_Component_009
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_009() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_009 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_009] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_optionFontColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("optionFontColor")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_009] obj_fontColor value: ${obj_optionFontColor}")
        @Expect(obj_optionFontColor,"\"#FF182431\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_1000
    * @tc.name      : Test_Select_Component_010
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_010() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_010 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_010] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_alignType = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("menuAlign")
            .getOrThrow()
            .asObject()
            .get("alignType")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_010] obj_fontColor value: ${obj_alignType}")
        let obj_dX = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("menuAlign")
            .getOrThrow()
            .asObject()
            .get("offset")
            .getOrThrow()
            .asObject()
            .get("dX")
            .getOrThrow()
            .toString()
        let obj_dY = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("menuAlign")
            .getOrThrow()
            .asObject()
            .get("offset")
            .getOrThrow()
            .asObject()
            .get("dY")
            .getOrThrow()
            .toString()
        @Expect(obj_alignType,"\"MenuAlignType.Start\"")
        @Expect(obj_dX,"0")
        @Expect(obj_dY,"0")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_1100
    * @tc.name      : Test_Select_Component_011
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_011() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_011 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_011] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_menuBackgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("menuBackgroundColor")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_011] obj_fontColor value: ${obj_menuBackgroundColor}")
        @Expect(obj_menuBackgroundColor,"\"#FFFFFFFF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_1200
    * @tc.name      : Test_Select_Component_012
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_012() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_012 start")
        driver.delayMs(1000)
        let Select = getInspectorByKey("Test_Select")
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_012] Inspector value: ${Select}")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_menuBackgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("menuBackgroundBlurStyle")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Select_Component_012] obj_fontColor value: ${obj_menuBackgroundColor}")
        @Expect(obj_menuBackgroundColor,"\"BlurStyle.COMPONENT_ULTRA_THICK\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_1300
    * @tc.name      : Test_Select_Component_013
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_013() {
        Hilog.info(0, "","cangjietest", "Test_Select_Component_013 start")
        driver.delayMs(1000)
        driver.findComponent(On().id("Test_Select")).getOrThrow().click()
        driver.findComponent(On().text("aaa")).getOrThrow().click()
        let text = driver.findComponent(On().id("Test_Select")).getOrThrow().getText()
        @Expect(text,"aaa")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_1400
    * @tc.name      : Test_Select_Component_014
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_014() {
        let text = driver.findComponent(On().id("test_select1")).getOrThrow().getText()
        @Expect(text,"模块描述")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_1500
    * @tc.name      : Test_Select_Component_015
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_015() {
        let Select = getInspectorByKey("test_select1")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_selectOptionBgColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedOptionBgColor")
            .getOrThrow()
            .toString()
        @Expect(obj_selectOptionBgColor,"\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_1600
    * @tc.name      : Test_Select_Component_016
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_016() {
        let Select = getInspectorByKey("test_select2")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_selectOptionBgColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedOptionBgColor")
            .getOrThrow()
            .toString()
        @Expect(obj_selectOptionBgColor,"\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_1700
    * @tc.name      : Test_Select_Component_017
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_017() {
        let Select = getInspectorByKey("test_select1")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_selectedOptionFontColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedOptionFontColor")
            .getOrThrow()
            .toString()
        @Expect(obj_selectedOptionFontColor,"\"#FF008000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_1800
    * @tc.name      : Test_Select_Component_018
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_018() {
        let Select = getInspectorByKey("test_select2")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_selectedOptionFontColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedOptionFontColor")
            .getOrThrow()
            .toString()
        @Expect(obj_selectedOptionFontColor,"\"#FF1DBF40\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_1900
    * @tc.name      : Test_Select_Component_019
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_019() {
        let Select = getInspectorByKey("test_select1")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_optionBgColor = obj.get("$attrs").getOrThrow().asObject().get("optionBgColor").getOrThrow().toString()
        @Expect(obj_optionBgColor,"\"#FF808080\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_2000
    * @tc.name      : Test_Select_Component_020
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_020() {
        let Select = getInspectorByKey("test_select2")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_optionBgColor = obj.get("$attrs").getOrThrow().asObject().get("optionBgColor").getOrThrow().toString()
        @Expect(obj_optionBgColor,"\"#FF929A9F\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_2100
    * @tc.name      : Test_Select_Component_021
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_021() {
        let Select = getInspectorByKey("test_select1")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_optionFontColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("optionFontColor")
            .getOrThrow()
            .toString()
        @Expect(obj_optionFontColor,"\"#FFFFFFFF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_2200
    * @tc.name      : Test_Select_Component_022
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_022() {
        let Select = getInspectorByKey("test_select2")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_optionFontColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("optionFontColor")
            .getOrThrow()
            .toString()
        @Expect(obj_optionFontColor,"\"#FFCCCCCC\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_2300
    * @tc.name      : Test_Select_Component_023
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_023() {
        let Select = getInspectorByKey("test_select1")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_menuBackgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("menuBackgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_menuBackgroundColor,"\"#FF182431\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Select_Component_2400
    * @tc.name      : Test_Select_Component_024
    * @tc.desc      : test UIKit Select
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Select_Component_024() {
        let Select = getInspectorByKey("test_select2")
        let obj = JsonValue.fromStr(Select).asObject()
        let obj_menuBackgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("menuBackgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_menuBackgroundColor,"\"#FFCCCCCC\"")
    }
}
