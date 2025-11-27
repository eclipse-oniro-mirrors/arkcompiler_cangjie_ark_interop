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
class Test_TextInput_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_TextInput")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_0100
    * @tc.name      : Test_TextInput_Component_001
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_001() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_001] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_001] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_001]: ${a}")
        }
        // 3、读取组件信息json中的placeholder
        let obj_placeholder = obj.get("$attrs").getOrThrow().asObject().get("placeholder").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_001] placeholder value: ${obj_placeholder}")
        @Expect(obj_placeholder, "\"input your word\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_0200
    * @tc.name      : Test_TextInput_Component_002
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_002() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_002] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的text
        let obj_text = obj.get("$attrs").getOrThrow().asObject().get("text").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_002] text value: ${obj_text}")
        @Expect(obj_text, "\"AAABBB\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_0300
    * @tc.name      : Test_TextInput_Component_003
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_003() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_003] start")
        driver.findComponent(On().id("TextInputBasis")).getOrThrow().click()
        driver.delayMs(1000)
        driver.findComponent(On().id("caretposition3")).getOrThrow().click()
        driver.delayMs(1000)
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的obj_caretPosition
        let obj_caretPosition = obj.get("$attrs").getOrThrow().asObject().get("caretPosition").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_003] caretPosition value: ${obj_caretPosition}")
        @Expect(obj_caretPosition, "\"3\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_0400
    * @tc.name      : Test_TextInput_Component_004
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_004() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_004] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的textAlign
        let obj_textAlign = obj.get("$attrs").getOrThrow().asObject().get("textAlign").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_004] textAlign value: ${obj_textAlign}")
        @Expect(obj_textAlign, "\"TextAlign.Center\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_0500
    * @tc.name      : Test_TextInput_Component_005
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_005() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_005] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的type
        let obj_type = obj.get("$attrs").getOrThrow().asObject().get("type").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_005] type value: ${obj_type}")
        @Expect(obj_type, "\"InputType.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_0600
    * @tc.name      : Test_TextInput_Component_006
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_006() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_006] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的enterKeyType
        let obj_enterKeyType = obj.get("$attrs").getOrThrow().asObject().get("enterKeyType").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_006] enterKeyType value: ${obj_enterKeyType}")
        @Expect(obj_enterKeyType, "\"EnterKeyType.Go\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_0700
    * @tc.name      : Test_TextInput_Component_007
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_007() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_007] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的placeholderColor
        let obj_placeholderColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("placeholderColor")
            .getOrThrow()
            .toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_007] placeholderColor value: ${obj_placeholderColor}")
        @Expect(obj_placeholderColor, "\"#FF0000FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_0800
    * @tc.name      : Test_TextInput_Component_008
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_008() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_008] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的placeholderFont
        let obj_placeholderFont = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("placeholderFont")
            .getOrThrow()
            .toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_008] placeholderFont value: ${obj_placeholderFont}")
        @Expect(obj_placeholderFont.contains("{\\\"style\\\":\\\"FontStyle.Italic\\\",\\\"size\\\":\\\"30.00vp\\\",\\\"weight\\\":\\\"100\\\",\\\"fontFamily\\\":\\\"cursive\\\"}"))
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_0900
    * @tc.name      : Test_TextInput_Component_009
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_009() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_009] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的caretColor
        let obj_caretColor = obj.get("$attrs").getOrThrow().asObject().get("caretColor").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_009] caretColor value: ${obj_caretColor}")
        @Expect(obj_caretColor, "\"#FF0000FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_1000
    * @tc.name      : Test_TextInput_Component_010
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_010() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_010] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的maxLength
        let obj_maxLength = obj.get("$attrs").getOrThrow().asObject().get("maxLength").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_010] maxLength value: ${obj_maxLength}")
        @Expect(obj_maxLength, "\"100\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_1100
    * @tc.name      : Test_TextInput_Component_011
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_011() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_011] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let Inspector = getInspectorByKey("TextInputBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        // 3、读取组件信息json中的inputFilter
        let obj_inputFilter = obj.get("$attrs").getOrThrow().asObject().get("inputFilter").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_011] inputFilter value: ${obj_inputFilter}")
        @Expect(obj_inputFilter, "\"[A-Za-z0-9]\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_1200
    * @tc.name      : Test_TextInput_Component_012
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_012() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_012] start")
        // 1、获取页面中id为onChange_callback的组件信息
        let Inspector = getInspectorByKey("onChange_callback")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_012] content value: ${obj_content}")
        @Expect(obj_content, "\"TextInput onChange callback:AAABBB\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_1300
    * @tc.name      : Test_TextInput_Component_013
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_013() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_013] start")
        // 1、获取页面中id为onCopy_callback的组件信息
        driver.findComponent(On().id("TextInputBasis")).getOrThrow().inputText("abcde")
        driver.delayMs(1000)
        driver.findComponent(On().id("TextInputBasis")).getOrThrow().longClick()
        driver.delayMs(1000)
        driver.findComponent(On().text("复制")).getOrThrow().click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("onCopy_callback")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_013] content value: ${obj_content}")
        @Expect(obj_content, "\"TextInput onCopy callback:abcde\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_1400
    * @tc.name      : Test_TextInput_Component_014
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_014() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_014] start")
        // 1、获取页面中id为onCut_callback的组件信息
        driver.findComponent(On().id("TextInputBasis")).getOrThrow().inputText("abcde")
        driver.delayMs(1000)
        driver.findComponent(On().id("TextInputBasis")).getOrThrow().longClick()
        driver.delayMs(1000)
        driver.findComponent(On().text("剪切")).getOrThrow().click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("onCut_callback")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_014] content value: ${obj_content}")
        @Expect(obj_content, "\"TextInput onCut callback:abcde\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_1600
    * @tc.name      : Test_TextInput_Component_016
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_016() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_016] start")
        // 1、获取页面中id为onEditChange_callback的组件信息
        driver.findComponent(On().id("TextInputBasis")).getOrThrow().click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("onEditChange_callback")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_016] content value: ${obj_content}")
        @Expect(obj_content, "\"TextInput onEditChange callback:true\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextInput_Component_1700
    * @tc.name      : Test_TextInput_Component_017
    * @tc.desc      : test UIKit TextInput
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextInput_Component_017() {
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_017] start")
        // 1、获取页面中id为TextInputBasis的组件信息
        let textinput = driver.findComponent(On().id("TextInputBasis"))
        let button = driver.findComponent(On().id("changeEnterKeyType"))
        textinput.getOrThrow().click()
        driver.delayMs(1000)
        driver.triggerKey(2054)
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("onSubmit_callback")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的content
        let obj_content = obj.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_017] content value: ${obj_content}")

        button.getOrThrow().click()
        driver.delayMs(1000)
        textinput.getOrThrow().click()
        driver.delayMs(1000)
        driver.triggerKey(2054)
        driver.delayMs(1000)
        let Inspector1 = getInspectorByKey("onSubmit_callback")
        // 2、将组件信息string转换为json
        let obj1 = JsonValue.fromStr(Inspector1).asObject()
        // 3、读取组件信息json中的content
        let obj_content1 = obj1.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_017] content value: ${obj_content1}")

        button.getOrThrow().click()
        driver.delayMs(1000)
        textinput.getOrThrow().click()
        driver.delayMs(1000)
        driver.triggerKey(2054)
        driver.delayMs(1000)
        let Inspector2 = getInspectorByKey("onSubmit_callback")
        // 2、将组件信息string转换为json
        let obj2 = JsonValue.fromStr(Inspector2).asObject()
        // 3、读取组件信息json中的content
        let obj_content2 = obj2.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_017] content value: ${obj_content2}")

        button.getOrThrow().click()
        driver.delayMs(1000)
        textinput.getOrThrow().click()
        driver.delayMs(1000)
        driver.triggerKey(2054)
        driver.delayMs(1000)
        let Inspector3 = getInspectorByKey("onSubmit_callback")
        // 2、将组件信息string转换为json
        let obj3 = JsonValue.fromStr(Inspector3).asObject()
        // 3、读取组件信息json中的content
        let obj_content3 = obj3.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_017] content value: ${obj_content3}")

        button.getOrThrow().click()
        driver.delayMs(1000)
        textinput.getOrThrow().click()
        driver.delayMs(1000)
        driver.triggerKey(2054)
        driver.delayMs(1000)
        let Inspector4 = getInspectorByKey("onSubmit_callback")
        // 2、将组件信息string转换为json
        let obj4 = JsonValue.fromStr(Inspector4).asObject()
        // 3、读取组件信息json中的content
        let obj_content4 = obj4.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_TextInput_Component_017] content value: ${obj_content4}")

        @Expect(obj_content, "\"TextInput onSubmit callback:GO\"")
        @Expect(obj_content1, "\"TextInput onSubmit callback:EntrySearch\"")
        @Expect(obj_content2, "\"TextInput onSubmit callback:Send\"")
        @Expect(obj_content3, "\"TextInput onSubmit callback:Next\"")
        @Expect(obj_content4, "\"TextInput onSubmit callback:Done\"")
    }


}
