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

@Test
class Test_EmptyAttrs_Margin {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Margin")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Margin_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Margin_0100
     * @tc.desic：Empty_AlphabetIndexer_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"AlphabetIndexer" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Margin_0200
     * @tc.name： Test_EmptyAttrs_Blank_Margin_0200
     * @tc.desic：Empty_Blank_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Blank")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Blank" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Blank" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Margin_0300
     * @tc.name： Test_EmptyAttrs_Button_Margin_0300
     * @tc.desic：Empty_Button_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Button")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Button" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Button" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Margin_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Margin_0400
     * @tc.desic：Empty_Checkbox_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Checkbox")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Checkbox" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Margin_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Margin_0500
     * @tc.desic：Empty_CheckboxGroup_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"CheckboxGroup" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Margin_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Margin_0700
     * @tc.desic：Empty_DataPanel_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd DataPanel")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"DataPanel" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Margin_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Margin_0800
     * @tc.desic：Empty_DatePicker_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd DatePicker")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"DatePicker" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Margin_0900
     * @tc.name： Test_EmptyAttrs_Divider_Margin_0900
     * @tc.desic：Empty_Divider_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Divider")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Divider" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Divider" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Margin_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Margin_1000
     * @tc.desic：Empty_Gauge_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Gauge")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Gauge" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Gauge" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Margin_1100
     * @tc.name： Test_EmptyAttrs_Image_Margin_1100
     * @tc.desic：Empty_Image_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Image")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Image" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Image" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Margin_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Margin_1200
     * @tc.desic：Empty_ImageSpan_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd ImageSpan")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"ImageSpan" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Margin_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Margin_1300
     * @tc.desic：Empty_LoadingProgress_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"LoadingProgress" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Margin_1400
     * @tc.name： Test_EmptyAttrs_Menu_Margin_1400
     * @tc.desic：Empty_Menu_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Menu")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Menu" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Menu" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Margin_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Margin_1500
     * @tc.desic：Empty_MenuItem_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd MenuItem")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"MenuItem" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Margin_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Margin_1600
     * @tc.desic：Empty_MenuItemGroup_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"MenuItemGroup" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Margin_1700
     * @tc.name： Test_EmptyAttrs_Progress_Margin_1700
     * @tc.desic：Empty_Progress_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Progress")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Progress" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Progress" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Margin_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Margin_1800
     * @tc.desic：Empty_QRCode_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd QRCode")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"QRCode" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["QRCode" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Margin_1900
     * @tc.name： Test_EmptyAttrs_Radio_Margin_1900
     * @tc.desic：Empty_Radio_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Radio")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Radio" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Radio" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Margin_2000
     * @tc.name： Test_EmptyAttrs_Rating_Margin_2000
     * @tc.desic：Empty_Rating_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Rating")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Rating" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Rating" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Margin_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Margin_2100
     * @tc.desic：Empty_Refresh_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Refresh")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Refresh" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Refresh" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Margin_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Margin_2200
     * @tc.desic：Empty_RichEditor_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd RichEditor")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"RichEditor" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Margin_2300
     * @tc.name： Test_EmptyAttrs_RichText_Margin_2300
     * @tc.desic：Empty_RichText_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd RichText")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"RichText" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["RichText" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Margin_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Margin_2400
     * @tc.desic：Empty_RowSplit_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd RowSplit")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"RowSplit" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Margin_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Margin_2500
     * @tc.desic：Empty_ScrollBar_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd ScrollBar")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"ScrollBar" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Margin_2600
     * @tc.name： Test_EmptyAttrs_Search_Margin_2600
     * @tc.desic：Empty_Search_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Search")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Search" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Search" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Margin_2700
     * @tc.name： Test_EmptyAttrs_Slider_Margin_2700
     * @tc.desic：Empty_Slider_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Slider")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Slider" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Slider" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Margin_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Margin_2800
     * @tc.desic：Empty_Stepper_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Stepper")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Stepper" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Stepper" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Margin_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Margin_2900
     * @tc.desic：Empty_StepperItem_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd StepperItem")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"StepperItem" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Margin_3000
     * @tc.name： Test_EmptyAttrs_Text_Margin_3000
     * @tc.desic：Empty_Text_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Text")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Text" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Text" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Margin_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Margin_3100
     * @tc.desic：Empty_TextArea_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd TextArea")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TextArea" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TextArea" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Margin_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Margin_3200
     * @tc.desic：Empty_TextClock_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd TextClock")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TextClock" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TextClock" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Margin_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Margin_3300
     * @tc.desic：Empty_TextInput_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd TextInput")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TextInput" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TextInput" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Margin_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Margin_3400
     * @tc.desic：Empty_TextPicker_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd TextPicker")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TextPicker" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Margin_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Margin_3500
     * @tc.desic：Empty_TextTimer_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd TextTimer")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TextTimer" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Margin_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Margin_3600
     * @tc.desic：Empty_Toggle_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Toggle")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Toggle" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Toggle" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Margin_3700
     * @tc.name： Test_EmptyAttrs_Web_Margin_3700
     * @tc.desic：Empty_Web_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Web")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Web" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Web" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Margin_3800
     * @tc.name： Test_EmptyAttrs_Select_Margin_3800
     * @tc.desic：Empty_Select_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Select")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Select" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Select" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Margin_3900
     * @tc.name： Test_EmptyAttrs_Badge_Margin_3900
     * @tc.desic：Empty_Badge_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Badge")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Badge" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Badge" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Margin_4000
     * @tc.name： Test_EmptyAttrs_Column_Margin_4000
     * @tc.desic：Empty_Column_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Column")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Column" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Column" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Margin_4100
     * @tc.name： Test_EmptyAttrs_Grid_Margin_4100
     * @tc.desic：Empty_Grid_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Grid")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Grid" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Grid" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Margin_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Margin_4200
     * @tc.desic：Empty_GridItem_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd GridItem")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"GridItem" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["GridItem" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Margin_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Margin_4300
     * @tc.desic：Empty_GridRow_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd GridRow")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"GridRow" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["GridRow" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Margin_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Margin_4400
     * @tc.desic：Empty_GridCol_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd GridCol")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"GridCol" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["GridCol" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Margin_4500
     * @tc.name： Test_EmptyAttrs_Flex_Margin_4500
     * @tc.desic：Empty_Flex_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Flex")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Flex" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Flex" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Margin_4600
     * @tc.name： Test_EmptyAttrs_List_Margin_4600
     * @tc.desic：Empty_List_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd List")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"List" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["List" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Margin_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Margin_4700
     * @tc.desic：Empty_ListItem_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd ListItem")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"ListItem" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["ListItem" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Margin_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Margin_4800
     * @tc.desic：Empty_ListItemGroup_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"ListItemGroup" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Margin_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Margin_5000
     * @tc.desic：Empty_RelativeContainer_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"RelativeContainer" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Margin_5100
     * @tc.name： Test_EmptyAttrs_Row_Margin_5100
     * @tc.desic：Empty_Row_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Row")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Row" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Row" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Margin_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Margin_5200
     * @tc.desic：Empty_Scroll_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Scroll")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Scroll" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Scroll" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Margin_5300
     * @tc.name： Test_EmptyAttrs_Stack_Margin_5300
     * @tc.desic：Empty_Stack_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Stack")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Stack" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Stack" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Margin_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Margin_5400
     * @tc.desic：Empty_Swiper_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Swiper")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Swiper" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Swiper" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Margin_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Margin_5500
     * @tc.desic：Empty_Tabs_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Tabs")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Tabs" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Tabs" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Margin_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Margin_5600
     * @tc.desic：Empty_TabContent_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd TabContent")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TabContent" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TabContent" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Margin_5700
     * @tc.name： Test_EmptyAttrs_Circle_Margin_5700
     * @tc.desic：Empty_Circle_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Circle")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Circle" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Circle" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Margin_5800
     * @tc.name： Test_EmptyAttrs_Line_Margin_5800
     * @tc.desic：Empty_Line_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Line")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Line" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Line" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Margin_5900
     * @tc.name： Test_EmptyAttrs_Rect_Margin_5900
     * @tc.desic：Empty_Rect_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Rect")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Rect" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Rect" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Margin_6000
     * @tc.name： Test_EmptyAttrs_Shape_Margin_6000
     * @tc.desic：Empty_Shape_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Shape")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Shape" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Shape" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Margin_6200
     * @tc.name： Test_EmptyAttrs_Path_Margin_6200
     * @tc.desic：Empty_Path_Margin
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Margin_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "CheckCheckMargin: FindEnd Path")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Path" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Path" + PaddingMargin_Prop[0], "margin"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckMargin:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
