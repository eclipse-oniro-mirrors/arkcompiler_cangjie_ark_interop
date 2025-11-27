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
class Test_Text_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_Text")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_0100
    * @tc.name      : Test_Text_Component_001
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_001() {
        let Inspector = getInspectorByKey("Text_component1")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "Text_component1]: ${a}")
        }
        let color = obj.get("$attrs").getOrThrow().asObject().get("id").getOrThrow().toString()
        @Expect(color, "\"Text_component1\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_0200
    * @tc.name      : Test_Text_Component_002
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_002() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let viewPort = obj.get("$attrs").getOrThrow().asObject().get("textAlign").getOrThrow().toString()

        @Expect(viewPort, "\"TextAlign.Center\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_0300
    * @tc.name      : Test_Text_Component_003
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_003() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let viewPort = obj.get("$attrs").getOrThrow().asObject().get("textOverflow").getOrThrow().toString()
        @Expect(viewPort, "\"TextOverflow.Ellipsis\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_0400
    * @tc.name      : Test_Text_Component_004
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_004() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("maxLines").getOrThrow().toString()

        @Expect(fill, "\"2\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_0500
    * @tc.name      : Test_Text_Component_005
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_005() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("lineHeight").getOrThrow().toString()

        @Expect(fill, "\"25.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_0600
    * @tc.name      : Test_Text_Component_006
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_006() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("decoration").getOrThrow().toString()

        @Expect(fill, "\"{\\\"type\\\":\\\"TextDecorationType.Underline\\\",\\\"color\\\":\\\"#FFFF0000\\\",\\\"style\\\":\\\"TextDecorationStyle.SOLID\\\"}\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_0700
    * @tc.name      : Test_Text_Component_007
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_007() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("baselineOffset").getOrThrow().toString()
        @Expect(fill, "\"5\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_0800
    * @tc.name      : Test_Text_Component_008
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_008() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("minFontSize").getOrThrow().toString()
        @Expect(fill, "\"2.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_0900
    * @tc.name      : Test_Text_Component_009
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_009() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("maxFontSize").getOrThrow().toString()
        @Expect(fill, "\"1.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_1000
    * @tc.name      : Test_Text_Component_010
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_010() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("textCase").getOrThrow().toString()

        @Expect(fill, "\"TextCase.UpperCase\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_1100
    * @tc.name      : Test_Text_Component_011
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_011() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        @Expect(fill, "\"This is the text with the line height set This is the text with the line height set This is the text with the line height set.\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_1200
    * @tc.name      : Test_Text_Component_012
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_012() {
        let button = driver.findComponent(On().id("Text_component2"))
        @Expect( button.getOrThrow().getText(), "I am LineThrough-span")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_1300
    * @tc.name      : Test_Text_Component_013
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_013() {
        let Inspector = getInspectorByKey("Text_component2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("lineHeight").getOrThrow().toString()
        @Expect(fill, "\"25.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_1400
    * @tc.name      : Test_Text_Component_014
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_014() {
        let Inspector = getInspectorByKey("Text_component3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("lineHeight").getOrThrow().toString()
        @Expect(fill, "\"25.00fp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_1500
    * @tc.name      : Test_Text_Component_015
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_015() {
        let Inspector = getInspectorByKey("Text_component2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("decoration").getOrThrow().toString()
        @Expect(fill, "\"{\\\"type\\\":\\\"TextDecorationType.Underline\\\",\\\"color\\\":\\\"#FFFF0000\\\",\\\"style\\\":\\\"TextDecorationStyle.SOLID\\\"}\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_1600
    * @tc.name      : Test_Text_Component_016
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_016() {
        let Inspector = getInspectorByKey("Text_component3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("decoration").getOrThrow().toString()
        @Expect(fill, "\"{\\\"type\\\":\\\"TextDecorationType.Underline\\\",\\\"color\\\":\\\"#FFFF0000\\\",\\\"style\\\":\\\"TextDecorationStyle.SOLID\\\"}\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_1700
    * @tc.name      : Test_Text_Component_017
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_017() {
        let Inspector = getInspectorByKey("Text_component2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("baselineOffset").getOrThrow().toString()
        @Expect(fill, "\"5\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_1800
    * @tc.name      : Test_Text_Component_018
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_018() {
        let Inspector = getInspectorByKey("Text_component3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("baselineOffset").getOrThrow().toString()
        @Expect(fill, "\"5\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_1900
    * @tc.name      : Test_Text_Component_019
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_019() {
        let Inspector = getInspectorByKey("Text_component2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("minFontSize").getOrThrow().toString()
        @Expect(fill, "\"2.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_2000
    * @tc.name      : Test_Text_Component_020
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_020() {
        let Inspector = getInspectorByKey("Text_component3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("minFontSize").getOrThrow().toString()
        @Expect(fill, "\"2.00fp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_2100
    * @tc.name      : Test_Text_Component_021
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_021() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("maxFontSize").getOrThrow().toString()
        @Expect(fill, "\"1.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_2200
    * @tc.name      : Test_Text_Component_022
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_022() {
        let Inspector = getInspectorByKey("Text_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("maxFontSize").getOrThrow().toString()
        @Expect(fill, "\"1.00vp\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Text_Component_2300
    * @tc.name      : Test_Text_Component_023
    * @tc.desc      : test UIKit Text
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Text_Component_023() {
        let Inspector = getInspectorByKey("Text_component3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        @Expect(fill, "\"小标题2\"")
    }
}
