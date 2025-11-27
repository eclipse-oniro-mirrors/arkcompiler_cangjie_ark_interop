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
import std.unittest.*

@Test
class Test_RichEditor_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_RichEditor")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_0100
    * @tc.name      : Test_RichEditor_Component_001
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_001() {
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_001 Start")
        let strJson = getInspectorByKey("RichEditor01Text")
        let attrs = JsonValue.fromStr(strJson).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        @Expect(attrs_content, "\"012345678\"")
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_001 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_0200
    * @tc.name      : Test_RichEditor_Component_002
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_002() {
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_002 Start")
        let strJson = getInspectorByKey("RichEditor01Text")
        let textContent = driver.findComponent(On().id("RichEditorKey"))
        driver.delayMs(1000)
        textContent.getOrThrow().inputText("9")
        driver.delayMs(1000)
        let strJson1 = getInspectorByKey("RichEditor02Text");
        let strJson2 = getInspectorByKey("RichEditor03Text");
        let attrs1 = JsonValue.fromStr(strJson1).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content1 = attrs1.get("content").getOrThrow().toString()
        let attrs2 = JsonValue.fromStr(strJson2).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content2 = attrs2.get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_002 component obj is: ${attrs_content1}")
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_002 component obj is: ${attrs_content2}")
        @Expect(attrs_content1, "\"0\"")
        @Expect(attrs_content2, "\"9\"")
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_002 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_0300
    * @tc.name      : Test_RichEditor_Component_003
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_003() {
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_003 Start")
        let strJson = getInspectorByKey("RichEditor01Text")
        let textContent = driver.findComponent(On().id("RichEditorKey"))
        driver.delayMs(1000)
        textContent.getOrThrow().inputText("9")
        driver.delayMs(1000)
        let attrs = JsonValue.fromStr(strJson).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_003 component obj is: ${attrs_content}")
        @Expect(attrs_content, "\"Some(0), 9, 0, 1, 0, 1, 16.000000\"")
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_003 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_0400
    * @tc.name      : Test_RichEditor_Component_004
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_004() {
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_004 Start")
        let setCaretOffsetbutton = driver.findComponent(On().id("setCaretOffset01"))
        driver.delayMs(1000)
        setCaretOffsetbutton.getOrThrow().click()
        driver.delayMs(1000)
        let strJson = getInspectorByKey("RichEditor01Text")
        let attrs = JsonValue.fromStr(strJson).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_004 component obj is: ${attrs_content}")
        @Expect(attrs_content, "\"true\"")
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_004 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_0500
    * @tc.name      : Test_RichEditor_Component_005
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_005() {
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_005 Start")
        let setCaretOffsetbutton = driver.findComponent(On().id("setCaretOffset02"))
        driver.delayMs(1000)
        setCaretOffsetbutton.getOrThrow().click()
        driver.delayMs(1000)
        let strJson = getInspectorByKey("RichEditor01Text")
        let attrs = JsonValue.fromStr(strJson).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_005 component obj is: ${attrs_content}")
        @Expect(attrs_content, "\"false\"")
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_005 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_0600
    * @tc.name      : Test_RichEditor_Component_006
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_006() {
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_006 Start")
        driver.findComponent(On().id("setCaretOffset01")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().id("getCaretOffset")).getOrThrow().click()
        driver.delayMs(1000)

        let strJson = getInspectorByKey("RichEditor01Text")
        let attrs = JsonValue.fromStr(strJson).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_006 component obj is: ${attrs_content}")
        @Expect(attrs_content, "\"1\"")
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_006 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_0700
    * @tc.name      : Test_RichEditor_Component_007
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_007() {
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_007 Start")
        driver.findComponent(On().id("RichEditor01DelSpans")).getOrThrow().click()
        driver.delayMs(500)
        driver.findComponent(On().id("RichEditor01GetSpans")).getOrThrow().click()
        driver.delayMs(500)
        let strJson = getInspectorByKey("RichEditor01Text")
        let attrs = JsonValue.fromStr(strJson).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_007 component obj is: ${attrs_content}")
        @Expect(attrs_content, "\"\"")
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_007 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_0800
    * @tc.name      : Test_RichEditor_Component_008
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_008() {
        let textContent = driver.findComponent(On().id("RichEditorKey"))
        textContent.getOrThrow().clearText()
        let textDid1 = driver.findComponent(On().id("textDid1"))
        let textDid2 = driver.findComponent(On().id("textDid2"))
        let t1 = textDid1.getOrThrow().getText()
        let t2 = textDid2.getOrThrow().getText()
        @Expect(t1, "0--1")
        @Expect(t2, "0--0")
        driver.delayMs(500)
        driver.triggerKey(2024)
        driver.triggerKey(2021)
        driver.triggerKey(2028)
        driver.triggerKey(2028)
        driver.triggerKey(2031)
        driver.triggerKey(2050)
        driver.triggerKey(2019)
        driver.triggerKey(2017)
        driver.triggerKey(2030)
        driver.triggerKey(2023)
        driver.triggerKey(2026)
        driver.triggerKey(2025)
        driver.triggerKey(2021)
        driver.delayMs(500)
        let t3 = textDid1.getOrThrow().getText()
        let t4 = textDid2.getOrThrow().getText()
        @Expect(t3, "12--12")
        @Expect(t4, "12--13")
        textContent.getOrThrow().clearText()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_008 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_0900
    * @tc.name      : Test_RichEditor_Component_009
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_009() {
        let textContent = driver.findComponent(On().id("RichEditorKey"))
        let textDid1 = driver.findComponent(On().id("textDid1"))
        let textDid2 = driver.findComponent(On().id("textDid2"))
        let t1 = textDid1.getOrThrow().getText()
        let t2 = textDid2.getOrThrow().getText()
        @Expect(t1, "0--1")
        @Expect(t2, "0--0")
        driver.triggerKey(2119)
        driver.delayMs(500)
        driver.triggerKey(2024)
        driver.delayMs(500)
        driver.triggerKey(2021)
        driver.delayMs(500)
        driver.triggerKey(2028)
        driver.delayMs(500)
        driver.triggerKey(2028)
        driver.delayMs(500)
        driver.triggerKey(2031)
        driver.delayMs(500)
        driver.triggerKey(2050)
        driver.delayMs(500)
        driver.triggerKey(2019)
        driver.delayMs(500)
        driver.triggerKey(2017)
        driver.delayMs(500)
        driver.triggerKey(2030)
        driver.delayMs(500)
        driver.triggerKey(2023)
        driver.delayMs(500)
        driver.triggerKey(2026)
        driver.delayMs(500)
        driver.triggerKey(2025)
        driver.delayMs(500)
        driver.triggerKey(2021)
        driver.delayMs(500)
        driver.triggerKey(2119)
        driver.delayMs(500)
        let t3 = textDid1.getOrThrow().getText()
        let t4 = textDid2.getOrThrow().getText()
        @Expect(t3, "14--14")
        @Expect(t4, "14--15")

        textContent.getOrThrow().longClick()
        driver.findComponent(On().text("全选")).getOrThrow().click()
        driver.delayMs(500)
        driver.findComponent(On().text("剪切")).getOrThrow().click()
        driver.delayMs(500)
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_009 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_1000
    * @tc.name      : Test_RichEditor_Component_010
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_010() {
        let textContent = driver.findComponent(On().id("RichEditorKey"))
        driver.triggerKey(2024)
        driver.triggerKey(2021)
        driver.triggerKey(2028)
        driver.triggerKey(2028)
        driver.triggerKey(2031)
        driver.triggerKey(2050)
        driver.triggerKey(2019)
        driver.triggerKey(2017)
        driver.triggerKey(2030)
        driver.triggerKey(2023)
        driver.triggerKey(2026)
        driver.triggerKey(2025)
        driver.triggerKey(2021)
        driver.delayMs(500)
        let textDid1 = driver.findComponent(On().id("textDid1"))
        let textDid2 = driver.findComponent(On().id("textDid2"))
        let t1 = textDid1.getOrThrow().getText()
        let t2 = textDid2.getOrThrow().getText()
        @Expect(t1, "12--12")
        @Expect(t2, "12--13")
        driver.triggerKey(2055)
        driver.delayMs(500)
        let t3 = textDid1.getOrThrow().getText()
        let t4 = textDid2.getOrThrow().getText()
        @Expect(t3, "12--13")
        @Expect(t4, "12--12")
        textContent.getOrThrow().clearText()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_010 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_1100
    * @tc.name      : Test_RichEditor_Component_011
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_011() {
        let textContent = driver.findComponent(On().id("RichEditorKey"))
        driver.triggerKey(2024)
        driver.triggerKey(2021)
        driver.triggerKey(2028)
        driver.triggerKey(2028)
        driver.triggerKey(2031)
        driver.triggerKey(2050)
        driver.triggerKey(2019)
        driver.triggerKey(2017)
        driver.triggerKey(2030)
        driver.triggerKey(2023)
        driver.triggerKey(2026)
        driver.triggerKey(2025)
        driver.triggerKey(2021)
        driver.delayMs(1000)
        let textDid1 = driver.findComponent(On().id("textDid1"))
        let textDid2 = driver.findComponent(On().id("textDid2"))
        let t1 = textDid1.getOrThrow().getText()
        let t2 = textDid2.getOrThrow().getText()
        @Expect(t1, "12--12")
        @Expect(t2, "12--13")
        driver.triggerKey(2055)
        driver.triggerKey(2055)
        driver.triggerKey(2055)
        driver.delayMs(500)
        let t3 = textDid1.getOrThrow().getText()
        let t4 = textDid2.getOrThrow().getText()
        @Expect(t3, "10--11")
        @Expect(t4, "10--10")
        textContent.getOrThrow().clearText()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_011 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_1200
    * @tc.name      : Test_RichEditor_Component_012
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_012() {
        let textContent = driver.findComponent(On().id("RichEditorKey"))
        driver.triggerKey(2024)
        driver.triggerKey(2021)
        driver.triggerKey(2028)
        driver.triggerKey(2028)
        driver.triggerKey(2031)
        driver.triggerKey(2050)
        driver.triggerKey(2019)
        driver.triggerKey(2017)
        driver.triggerKey(2030)
        driver.triggerKey(2023)
        driver.triggerKey(2026)
        driver.triggerKey(2025)
        driver.triggerKey(2021)
        driver.delayMs(500)
        let textDid1 = driver.findComponent(On().id("textDid1"))
        let textDid2 = driver.findComponent(On().id("textDid2"))
        let t1 = textDid1.getOrThrow().getText()
        let t2 = textDid2.getOrThrow().getText()
        @Expect(t1, "12--12")
        @Expect(t2, "12--13")
        textContent.getOrThrow().longClick()
        driver.delayMs(500)
        driver.findComponent(On().text("全选")).getOrThrow().click()
        driver.delayMs(500)
        driver.findComponent(On().text("剪切")).getOrThrow().click()
        driver.delayMs(1000)
        let t3 = textDid1.getOrThrow().getText()
        let t4 = textDid2.getOrThrow().getText()
        @Expect(t3, "0--13")
        @Expect(t4, "0--0")
        textContent.getOrThrow().clearText()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_012 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_1300
    * @tc.name      : Test_RichEditor_Component_013
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_013() {
        let textContent = driver.findComponent(On().id("RichEditorKey"))
        driver.triggerKey(2119)
        driver.triggerKey(2024)
        driver.triggerKey(2021)
        driver.triggerKey(2028)
        driver.triggerKey(2028)
        driver.triggerKey(2031)
        driver.triggerKey(2050)
        driver.triggerKey(2019)
        driver.triggerKey(2017)
        driver.triggerKey(2030)
        driver.triggerKey(2023)
        driver.triggerKey(2026)
        driver.triggerKey(2025)
        driver.triggerKey(2021)
        driver.triggerKey(2119)
        driver.delayMs(500)

        let textDid1 = driver.findComponent(On().id("textDid1"))
        let textDid2 = driver.findComponent(On().id("textDid2"))
        let t1 = textDid1.getOrThrow().getText()
        let t2 = textDid2.getOrThrow().getText()
        @Expect(t1, "14--14")
        @Expect(t2, "14--15")
        textContent.getOrThrow().longClick()
        driver.findComponent(On().text("全选")).getOrThrow().click()
        driver.delayMs(500)
        driver.findComponent(On().text("剪切")).getOrThrow().click()
        driver.delayMs(500)
        let t3 = textDid1.getOrThrow().getText()
        let t4 = textDid2.getOrThrow().getText()
        @Expect(t3, "0--15")
        @Expect(t4, "0--0")

        textContent.getOrThrow().clearText()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_013 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_Component_1400
    * @tc.name      : Test_RichEditor_Component_014
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_Component_014() {
        let textContent = driver.findComponent(On().id("RichEditorKey"))
        textContent.getOrThrow().clearText()
        driver.delayMs(500)
        driver.click(868, 2296)
        driver.delayMs(500)
        driver.click(936, 1943)
        driver.delayMs(500)
        driver.click(751, 2136)
        driver.delayMs(500)
        driver.click(134, 2132)
        driver.delayMs(500)
        driver.click(1057, 1964)
        driver.delayMs(1000)
        driver.delayMs(500)
        driver.click(402, 2455)
        driver.delayMs(500)
        driver.click(507, 2291)
        driver.delayMs(500)
        driver.click(151, 2102)
        driver.delayMs(500)
        driver.click(873, 2287)
        driver.delayMs(500)
        driver.click(629, 2115)
        driver.delayMs(500)
        driver.click(894, 2111)
        driver.delayMs(500)
        driver.click(927, 1972)
        driver.delayMs(500)
        driver.click(314, 1947)
        driver.delayMs(1000)
        let textDid1 = driver.findComponent(On().id("textDid1"))
        let textDid2 = driver.findComponent(On().id("textDid2"))
        let t3 = textDid1.getOrThrow().getText()
        let t4 = textDid2.getOrThrow().getText()
        @Expect(t3, "0--15")
        @Expect(t4, "0--0")
        textContent.getOrThrow().clearText()
        Hilog.info(0,"",   "cangjietest", "Test_RichEditor_Component_014 End")
    }
}
