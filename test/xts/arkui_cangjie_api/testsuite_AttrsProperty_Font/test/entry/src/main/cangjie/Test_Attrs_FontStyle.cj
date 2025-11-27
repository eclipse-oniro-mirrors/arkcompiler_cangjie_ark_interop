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
class Test_EmptyAttrs_FontStyle {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("FontStyle")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_FontStyle_0100
     * @tc.name： Test_EmptyAttrs_Button_FontStyle_0100
     * @tc.desic：Empty_Button_FontStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontStyle_Button_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindEnd Button")
        sleepFor(1.second)
        for (FontStyle_Prop in FontStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle_Prop: ${"Button" + FontStyle_Prop[0]}")
            let viewPort = getInspector()["Button" + FontStyle_Prop[0], "fontStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontStyle_Prop[2]}")
            @Expect(viewPort, FontStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_FontStyle_0300
     * @tc.name： Test_EmptyAttrs_Text_FontStyle_0300
     * @tc.desic：Empty_Text_FontStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontStyle_Text_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindEnd Text")
        sleepFor(1.second)
        for (FontStyle_Prop in FontStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle_Prop: ${"Text" + FontStyle_Prop[0]}")
            let viewPort = getInspector()["Text" + FontStyle_Prop[0], "fontStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontStyle_Prop[2]}")
            @Expect(viewPort, FontStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_FontStyle_0400
     * @tc.name： Test_EmptyAttrs_TextArea_FontStyle_0400
     * @tc.desic：Empty_TextArea_FontStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontStyle_TextArea_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindEnd TextArea")
        sleepFor(1.second)
        for (FontStyle_Prop in FontStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle_Prop: ${"TextArea" + FontStyle_Prop[0]}")
            let viewPort = getInspector()["TextArea" + FontStyle_Prop[0], "fontStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontStyle_Prop[2]}")
            @Expect(viewPort, FontStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_FontStyle_0500
     * @tc.name： Test_EmptyAttrs_TextClock_FontStyle_0500
     * @tc.desic：Empty_TextClock_FontStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontStyle_TextClock_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindEnd TextClock")
        sleepFor(1.second)
        for (FontStyle_Prop in FontStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle_Prop: ${"TextClock" + FontStyle_Prop[0]}")
            let viewPort = getInspector()["TextClock" + FontStyle_Prop[0], "fontStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontStyle_Prop[2]}")
            @Expect(viewPort, FontStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_FontStyle_0600
     * @tc.name： Test_EmptyAttrs_TextInput_FontStyle_0600
     * @tc.desic：Empty_TextInput_FontStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontStyle_TextInput_0600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindEnd TextInput")
        sleepFor(1.second)
        for (FontStyle_Prop in FontStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle_Prop: ${"TextInput" + FontStyle_Prop[0]}")
            let viewPort = getInspector()["TextInput" + FontStyle_Prop[0], "fontStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontStyle_Prop[2]}")
            @Expect(viewPort, FontStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_FontStyle_0700
     * @tc.name： Test_EmptyAttrs_TextTimer_FontStyle_0700
     * @tc.desic：Empty_TextTimer_FontStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontStyle_TextTimer_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle: FindEnd TextTimer")
        sleepFor(1.second)
        for (FontStyle_Prop in FontStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle_Prop: ${"TextTimer" + FontStyle_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + FontStyle_Prop[0], "fontStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontStyle_Prop[2]}")
            @Expect(viewPort, FontStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
