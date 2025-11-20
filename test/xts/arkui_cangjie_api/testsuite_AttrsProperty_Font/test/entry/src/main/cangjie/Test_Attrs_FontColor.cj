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
class Test_EmptyAttrs_FontColor {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("FontColor")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_FontColor_0100
     * @tc.name： Test_EmptyAttrs_Button_FontColor_0100
     * @tc.desic：Empty_Button_FontColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontColor_Button_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindEnd Button")
        sleepFor(1.second)
        for (FontColor_Prop in FontColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor_Prop: ${"Button" + FontColor_Prop[0]}")
            let viewPort = getInspector()["Button" + FontColor_Prop[0], "fontColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontColor_Prop[2]}")
            @Expect(viewPort, FontColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_FontColor_0200
     * @tc.name： Test_EmptyAttrs_Menu_FontColor_0200
     * @tc.desic：Empty_Menu_FontColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontColor_Menu_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindEnd Menu")
        sleepFor(1.second)
        for (FontColor_Prop in FontColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor_Prop: ${"Menu" + FontColor_Prop[0]}")
            let viewPort = getInspector()["Menu" + FontColor_Prop[0], "fontColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontColor_Prop[2]}")
            @Expect(viewPort, FontColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_FontColor_0400
     * @tc.name： Test_EmptyAttrs_Text_FontColor_0400
     * @tc.desic：Empty_Text_FontColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontColor_Text_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindEnd Text")
        sleepFor(1.second)
        for (FontColor_Prop in FontColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor_Prop: ${"Text" + FontColor_Prop[0]}")
            let viewPort = getInspector()["Text" + FontColor_Prop[0], "fontColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontColor_Prop[2]}")
            @Expect(viewPort, FontColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_FontColor_0500
     * @tc.name： Test_EmptyAttrs_TextArea_FontColor_0500
     * @tc.desic：Empty_TextArea_FontColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontColor_TextArea_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindEnd TextArea")
        sleepFor(1.second)
        for (FontColor_Prop in FontColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor_Prop: ${"TextArea" + FontColor_Prop[0]}")
            let viewPort = getInspector()["TextArea" + FontColor_Prop[0], "fontColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontColor_Prop[2]}")
            @Expect(viewPort, FontColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_FontColor_0600
     * @tc.name： Test_EmptyAttrs_TextClock_FontColor_0600
     * @tc.desic：Empty_TextClock_FontColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontColor_TextClock_0600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindEnd TextClock")
        sleepFor(1.second)
        for (FontColor_Prop in FontColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor_Prop: ${"TextClock" + FontColor_Prop[0]}")
            let viewPort = getInspector()["TextClock" + FontColor_Prop[0], "fontColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontColor_Prop[2]}")
            @Expect(viewPort, FontColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_FontColor_0700
     * @tc.name： Test_EmptyAttrs_TextInput_FontColor_0700
     * @tc.desic：Empty_TextInput_FontColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontColor_TextInput_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindEnd TextInput")
        sleepFor(1.second)
        for (FontColor_Prop in FontColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor_Prop: ${"TextInput" + FontColor_Prop[0]}")
            let viewPort = getInspector()["TextInput" + FontColor_Prop[0], "fontColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontColor_Prop[2]}")
            @Expect(viewPort, FontColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_FontColor_0800
     * @tc.name： Test_EmptyAttrs_TextTimer_FontColor_0800
     * @tc.desic：Empty_TextTimer_FontColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontColor_TextTimer_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor: FindEnd TextTimer")
        sleepFor(1.second)
        for (FontColor_Prop in FontColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor_Prop: ${"TextTimer" + FontColor_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + FontColor_Prop[0], "fontColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontColor_Prop[2]}")
            @Expect(viewPort, FontColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

}
