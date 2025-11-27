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
class Test_EmptyAttrs_BorderStyle {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("BorderStyle")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_BorderStyle_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_BorderStyle_0100
     * @tc.desic：Empty_AlphabetIndexer_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"AlphabetIndexer" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_BorderStyle_0200
     * @tc.name： Test_EmptyAttrs_Blank_BorderStyle_0200
     * @tc.desic：Empty_Blank_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Blank")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Blank" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Blank" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_BorderStyle_0300
     * @tc.name： Test_EmptyAttrs_Button_BorderStyle_0300
     * @tc.desic：Empty_Button_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Button")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Button" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Button" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_BorderStyle_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_BorderStyle_0400
     * @tc.desic：Empty_Checkbox_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Checkbox")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Checkbox" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_BorderStyle_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_BorderStyle_0500
     * @tc.desic：Empty_CheckboxGroup_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"CheckboxGroup" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_BorderStyle_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_BorderStyle_0700
     * @tc.desic：Empty_DataPanel_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd DataPanel")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"DataPanel" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_BorderStyle_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_BorderStyle_0800
     * @tc.desic：Empty_DatePicker_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd DatePicker")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"DatePicker" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_BorderStyle_0900
     * @tc.name： Test_EmptyAttrs_Divider_BorderStyle_0900
     * @tc.desic：Empty_Divider_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Divider")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Divider" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Divider" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_BorderStyle_1000
     * @tc.name： Test_EmptyAttrs_Gauge_BorderStyle_1000
     * @tc.desic：Empty_Gauge_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Gauge")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Gauge" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Gauge" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_BorderStyle_1100
     * @tc.name： Test_EmptyAttrs_Image_BorderStyle_1100
     * @tc.desic：Empty_Image_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Image")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Image" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Image" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_BorderStyle_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_BorderStyle_1200
     * @tc.desic：Empty_ImageSpan_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd ImageSpan")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"ImageSpan" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_BorderStyle_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_BorderStyle_1300
     * @tc.desic：Empty_LoadingProgress_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"LoadingProgress" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_BorderStyle_1400
     * @tc.name： Test_EmptyAttrs_Menu_BorderStyle_1400
     * @tc.desic：Empty_Menu_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Menu")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Menu" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Menu" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_BorderStyle_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_BorderStyle_1500
     * @tc.desic：Empty_MenuItem_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd MenuItem")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"MenuItem" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_BorderStyle_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_BorderStyle_1600
     * @tc.desic：Empty_MenuItemGroup_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"MenuItemGroup" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_BorderStyle_1700
     * @tc.name： Test_EmptyAttrs_Progress_BorderStyle_1700
     * @tc.desic：Empty_Progress_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Progress")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Progress" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Progress" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_BorderStyle_1800
     * @tc.name： Test_EmptyAttrs_QRCode_BorderStyle_1800
     * @tc.desic：Empty_QRCode_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd QRCode")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"QRCode" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["QRCode" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_BorderStyle_1900
     * @tc.name： Test_EmptyAttrs_Radio_BorderStyle_1900
     * @tc.desic：Empty_Radio_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Radio")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Radio" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Radio" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_BorderStyle_2000
     * @tc.name： Test_EmptyAttrs_Rating_BorderStyle_2000
     * @tc.desic：Empty_Rating_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Rating")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Rating" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Rating" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_BorderStyle_2100
     * @tc.name： Test_EmptyAttrs_Refresh_BorderStyle_2100
     * @tc.desic：Empty_Refresh_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Refresh")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Refresh" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Refresh" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_BorderStyle_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_BorderStyle_2200
     * @tc.desic：Empty_RichEditor_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd RichEditor")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"RichEditor" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_BorderStyle_2300
     * @tc.name： Test_EmptyAttrs_RichText_BorderStyle_2300
     * @tc.desic：Empty_RichText_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd RichText")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"RichText" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["RichText" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_BorderStyle_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_BorderStyle_2400
     * @tc.desic：Empty_RowSplit_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd RowSplit")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"RowSplit" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_BorderStyle_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_BorderStyle_2500
     * @tc.desic：Empty_ScrollBar_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd ScrollBar")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"ScrollBar" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_BorderStyle_2600
     * @tc.name： Test_EmptyAttrs_Search_BorderStyle_2600
     * @tc.desic：Empty_Search_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Search")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Search" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Search" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_BorderStyle_2700
     * @tc.name： Test_EmptyAttrs_Slider_BorderStyle_2700
     * @tc.desic：Empty_Slider_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Slider")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Slider" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Slider" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_BorderStyle_2800
     * @tc.name： Test_EmptyAttrs_Stepper_BorderStyle_2800
     * @tc.desic：Empty_Stepper_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Stepper")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Stepper" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Stepper" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_BorderStyle_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_BorderStyle_2900
     * @tc.desic：Empty_StepperItem_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd StepperItem")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"StepperItem" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_BorderStyle_3000
     * @tc.name： Test_EmptyAttrs_Text_BorderStyle_3000
     * @tc.desic：Empty_Text_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Text")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Text" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Text" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_BorderStyle_3100
     * @tc.name： Test_EmptyAttrs_TextArea_BorderStyle_3100
     * @tc.desic：Empty_TextArea_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd TextArea")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"TextArea" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["TextArea" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_BorderStyle_3200
     * @tc.name： Test_EmptyAttrs_TextClock_BorderStyle_3200
     * @tc.desic：Empty_TextClock_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd TextClock")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"TextClock" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["TextClock" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_BorderStyle_3300
     * @tc.name： Test_EmptyAttrs_TextInput_BorderStyle_3300
     * @tc.desic：Empty_TextInput_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd TextInput")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"TextInput" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["TextInput" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_BorderStyle_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_BorderStyle_3400
     * @tc.desic：Empty_TextPicker_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd TextPicker")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"TextPicker" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_BorderStyle_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_BorderStyle_3500
     * @tc.desic：Empty_TextTimer_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd TextTimer")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"TextTimer" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_BorderStyle_3600
     * @tc.name： Test_EmptyAttrs_Toggle_BorderStyle_3600
     * @tc.desic：Empty_Toggle_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Toggle")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Toggle" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Toggle" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_BorderStyle_3700
     * @tc.name： Test_EmptyAttrs_Web_BorderStyle_3700
     * @tc.desic：Empty_Web_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Web")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Web" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Web" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_BorderStyle_3800
     * @tc.name： Test_EmptyAttrs_Select_BorderStyle_3800
     * @tc.desic：Empty_Select_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Select")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Select" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Select" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_BorderStyle_3900
     * @tc.name： Test_EmptyAttrs_Badge_BorderStyle_3900
     * @tc.desic：Empty_Badge_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Badge")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Badge" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Badge" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_BorderStyle_4000
     * @tc.name： Test_EmptyAttrs_Column_BorderStyle_4000
     * @tc.desic：Empty_Column_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Column")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Column" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Column" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_BorderStyle_4100
     * @tc.name： Test_EmptyAttrs_Grid_BorderStyle_4100
     * @tc.desic：Empty_Grid_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Grid")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Grid" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Grid" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_BorderStyle_4200
     * @tc.name： Test_EmptyAttrs_GridItem_BorderStyle_4200
     * @tc.desic：Empty_GridItem_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd GridItem")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"GridItem" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["GridItem" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_BorderStyle_4300
     * @tc.name： Test_EmptyAttrs_GridRow_BorderStyle_4300
     * @tc.desic：Empty_GridRow_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd GridRow")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"GridRow" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["GridRow" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_BorderStyle_4400
     * @tc.name： Test_EmptyAttrs_GridCol_BorderStyle_4400
     * @tc.desic：Empty_GridCol_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd GridCol")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"GridCol" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["GridCol" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_BorderStyle_4500
     * @tc.name： Test_EmptyAttrs_Flex_BorderStyle_4500
     * @tc.desic：Empty_Flex_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Flex")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Flex" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Flex" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_BorderStyle_4600
     * @tc.name： Test_EmptyAttrs_List_BorderStyle_4600
     * @tc.desic：Empty_List_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd List")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"List" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["List" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_BorderStyle_4700
     * @tc.name： Test_EmptyAttrs_ListItem_BorderStyle_4700
     * @tc.desic：Empty_ListItem_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd ListItem")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"ListItem" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["ListItem" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_BorderStyle_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_BorderStyle_4800
     * @tc.desic：Empty_ListItemGroup_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"ListItemGroup" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_BorderStyle_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_BorderStyle_5000
     * @tc.desic：Empty_RelativeContainer_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"RelativeContainer" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_BorderStyle_5100
     * @tc.name： Test_EmptyAttrs_Row_BorderStyle_5100
     * @tc.desic：Empty_Row_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Row")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Row" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Row" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_BorderStyle_5200
     * @tc.name： Test_EmptyAttrs_Scroll_BorderStyle_5200
     * @tc.desic：Empty_Scroll_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Scroll")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Scroll" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Scroll" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_BorderStyle_5300
     * @tc.name： Test_EmptyAttrs_Stack_BorderStyle_5300
     * @tc.desic：Empty_Stack_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Stack")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Stack" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Stack" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_BorderStyle_5400
     * @tc.name： Test_EmptyAttrs_Swiper_BorderStyle_5400
     * @tc.desic：Empty_Swiper_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Swiper")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Swiper" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Swiper" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_BorderStyle_5500
     * @tc.name： Test_EmptyAttrs_Tabs_BorderStyle_5500
     * @tc.desic：Empty_Tabs_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Tabs")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Tabs" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Tabs" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_BorderStyle_5600
     * @tc.name： Test_EmptyAttrs_TabContent_BorderStyle_5600
     * @tc.desic：Empty_TabContent_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd TabContent")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"TabContent" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["TabContent" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_BorderStyle_5700
     * @tc.name： Test_EmptyAttrs_Circle_BorderStyle_5700
     * @tc.desic：Empty_Circle_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Circle")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Circle" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Circle" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_BorderStyle_5800
     * @tc.name： Test_EmptyAttrs_Line_BorderStyle_5800
     * @tc.desic：Empty_Line_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Line")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Line" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Line" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_BorderStyle_5900
     * @tc.name： Test_EmptyAttrs_Rect_BorderStyle_5900
     * @tc.desic：Empty_Rect_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Rect")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Rect" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Rect" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_BorderStyle_6000
     * @tc.name： Test_EmptyAttrs_Shape_BorderStyle_6000
     * @tc.desic：Empty_Shape_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Shape")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Shape" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Shape" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_BorderStyle_6200
     * @tc.name： Test_EmptyAttrs_Path_BorderStyle_6200
     * @tc.desic：Empty_Path_BorderStyle
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderStyle_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle: FindEnd Path")
        sleepFor(1.second)
        for (BorderStyle_Prop in BorderStyle_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle_Prop: ${"Path" + BorderStyle_Prop[0]}")
            let viewPort = getInspector()["Path" + BorderStyle_Prop[0], "borderStyle"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderStyle_Prop[2]}")
            @Expect(viewPort, BorderStyle_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderStyle:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
