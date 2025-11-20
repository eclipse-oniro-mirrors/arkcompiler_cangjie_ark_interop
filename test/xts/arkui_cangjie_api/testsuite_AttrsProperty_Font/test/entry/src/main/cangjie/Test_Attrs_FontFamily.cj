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
class Test_EmptyAttrs_FontFamily {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("FontFamily")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_FontFamily_0100
     * @tc.name： Test_EmptyAttrs_Button_FontFamily_0100
     * @tc.desic：Empty_Button_FontFamily
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontFamily_Button_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindEnd Button")
        sleepFor(1.second)
        for (FontFamily_Prop in FontFamily_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily_Prop: ${"Button" + FontFamily_Prop[0]}")
            let viewPort = getInspector()["Button" + FontFamily_Prop[0], "fontFamily"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontFamily_Prop[2]}")
            @Expect(viewPort, FontFamily_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_FontFamily_0300
     * @tc.name： Test_EmptyAttrs_Text_FontFamily_0300
     * @tc.desic：Empty_Text_FontFamily
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontFamily_Text_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindEnd Text")
        sleepFor(1.second)
        for (FontFamily_Prop in FontFamily_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily_Prop: ${"Text" + FontFamily_Prop[0]}")
            let viewPort = getInspector()["Text" + FontFamily_Prop[0], "fontFamily"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontFamily_Prop[2]}")
            @Expect(viewPort, FontFamily_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_FontFamily_0400
     * @tc.name： Test_EmptyAttrs_TextArea_FontFamily_0400
     * @tc.desic：Empty_TextArea_FontFamily
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontFamily_TextArea_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindEnd TextArea")
        sleepFor(1.second)
        for (FontFamily_Prop in FontFamily_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily_Prop: ${"TextArea" + FontFamily_Prop[0]}")
            let viewPort = getInspector()["TextArea" + FontFamily_Prop[0], "fontFamily"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontFamily_Prop[2]}")
            @Expect(viewPort, FontFamily_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_FontFamily_0500
     * @tc.name： Test_EmptyAttrs_TextClock_FontFamily_0500
     * @tc.desic：Empty_TextClock_FontFamily
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontFamily_TextClock_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindEnd TextClock")
        sleepFor(1.second)
        for (FontFamily_Prop in FontFamily_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily_Prop: ${"TextClock" + FontFamily_Prop[0]}")
            let viewPort = getInspector()["TextClock" + FontFamily_Prop[0], "fontFamily"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontFamily_Prop[2]}")
            @Expect(viewPort, FontFamily_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_FontFamily_0600
     * @tc.name： Test_EmptyAttrs_TextInput_FontFamily_0600
     * @tc.desic：Empty_TextInput_FontFamily
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontFamily_TextInput_0600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindEnd TextInput")
        sleepFor(1.second)
        for (FontFamily_Prop in FontFamily_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily_Prop: ${"TextInput" + FontFamily_Prop[0]}")
            let viewPort = getInspector()["TextInput" + FontFamily_Prop[0], "fontFamily"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontFamily_Prop[2]}")
            @Expect(viewPort, FontFamily_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_FontFamily_0700
     * @tc.name： Test_EmptyAttrs_TextTimer_FontFamily_0700
     * @tc.desic：Empty_TextTimer_FontFamily
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontFamily_TextTimer_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily: FindEnd TextTimer")
        sleepFor(1.second)
        for (FontFamily_Prop in FontFamily_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily_Prop: ${"TextTimer" + FontFamily_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + FontFamily_Prop[0], "fontFamily"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontFamily_Prop[2]}")
            @Expect(viewPort, FontFamily_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontFamily:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
