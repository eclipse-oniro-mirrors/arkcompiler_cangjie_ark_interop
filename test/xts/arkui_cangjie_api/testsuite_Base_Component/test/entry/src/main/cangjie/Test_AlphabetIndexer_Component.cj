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
class Test_AlphabetIndexer_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_AlphabetIndexer")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_0100
    * @tc.name      : Test_AlphabetIndexer_Component_001
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_001() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "AlphabetIndexer_001]: ${a}")
        }
        let color = obj.get("$attrs").getOrThrow().asObject().get("color").getOrThrow().toString()
        @Expect(color, "\"#FF008000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_0200
    * @tc.name      : Test_AlphabetIndexer_Component_002
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_002() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let color = obj.get("$attrs").getOrThrow().asObject().get("selectedColor").getOrThrow().toString()
        @Expect(color, "\"#FFFFFFFF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_0300
    * @tc.name      : Test_AlphabetIndexer_Component_003
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_003() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()

        let color = obj.get("$attrs").getOrThrow().asObject().get("popupColor").getOrThrow().toString()
        @Expect(color, "\"#FFFFFAF0\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_0400
    * @tc.name      : Test_AlphabetIndexer_Component_004
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_004() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let color = obj.get("$attrs").getOrThrow().asObject().get("selectedBackgroundColor").getOrThrow().toString()
        @Expect(color, "\"#FFCCCCCC\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_0500
    * @tc.name      : Test_AlphabetIndexer_Component_005
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_005() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let color = obj.get("$attrs").getOrThrow().asObject().get("popupBackground").getOrThrow().toString()
        @Expect(color, "\"#FFD2B48C\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_0600
    * @tc.name      : Test_AlphabetIndexer_Component_006
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_006() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let color = obj.get("$attrs").getOrThrow().asObject().get("usingPopup").getOrThrow().toString()
        @Expect(color, "\"true\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_0700
    * @tc.name      : Test_AlphabetIndexer_Component_007
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_007() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let id = obj.get("$attrs").getOrThrow().asObject().get("id").getOrThrow().toString()
        @Expect(id, "\"AlphabetIndexer_commpont\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_0800
    * @tc.name      : Test_AlphabetIndexer_Component_008
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_008() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let selectFont = obj.get("$attrs").getOrThrow().asObject().get("selectedFont").getOrThrow().asObject()

        let fontSize = selectFont.get("fontSize").getOrThrow().toString()
        let fontStyle = selectFont.get("fontStyle").getOrThrow().toString()
        let fontWeight = selectFont.get("fontWeight").getOrThrow().toString()
        let fontFamily = selectFont.get("fontFamily").getOrThrow().toString()
        @Expect(fontSize, "\"16.00vp\"")
        @Expect(fontStyle, "\"FontStyle::NORMAL\"")
        @Expect(fontWeight, "\"FontWeight.Normal\"")
        @Expect(fontFamily, "\"HarmonyOS Sans\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_0900
    * @tc.name      : Test_AlphabetIndexer_Component_009
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_009() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let selectFont = obj.get("$attrs").getOrThrow().asObject().get("popupFont").getOrThrow().asObject()

        let fontSize = selectFont.get("fontSize").getOrThrow().toString()
        let fontStyle = selectFont.get("fontStyle").getOrThrow().toString()
        let fontWeight = selectFont.get("fontWeight").getOrThrow().toString()
        let fontFamily = selectFont.get("fontFamily").getOrThrow().toString()
        @Expect(fontSize, "\"30.00vp\"")
        @Expect(fontStyle, "\"FontStyle::NORMAL\"")
        @Expect(fontWeight, "\"FontWeight.Bolder\"")
        @Expect(fontFamily, "\"HarmonyOS Sans\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_1000
    * @tc.name      : Test_AlphabetIndexer_Component_010
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_010() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let selectFont = obj.get("$attrs").getOrThrow().asObject().get("font").getOrThrow().asObject()

        let fontSize = selectFont.get("fontSize").getOrThrow().toString()
        let fontStyle = selectFont.get("fontStyle").getOrThrow().toString()
        let fontWeight = selectFont.get("fontWeight").getOrThrow().toString()
        let fontFamily = selectFont.get("fontFamily").getOrThrow().toString()
        @Expect(fontSize, "\"10.00vp\"")
        @Expect(fontStyle, "\"FontStyle::ITALIC\"")
        @Expect(fontWeight, "\"FontWeight.Lighter\"")
        @Expect(fontFamily, "\"HarmonyOS Sans\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_1100
    * @tc.name      : Test_AlphabetIndexer_Component_011
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_011() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let color = obj.get("$attrs").getOrThrow().asObject().get("itemSize").getOrThrow().toString()
        @Expect(color, "\"28.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_1200
    * @tc.name      : Test_AlphabetIndexer_Component_012
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_012() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let color = obj.get("$attrs").getOrThrow().asObject().get("alignStyle").getOrThrow().toString()
        @Expect(color, "\"IndexerAlign.Left\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_1300
    * @tc.name      : Test_AlphabetIndexer_Component_013
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_013() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let color = obj.get("$attrs").getOrThrow().asObject().get("selected").getOrThrow().toString()
        @Expect(color, "\"0\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_1400
    * @tc.name      : Test_AlphabetIndexer_Component_014
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_014() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let popupPosition = obj.get("$attrs").getOrThrow().asObject().get("popupPosition").getOrThrow().asObject()
        let popupPositionX = popupPosition.get("popupPositionX").getOrThrow().toString()
        let popupPositionY = popupPosition.get("popupPositionY").getOrThrow().toString()
        @Expect(popupPositionX, "\"96.00vp\"")
        @Expect(popupPositionY, "\"48.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_1500
    * @tc.name      : Test_AlphabetIndexer_Component_015
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_015() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let arrayValue = obj.get("$attrs").getOrThrow().asObject().get("arrayValue").getOrThrow().toString()

        @Expect(arrayValue,"[\"A\",\"B\",\"C\",\"D\"]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_1600
    * @tc.name      : Test_AlphabetIndexer_Component_016
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_016() {
        let Inspector = getInspectorByKey("AlphabetIndexer_commpont")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let selected = obj.get("$attrs").getOrThrow().asObject().get("selected").getOrThrow().toString()
        @Expect(selected,"\"0\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_1700
    * @tc.name      : Test_AlphabetIndexer_Component_017
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_017() {
        let button = driver.findComponent(On().id("AlphabetIndexer_commpont"))
        button.getOrThrow().click()
        let Inspector = getInspectorByKey("View_AlphabetIndexer_Text1")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "AlphabetIndexer_001]: ${a}")
        }
        let selected = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        @Expect(selected,"\"2\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_1800
    * @tc.name      : Test_AlphabetIndexer_Component_018
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_018() {
        let button = driver.findComponent(On().id("AlphabetIndexer_commpont"))
        button.getOrThrow().click()
        let Inspector = getInspectorByKey("View_AlphabetIndexer_Text2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let selected = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        @Expect(selected,"\"C\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_AlphabetIndexer_Component_1900
    * @tc.name      : Test_AlphabetIndexer_Component_019
    * @tc.desc      : test UIKit AlphabetIndexer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AlphabetIndexer_Component_019() {
        let button = driver.findComponent(On().id("AlphabetIndexer_commpont"))
        button.getOrThrow().click()
        let Inspector = getInspectorByKey("View_AlphabetIndexer_Text3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let selected = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        @Expect(selected,"\"0\"")
    }
}
