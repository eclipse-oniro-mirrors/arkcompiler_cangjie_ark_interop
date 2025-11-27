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
class Test_EmptyAttrs_FontWeight {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("FontWeight")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_FontWeight_0100
     * @tc.name： Test_EmptyAttrs_Button_FontWeight_0100
     * @tc.desic：Empty_Button_FontWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontWeight_Button_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindEnd Button")
        sleepFor(1.second)
        for (FontWeight_Prop in FontWeight_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight_Prop: ${"Button" + FontWeight_Prop[0]}")
            let viewPort = getInspector()["Button" + FontWeight_Prop[0], "fontWeight"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontWeight_Prop[2]}")
            @Expect(viewPort, FontWeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_FontWeight_0300
     * @tc.name： Test_EmptyAttrs_Text_FontWeight_0300
     * @tc.desic：Empty_Text_FontWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontWeight_Text_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindEnd Text")
        sleepFor(1.second)
        for (FontWeight_Prop in FontWeight_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight_Prop: ${"Text" + FontWeight_Prop[0]}")
            let viewPort = getInspector()["Text" + FontWeight_Prop[0], "fontWeight"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontWeight_Prop[2]}")
            @Expect(viewPort, FontWeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_FontWeight_0400
     * @tc.name： Test_EmptyAttrs_TextArea_FontWeight_0400
     * @tc.desic：Empty_TextArea_FontWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontWeight_TextArea_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindEnd TextArea")
        sleepFor(1.second)
        for (FontWeight_Prop in FontWeight_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight_Prop: ${"TextArea" + FontWeight_Prop[0]}")
            let viewPort = getInspector()["TextArea" + FontWeight_Prop[0], "fontWeight"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontWeight_Prop[2]}")
            @Expect(viewPort, FontWeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_FontWeight_0500
     * @tc.name： Test_EmptyAttrs_TextClock_FontWeight_0500
     * @tc.desic：Empty_TextClock_FontWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontWeight_TextClock_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindEnd TextClock")
        sleepFor(1.second)
        for (FontWeight_Prop in FontWeight_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight_Prop: ${"TextClock" + FontWeight_Prop[0]}")
            let viewPort = getInspector()["TextClock" + FontWeight_Prop[0], "fontWeight"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontWeight_Prop[2]}")
            @Expect(viewPort, FontWeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_FontWeight_0600
     * @tc.name： Test_EmptyAttrs_TextInput_FontWeight_0600
     * @tc.desic：Empty_TextInput_FontWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontWeight_TextInput_0600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindEnd TextInput")
        sleepFor(1.second)
        for (FontWeight_Prop in FontWeight_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight_Prop: ${"TextInput" + FontWeight_Prop[0]}")
            let viewPort = getInspector()["TextInput" + FontWeight_Prop[0], "fontWeight"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontWeight_Prop[2]}")
            @Expect(viewPort, FontWeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_FontWeight_0700
     * @tc.name： Test_EmptyAttrs_TextTimer_FontWeight_0700
     * @tc.desic：Empty_TextTimer_FontWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FontWeight_TextTimer_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight: FindEnd TextTimer")
        sleepFor(1.second)
        for (FontWeight_Prop in FontWeight_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight_Prop: ${"TextTimer" + FontWeight_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + FontWeight_Prop[0], "fontWeight"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FontWeight_Prop[2]}")
            @Expect(viewPort, FontWeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFontWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
