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
class Test_TextArea_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_TextArea")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_0100
    * @tc.name      : Test_TextArea_Component_001
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_001() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_001] start")
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis")
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_001] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_001]: ${a}")
        }
        // 3、读取组件信息json中的placeholder
        let obj_placeholder = obj.get("$attrs").getOrThrow().asObject().get("placeholder").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_001] placeholder value: ${obj_placeholder}")
        @Expect(obj_placeholder, "\"placeholder\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_0200
    * @tc.name      : Test_TextArea_Component_002
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_002() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_002] start")
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的text
        let obj_text = obj.get("$attrs").getOrThrow().asObject().get("text").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_002] text value: ${obj_text}")
        @Expect(obj_text, "\"AAABBB\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_0300
    * @tc.name      : Test_TextArea_Component_003
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_003() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_003] start")
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的caretPosition
        let obj_caretPosition = obj.get("$attrs").getOrThrow().asObject().get("caretPosition").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_003] caretPosition value: ${obj_caretPosition}")
        @Expect(obj_caretPosition, "\"6\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_0400
    * @tc.name      : Test_TextArea_Component_004
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_004() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_004] start")
        // 1、点击页面中id为caretposition3的按钮，光标位置移到3
        driver.findComponent(On().id("caretposition3")).getOrThrow().click()
        driver.delayMs(1000)
        // 2、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis")
        // 3、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 4、读取组件信息json中的caretPosition
        let obj_caretPosition = obj.get("$attrs").getOrThrow().asObject().get("caretPosition").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_003] caretPosition value: ${obj_caretPosition}")
        @Expect(obj_caretPosition, "\"3\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_0500
    * @tc.name      : Test_TextArea_Component_005
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_005() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_005] start")
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的placeholderColor
        let obj_placeholderColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("placeholderColor")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_005] placeholderColor value: ${obj_placeholderColor}")
        @Expect(obj_placeholderColor, "\"#FF8A2BE2\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_0600
    * @tc.name      : Test_TextArea_Component_006
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_006() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_006] start")
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的placeholderFont
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "[CangjieTest_TextArea_Component_006]: ${a}")
        }
        let obj_placeholderFont = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("placeholderFont")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_006] placeholderFont value: ${obj_placeholderFont}")
        @Expect(obj_placeholderFont.contains("{\\\"style\\\":\\\"FontStyle.Italic\\\",\\\"size\\\":\\\"20.00vp\\\",\\\"weight\\\":\\\"100\\\",\\\"fontFamily\\\":\\\"Georgia\\\"}"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_0700
    * @tc.name      : Test_TextArea_Component_007
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_007() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_007] start")
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的textAlign
        let obj_textAlign = obj.get("$attrs").getOrThrow().asObject().get("textAlign").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_007] textAlign value: ${obj_textAlign}")
        @Expect(obj_textAlign, "\"TextAlign.Center\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_0800
    * @tc.name      : Test_TextArea_Component_008
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_008() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_008] start")
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的caretColor
        let obj_caretColor = obj.get("$attrs").getOrThrow().asObject().get("caretColor").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_008] caretColor value: ${obj_caretColor}")
        @Expect(obj_caretColor, "\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_0900
    * @tc.name      : Test_TextArea_Component_009
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_009() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_009] start")
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的inputFilter
        let obj_inputFilter = obj.get("$attrs").getOrThrow().asObject().get("inputFilter").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_009] inputFilter value: ${obj_inputFilter}")
        @Expect(obj_inputFilter, "\"[A-Za-z0-9]\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_1000
    * @tc.name      : Test_TextArea_Component_010
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_010() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_010] start")
        driver.findComponent(On().id("TextAreaBasis1")).getOrThrow().click()
        driver.delayMs(1000)
        driver.triggerKey(2054)
        driver.delayMs(1000)
        // 1、获取页面中id为TextAreaBasis1的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的enterKeyType
        let obj_enterKeyType = obj.get("$attrs").getOrThrow().asObject().get("enterKeyType").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_010] enterKeyType value: ${obj_enterKeyType}")
        @Expect(obj_enterKeyType, "\"EnterKeyType.Go\"")

        // 1、获取页面中id为onSubmit_callback的组件信息
        let Inspector_callback = getInspectorByKey("onSubmit_callback")
        // 2、将组件信息string转换为json
        let obj_callback = JsonValue.fromStr(Inspector_callback).asObject()
        // 3、读取组件信息json中的content
        let obj_callback_content = obj_callback
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("content")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_010] content value: ${obj_callback_content}")
        @Expect(obj_callback_content, "\"TextArea onSubmit callback:GO\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_1100
    * @tc.name      : Test_TextArea_Component_011
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_011() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_011] start")
        driver.findComponent(On().id("changeEnterKeyType")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().id("TextAreaBasis1")).getOrThrow().click()
        driver.delayMs(1000)
        driver.triggerKey(2054)
        driver.delayMs(1000)
        // 1、获取页面中id为TextAreaBasis1的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的enterKeyType
        let obj_enterKeyType = obj.get("$attrs").getOrThrow().asObject().get("enterKeyType").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_011] enterKeyType value: ${obj_enterKeyType}")
        @Expect(obj_enterKeyType, "\"EnterKeyType.Search\"")

        // 1、获取页面中id为onSubmit_callback的组件信息
        let Inspector_callback = getInspectorByKey("onSubmit_callback")
        // 2、将组件信息string转换为json
        let obj_callback = JsonValue.fromStr(Inspector_callback).asObject()
        // 3、读取组件信息json中的content
        let obj_callback_content = obj_callback
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("content")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_011] content value: ${obj_callback_content}")
        @Expect(obj_callback_content, "\"TextArea onSubmit callback:EntrySearch\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_1200
    * @tc.name      : Test_TextArea_Component_012
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_012() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_012] start")
        driver.findComponent(On().id("changeEnterKeyType")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().id("TextAreaBasis1")).getOrThrow().click()
        driver.delayMs(1000)
        driver.triggerKey(2054)
        driver.delayMs(1000)
        // 1、获取页面中id为TextAreaBasis1的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的enterKeyType
        let obj_enterKeyType = obj.get("$attrs").getOrThrow().asObject().get("enterKeyType").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_012] enterKeyType value: ${obj_enterKeyType}")
        @Expect(obj_enterKeyType, "\"EnterKeyType.Send\"")

        // 1、获取页面中id为onSubmit_callback的组件信息
        let Inspector_callback = getInspectorByKey("onSubmit_callback")
        // 2、将组件信息string转换为json
        let obj_callback = JsonValue.fromStr(Inspector_callback).asObject()
        // 3、读取组件信息json中的content
        let obj_callback_content = obj_callback
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("content")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_012] content value: ${obj_callback_content}")
        @Expect(obj_callback_content, "\"TextArea onSubmit callback:Send\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_1300
    * @tc.name      : Test_TextArea_Component_013
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_013() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_013] start")
        driver.findComponent(On().id("changeEnterKeyType")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().id("TextAreaBasis1")).getOrThrow().click()
        driver.delayMs(1000)
        driver.triggerKey(2054)
        driver.delayMs(1000)
        // 1、获取页面中id为TextAreaBasis1的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的enterKeyType
        let obj_enterKeyType = obj.get("$attrs").getOrThrow().asObject().get("enterKeyType").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_013] enterKeyType value: ${obj_enterKeyType}")
        @Expect(obj_enterKeyType, "\"EnterKeyType.Done\"")

        // 1、获取页面中id为onSubmit_callback的组件信息
        let Inspector_callback = getInspectorByKey("onSubmit_callback")
        // 2、将组件信息string转换为json
        let obj_callback = JsonValue.fromStr(Inspector_callback).asObject()
        // 3、读取组件信息json中的content
        let obj_callback_content = obj_callback
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("content")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_013] content value: ${obj_callback_content}")
        @Expect(obj_callback_content, "\"TextArea onSubmit callback:Done\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_1400
    * @tc.name      : Test_TextArea_Component_014
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_014() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_014] start")
        driver.findComponent(On().id("changeEnterKeyType")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().id("TextAreaBasis1")).getOrThrow().click()
        driver.delayMs(1000)
        driver.triggerKey(2054)
        driver.delayMs(1000)
        // 1、获取页面中id为TextAreaBasis1的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的enterKeyType
        let obj_enterKeyType = obj.get("$attrs").getOrThrow().asObject().get("enterKeyType").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_014] enterKeyType value: ${obj_enterKeyType}")
        @Expect(obj_enterKeyType, "\"EnterKeyType.Next\"")

        // 1、获取页面中id为onSubmit_callback的组件信息
        let Inspector_callback = getInspectorByKey("onSubmit_callback")
        // 2、将组件信息string转换为json
        let obj_callback = JsonValue.fromStr(Inspector_callback).asObject()
        // 3、读取组件信息json中的content
        let obj_callback_content = obj_callback
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("content")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_014] content value: ${obj_callback_content}")
        @Expect(obj_callback_content, "\"TextArea onSubmit callback:Next\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_1500
    * @tc.name      : Test_TextArea_Component_015
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_015() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_015] start")
        // 1、获取页面中id为onChange_callback的组件信息
        let Inspector = getInspectorByKey("onChange_callback")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_015] content value: ${obj_content}")
        @Expect(obj_content, "\"TextArea onChange callback:AAABBB\"")
    }


    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_1700
    * @tc.name      : Test_TextArea_Component_017
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_017() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_017] start")
        // 1、点击页面中id为TextAreaBasis1的组件
        driver.findComponent(On().id("TextAreaBasis1")).getOrThrow().click()
        driver.delayMs(1000)
        // 2、获取页面中id为onEditChange_callback的组件信息
        let Inspector = getInspectorByKey("onEditChange_callback")
        // 3、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 4、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_017] content value: ${obj_content}")
        @Expect(obj_content, "\"TextArea onEditChange callback:true\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_1800
    * @tc.name      : Test_TextArea_Component_018
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_018() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_018] start")
        // 1、在页面中id为TextAreaBasis的组件中输入abcde
        driver.findComponent(On().id("TextAreaBasis")).getOrThrow().inputText("abcde")
        driver.delayMs(1000)
        driver.findComponent(On().id("TextAreaBasis")).getOrThrow().longClick()
        driver.delayMs(1000)
        driver.findComponent(On().text("复制")).getOrThrow().click()
        driver.delayMs(1000)
        // 2、获取页面中id为onCopy_callback的组件信息
        let Inspector = getInspectorByKey("onCopy_callback")
        // 3、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 4、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_018] content value: ${obj_content}")
        @Expect(obj_content, "\"TextArea onCopy callback:abcde\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_1900
    * @tc.name      : Test_TextArea_Component_019
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_019() {
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_019] start")
        // 1、在页面中id为TextAreaBasis的组件中输入abcde
        driver.findComponent(On().id("TextAreaBasis")).getOrThrow().inputText("abcde")
        driver.delayMs(1000)
        driver.findComponent(On().id("TextAreaBasis")).getOrThrow().longClick()
        driver.delayMs(1000)
        driver.findComponent(On().text("剪切")).getOrThrow().click()
        driver.delayMs(1000)
        // 2、获取页面中id为onCut_callback的组件信息
        let Inspector = getInspectorByKey("onCut_callback")
        // 3、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 4、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextArea_Component_019] content value: ${obj_content}")
        @Expect(obj_content, "\"TextArea onCut callback:abcde\"")
    }


    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_2100
    * @tc.name      : Test_TextArea_Component_021
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_021() {

        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的placeholderColor
        let obj_placeholderColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("placeholderColor")
            .getOrThrow()
            .toString()
        @Expect(obj_placeholderColor, "\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_2200
    * @tc.name      : Test_TextArea_Component_022
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_022() {
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("myTextArea")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的placeholderColor
        let obj_placeholderColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("placeholderColor")
            .getOrThrow()
            .toString()
        @Expect(obj_placeholderColor, "\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_2300
    * @tc.name      : Test_TextArea_Component_023
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_023() {
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的placeholderFont
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "[CangjieTest_TextArea_Component_023]: ${a}")
        }
        let obj_placeholderFont = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("placeholderFont")
            .getOrThrow()
            .toString()
        @Expect(obj_placeholderFont.contains("{\\\"style\\\":\\\"FontStyle.Italic\\\",\\\"size\\\":\\\"20.00vp\\\",\\\"weight\\\":\\\"100\\\",\\\"fontFamily\\\":\\\"Georgia\\\"}"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_2400
    * @tc.name      : Test_TextArea_Component_024
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_024() {
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("myTextArea")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "[CangjieTest_TextArea_Component_024]: ${a}")
        }
        // 3、读取组件信息json中的placeholderFont
        let obj_placeholderFont = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("placeholderFont")
            .getOrThrow()
            .toString()
        @Expect(obj_placeholderFont.contains("{\\\"style\\\":\\\"FontStyle.Italic\\\",\\\"size\\\":\\\"20.00fp\\\",\\\"weight\\\":\\\"100\\\",\\\"fontFamily\\\":\\\"Georgia\\\"}"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_2500
    * @tc.name      : Test_TextArea_Component_025
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_025() {
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("myTextArea2")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的placeholderFont
        let obj_placeholderFont = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("placeholderFont")
            .getOrThrow()
            .toString()
        @Expect(obj_placeholderFont.contains("{\\\"style\\\":\\\"FontStyle.Italic\\\",\\\"size\\\":\\\"20.00fp\\\",\\\"weight\\\":\\\"100\\\",\\\"fontFamily\\\":\\\"Georgia\\\"}"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_2600
    * @tc.name      : Test_TextArea_Component_026
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_026() {
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的caretColor
        let obj_caretColor = obj.get("$attrs").getOrThrow().asObject().get("caretColor").getOrThrow().toString()
        @Expect(obj_caretColor, "\"#FF8A2BE2\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_2700
    * @tc.name      : Test_TextArea_Component_027
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_027() {
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("myTextArea")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的caretColor
        let obj_caretColor = obj.get("$attrs").getOrThrow().asObject().get("caretColor").getOrThrow().toString()
        @Expect(obj_caretColor, "\"#FFFF0000\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_2800
    * @tc.name      : Test_TextArea_Component_028
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_028() {
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("TextAreaBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的placeholder
        let obj_placeholder = obj.get("$attrs").getOrThrow().asObject().get("placeholder").getOrThrow().toString()
        @Expect(obj_placeholder, "\"TextArea onSubmit\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_2900
    * @tc.name      : Test_TextArea_Component_029
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_029() {
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("myTextArea")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的placeholder
        let obj_placeholder = obj.get("$attrs").getOrThrow().asObject().get("placeholder").getOrThrow().toString()
        @Expect(obj_placeholder, "\"TextArea onSubmit\"")
        let obj_text = obj.get("$attrs").getOrThrow().asObject().get("text").getOrThrow().toString()
        @Expect(obj_text, "\"小标题2\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextArea_Component_3000
    * @tc.name      : Test_TextArea_Component_030
    * @tc.desc      : test UIKit TextArea
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextArea_Component_030() {
        // 1、获取页面中id为TextAreaBasis的组件信息
        let Inspector = getInspectorByKey("myTextArea2")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的placeholder
        let obj_placeholder = obj.get("$attrs").getOrThrow().asObject().get("placeholder").getOrThrow().toString()
        @Expect(obj_placeholder, "\"placeholder\"")
        let obj_text = obj.get("$attrs").getOrThrow().asObject().get("text").getOrThrow().toString()
        @Expect(obj_text, "\"小标题2\"")
    }
}
