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
class Test_Swiper_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Swiper")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_0100
    * @tc.name      : Test_Swiper_Component_001
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_001() {
        let Inspector = getInspectorByKey("Swiper_component")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "Swiper_component]: ${a}")
        }
        let color = obj.get("$attrs").getOrThrow().asObject().get("id").getOrThrow().toString()
        @Expect(color, "\"Swiper_component\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_0200
    * @tc.name      : Test_Swiper_Component_002
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_002() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("autoPlay").getOrThrow().toString()
        @Expect(alignItems, "\"false\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_0300
    * @tc.name      : Test_Swiper_Component_003
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_003() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("interval").getOrThrow().toString()
        @Expect(alignItems, "\"3000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_0400
    * @tc.name      : Test_Swiper_Component_004
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_004() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("loop").getOrThrow().toString()
        @Expect(alignItems, "\"true\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_0500
    * @tc.name      : Test_Swiper_Component_005
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_005() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("duration").getOrThrow().toString()
        @Expect(alignItems, "\"400\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_0600
    * @tc.name      : Test_Swiper_Component_006
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_006() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("vertical").getOrThrow().toString()
        @Expect(alignItems, "\"true\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_0700
    * @tc.name      : Test_Swiper_Component_007
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_007() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("itemSpace").getOrThrow().toString()
        @Expect(alignItems, "\"0.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_0800
    * @tc.name      : Test_Swiper_Component_008
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_008() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("cachedCount").getOrThrow().toString()
        @Expect(alignItems, "1")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_0900
    * @tc.name      : Test_Swiper_Component_009
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_009() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("disableSwipe").getOrThrow().toString()
        @Expect(alignItems, "\"false\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_1000
    * @tc.name      : Test_Swiper_Component_010
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_010() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("curve").getOrThrow().toString()
        @Expect(alignItems, "\"Curves.Ease\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_1100
    * @tc.name      : Test_Swiper_Component_011
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_011() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("displayCount").getOrThrow().toString()
        @Expect(alignItems, "1")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_1200
    * @tc.name      : Test_Swiper_Component_012
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_012() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("displayMode").getOrThrow().toString()
        @Expect(alignItems, "\"SwiperDisplayMode.Stretch\"")
    }


    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_1400
    * @tc.name      : Test_Swiper_Component_014
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_014() {
        let Inspector = getInspectorByKey("Swiper_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("index").getOrThrow().toString()
        @Expect(alignItems, "\"0\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_1500
    * @tc.name      : Test_Swiper_Component_015
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_015() {
        let textButton = driver.findComponent(On().id("myText"))
        let text1 = textButton.getOrThrow().getText()
        @Expect(text1, "0")
        let button = driver.findComponent(On().id("LastPage"))
        button.getOrThrow().click()
        driver.delayMs(1000)
        let text2 = textButton.getOrThrow().getText()
        @Expect(text2, "2")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Swiper_Component_1600
    * @tc.name      : Test_Swiper_Component_016
    * @tc.desc      : test UIKit Swiper
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Swiper_Component_016() {
        let textButton = driver.findComponent(On().id("myText"))
        let text1 = textButton.getOrThrow().getText()
        @Expect(text1, "2")
        let button = driver.findComponent(On().id("Button2"))
        button.getOrThrow().click()
        driver.delayMs(500)
        let text2 = textButton.getOrThrow().getText()
        @Expect(text2, "0")
    }
}
