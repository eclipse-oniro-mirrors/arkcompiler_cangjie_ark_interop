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
class Test_Scroll_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Scroll")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Scroll_Component_0100
    * @tc.name      : Test_Scroll_Component_001
    * @tc.desc      : test UIKit Scroll
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Scroll_Component_001() {
        let Inspector = getInspectorByKey("Scroll_component")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "Scroll_component]: ${a}")
        }
        let color = obj.get("$attrs").getOrThrow().asObject().get("id").getOrThrow().toString()
        @Expect(color, "\"Scroll_component\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Scroll_Component_0200
    * @tc.name      : Test_Scroll_Component_002
    * @tc.desc      : test UIKit Scroll
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Scroll_Component_002() {
        let Inspector = getInspectorByKey("Scroll_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("scrollable").getOrThrow().toString()
        @Expect(alignItems, "\"ScrollDirection.Vertical\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Scroll_Component_0300
    * @tc.name      : Test_Scroll_Component_003
    * @tc.desc      : test UIKit Scroll
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Scroll_Component_003() {
        let Inspector = getInspectorByKey("Scroll_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("scrollBar").getOrThrow().toString()
        @Expect(alignItems, "\"BarState.On\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Scroll_Component_0400
    * @tc.name      : Test_Scroll_Component_004
    * @tc.desc      : test UIKit Scroll
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Scroll_Component_004() {
        let Inspector = getInspectorByKey("Scroll_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("scrollBarColor").getOrThrow().toString()
        @Expect(alignItems, "\"#FF808080\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Scroll_Component_0500
    * @tc.name      : Test_Scroll_Component_005
    * @tc.desc      : test UIKit Scroll
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Scroll_Component_005() {
        let Inspector = getInspectorByKey("Scroll_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let alignItems = obj.get("$attrs").getOrThrow().asObject().get("scrollBarWidth").getOrThrow().toString()
        @Expect(alignItems, "\"50.00px\"")
    }

    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Scroll_Component_0800
    * @tc.name      : Test_Scroll_Component_008
    * @tc.desc      : test UIKit Scroll
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Scroll_Component_008() {
        let button = driver.findComponent(On().id("listPosition"))
        let text = button.getOrThrow().getText()
        @Expect(text, "0")
        let button1 = driver.findComponent(On().id("Scroll_component"))
        button1.getOrThrow().scrollToBottom()
        driver.delayMs(1500)
        let text2 = button.getOrThrow().getText()
        @Expect(text2, "1")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Scroll_Component_0900
    * @tc.name      : Test_Scroll_Component_009
    * @tc.desc      : test UIKit Scroll
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Scroll_Component_009() {
        let button1 = driver.findComponent(On().id("textxOffset"))
        let text = button1.getOrThrow().getText()
        @Expect(text, "0.000000")
        let button = driver.findComponent(On().id("scrollBottom"))
        button.getOrThrow().click()
        driver.delayMs(3000)
        let button2 = driver.findComponent(On().id("textyOffset"))
        let text2 = button2.getOrThrow().getText()
        @Expect(text2=="0.000000")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Scroll_Component_1000
    * @tc.name      : Test_Scroll_Component_010
    * @tc.desc      : test UIKit Scroll
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Scroll_Component_010() {
        let button1 = driver.findComponent(On().id("scrollBottom"))
        button1.getOrThrow().click()
        driver.delayMs(500)
        let button2 = driver.findComponent(On().id("myEdge"))
        let text2 = button2.getOrThrow().getText()
        @Expect(text2,"Bottom")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Scroll_Component_1100
    * @tc.name      : Test_Scroll_Component_011
    * @tc.desc      : test UIKit Scroll
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Scroll_Component_011() {
        let button = driver.findComponent(On().id("Scroll_component"))
        button.getOrThrow().scrollToTop()
        driver.delayMs(1000)
        let button1 = driver.findComponent(On().id("myEdge"))
        let text1 = button1.getOrThrow().getText()
        @Expect(text1,"Top")
        let button2 = driver.findComponent(On().id("scrollPage"))
        button1.getOrThrow().click()
        driver.delayMs(1000)
        let text2 = button1.getOrThrow().getText()
        @Expect(text2,"Top")
    }
}
