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
import std.unittest.*
import std.unittest.common.*

@Test
class Test_EmptyAttrs_FontSize {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("FontSize")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_FontSize_0100
     * @tc.name： Test_EmptyAttrs_Button_FontSize_0100
     * @tc.desic：Empty_Button_FontSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontSize_Button_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindEnd Button")
        sleepFor(1.second)
        for (FontSize_Prop in FontSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize_Prop: ${"Button" + FontSize_Prop[0]}")
            let viewPort = getInspector()["Button" + FontSize_Prop[0], "fontSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontSize_Prop[2]}")
            @Expect(viewPort, FontSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_FontSize_0300
     * @tc.name： Test_EmptyAttrs_Text_FontSize_0300
     * @tc.desic：Empty_Text_FontSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontSize_Text_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindEnd Text")
        sleepFor(1.second)
        for (FontSize_Prop in FontSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize_Prop: ${"Text" + FontSize_Prop[0]}")
            let viewPort = getInspector()["Text" + FontSize_Prop[0], "fontSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontSize_Prop[2]}")
            @Expect(viewPort, FontSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_FontSize_0400
     * @tc.name： Test_EmptyAttrs_TextArea_FontSize_0400
     * @tc.desic：Empty_TextArea_FontSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontSize_TextArea_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindEnd TextArea")
        sleepFor(1.second)
        for (FontSize_Prop in FontSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize_Prop: ${"TextArea" + FontSize_Prop[0]}")
            let viewPort = getInspector()["TextArea" + FontSize_Prop[0], "fontSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontSize_Prop[2]}")
            @Expect(viewPort, FontSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_FontSize_0500
     * @tc.name： Test_EmptyAttrs_TextClock_FontSize_0500
     * @tc.desic：Empty_TextClock_FontSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontSize_TextClock_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindEnd TextClock")
        sleepFor(1.second)
        for (FontSize_Prop in FontSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize_Prop: ${"TextClock" + FontSize_Prop[0]}")
            let viewPort = getInspector()["TextClock" + FontSize_Prop[0], "fontSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontSize_Prop[2]}")
            @Expect(viewPort, FontSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_FontSize_0600
     * @tc.name： Test_EmptyAttrs_TextInput_FontSize_0600
     * @tc.desic：Empty_TextInput_FontSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontSize_TextInput_0600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindEnd TextInput")
        sleepFor(1.second)
        for (FontSize_Prop in FontSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize_Prop: ${"TextInput" + FontSize_Prop[0]}")
            let viewPort = getInspector()["TextInput" + FontSize_Prop[0], "fontSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontSize_Prop[2]}")
            @Expect(viewPort, FontSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_FontSize_0700
     * @tc.name： Test_EmptyAttrs_TextTimer_FontSize_0700
     * @tc.desic：Empty_TextTimer_FontSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontSize_TextTimer_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize: FindEnd TextTimer")
        sleepFor(1.second)
        for (FontSize_Prop in FontSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize_Prop: ${"TextTimer" + FontSize_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + FontSize_Prop[0], "fontSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontSize_Prop[2]}")
            @Expect(viewPort, FontSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
