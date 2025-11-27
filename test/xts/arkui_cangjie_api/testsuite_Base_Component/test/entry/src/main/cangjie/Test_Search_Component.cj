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
class Test_Search_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Search")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_0100
    * @tc.name      : Test_Search_component_001
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_001() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_001 start")
        driver.delayMs(1000)
        let Search = getInspectorByKey("Test_Search_01")
        Hilog.info(0,"",   "cangjietest", "[Test_Search_component_001] Inspector value: ${Search}")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Search).asObject()
        let obj_value = obj.get("$attrs").getOrThrow().asObject().get("value").getOrThrow().toString()
        @Expect(obj_value,"\"\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_0200
    * @tc.name      : Test_Search_component_002
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_002() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_002 start")
        driver.delayMs(1000)
        let Search = getInspectorByKey("Test_Search_01")
        Hilog.info(0,"",   "cangjietest", "[Test_Search_component_002] Inspector value: ${Search}")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Search).asObject()
        let obj_value = obj.get("$attrs").getOrThrow().asObject().get("placeholder").getOrThrow().toString()
        @Expect(obj_value,"\"Type to search\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_0300
    * @tc.name      : Test_Search_component_003
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_003() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_003 start")
        driver.delayMs(1000)
        let Search = getInspectorByKey("Test_Search_01")
        Hilog.info(0,"",   "cangjietest", "[Test_Search_component_003] Inspector value: ${Search}")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Search).asObject()
        let obj_value = obj.get("$attrs").getOrThrow().asObject().get("icon").getOrThrow().toString()
        @Expect(obj_value,"\"resource:///16777234.png\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_0400
    * @tc.name      : Test_Search_component_004
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_004() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_004 start")
        driver.delayMs(1000)
        let Search = getInspectorByKey("Test_Search_01")
        Hilog.info(0,"",   "cangjietest", "[Test_Search_component_004] Inspector value: ${Search}")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Search).asObject()
        let obj_value = obj.get("$attrs").getOrThrow().asObject().get("searchButton").getOrThrow().toString()
        @Expect(obj_value,"\"Search\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_0500
    * @tc.name      : Test_Search_component_005
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_005() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_005 start")
        driver.delayMs(1000)
        let Search = getInspectorByKey("Test_Search_01")
        Hilog.info(0,"",   "cangjietest", "[Test_Search_component_005] Inspector value: ${Search}")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Search).asObject()
        let obj_value = obj.get("$attrs").getOrThrow().asObject().get("placeholderColor").getOrThrow().toString()
        @Expect(obj_value,"\"#FF808080\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_0600
    * @tc.name      : Test_Search_component_006
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_006() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_006 start")
        driver.delayMs(1000)
        let Search = getInspectorByKey("Test_Search_01")
        Hilog.info(0,"",   "cangjietest", "[Test_Search_component_006] Inspector value: ${Search}")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Search).asObject()
        driver.delayMs(1000)
        let obj_placeholderFont = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("placeholderFont")
            .getOrThrow()
            .toString()
        @Expect(obj_placeholderFont.contains("{\\\"style\\\":\\\"FontStyle.Normal\\\",\\\"size\\\":\\\"26.00px\\\",\\\"weight\\\":\\\"100\\\",\\\"fontFamily\\\":\\\"sans-serif\\\"}"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_0700
    * @tc.name      : Test_Search_component_007
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_007() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_007 start")
        driver.delayMs(1000)
        let Search = getInspectorByKey("Test_Search_01")
        Hilog.info(0,"",   "cangjietest", "[Test_Search_component_007] Inspector value: ${Search}")
        driver.delayMs(1000)
        let obj = JsonValue.fromStr(Search).asObject()
        driver.delayMs(1000)
        let obj_textFont = obj.get("$attrs").getOrThrow().asObject().get("textFont").getOrThrow().toString()
        @Expect(obj_textFont.contains("{\\\"fontSize\\\":\\\"17.00px\\\",\\\"fontStyle\\\":\\\"FontStyle.Italic\\\",\\\"fontWeight\\\":\\\"100\\\",\\\"fontFamily\\\":\\\"Arial\\\"}"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_0800
    * @tc.name      : Test_Search_component_008
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_008() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_008 start")
        driver.delayMs(1000)
        driver.inputText(driver.findComponent(On().id("Test_Search_02")).getOrThrow().getBoundsCenter(), "Test")
        driver.delayMs(1000)
        let text = driver.findComponent(On().id("Text_01")).getOrThrow().getText()
        @Expect(text,"Test")
        driver.findComponent(On().text("Test")).getOrThrow().clearText()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_0900
    * @tc.name      : Test_Search_component_009
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_009() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_009 start")
        driver.delayMs(1000)
        driver.inputText(driver.findComponent(On().id("Test_Search_02")).getOrThrow().getBoundsCenter(), "Test")
        driver.findComponent(On().text("搜索")).getOrThrow().click()
        driver.delayMs(1000)
        let text = driver.findComponent(On().id("Text_02")).getOrThrow().getText()
        @Expect(text,"Test")
        driver.delayMs(1000)
        driver.findComponent(On().id("Test_Search_02")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().id("Test_Search_02")).getOrThrow().longClick()
        driver.delayMs(1000)
        driver.findComponent(On().text("全选")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().text("剪切")).getOrThrow().click()
        driver.delayMs(3000)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_1000
    * @tc.name      : Test_Search_component_010
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_010() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_010 start")
        driver.delayMs(1000)
        let inputText = "\"Test\""
        driver.inputText(driver.findComponent(On().id("Test_Search_02")).getOrThrow().getBoundsCenter(), "Test")
        driver.delayMs(1000)
        driver.findComponent(On().id("Test_Search_02")).getOrThrow().longClick()
        driver.delayMs(1000)
        driver.findComponent(On().text("全选")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().text("复制")).getOrThrow().click()
        driver.delayMs(1000)
        let text = driver.findComponent(On().id("Text_03")).getOrThrow().getText()
        @Expect(text,"Test")
        driver.delayMs(1000)
        driver.findComponent(On().id("Test_Search_02")).getOrThrow().longClick()
        driver.delayMs(1000)
        driver.findComponent(On().text("全选")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().text("剪切")).getOrThrow().click()
        driver.delayMs(3000)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Search_Component_1200
    * @tc.name      : Test_Search_component_012
    * @tc.desc      : test UIKit Search
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Search_component_012() {
        Hilog.info(0,"",   "cangjietest", "Test_Search_component_011 start")
        driver.delayMs(1000)
        let inputText = "\"Test\""
        driver.inputText(driver.findComponent(On().id("Test_Search_02")).getOrThrow().getBoundsCenter(), "Test")
        driver.delayMs(1000)
        driver.findComponent(On().id("Test_Search_02")).getOrThrow().longClick()
        driver.delayMs(1000)
        driver.findComponent(On().text("全选")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().text("剪切")).getOrThrow().click()
        driver.delayMs(1000)
        let text = driver.findComponent(On().id("Text_05")).getOrThrow().getText()
        @Expect(text,"Test")
    }
}
