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
class Test_EmptyAttrs_Padding {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Padding")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Padding_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Padding_0100
     * @tc.desic：Empty_AlphabetIndexer_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"AlphabetIndexer" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Padding_0200
     * @tc.name： Test_EmptyAttrs_Blank_Padding_0200
     * @tc.desic：Empty_Blank_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Blank")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Blank" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Blank" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Padding_0300
     * @tc.name： Test_EmptyAttrs_Button_Padding_0300
     * @tc.desic：Empty_Button_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Button")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Button" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Button" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Padding_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Padding_0400
     * @tc.desic：Empty_Checkbox_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Checkbox")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Checkbox" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Padding_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Padding_0500
     * @tc.desic：Empty_CheckboxGroup_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"CheckboxGroup" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Padding_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Padding_0700
     * @tc.desic：Empty_DataPanel_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd DataPanel")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"DataPanel" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Padding_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Padding_0800
     * @tc.desic：Empty_DatePicker_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd DatePicker")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"DatePicker" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Padding_0900
     * @tc.name： Test_EmptyAttrs_Divider_Padding_0900
     * @tc.desic：Empty_Divider_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Divider")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Divider" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Divider" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Padding_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Padding_1000
     * @tc.desic：Empty_Gauge_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Gauge")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Gauge" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Gauge" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Padding_1100
     * @tc.name： Test_EmptyAttrs_Image_Padding_1100
     * @tc.desic：Empty_Image_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Image")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Image" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Image" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Padding_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Padding_1200
     * @tc.desic：Empty_ImageSpan_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd ImageSpan")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"ImageSpan" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Padding_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Padding_1300
     * @tc.desic：Empty_LoadingProgress_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"LoadingProgress" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Padding_1400
     * @tc.name： Test_EmptyAttrs_Menu_Padding_1400
     * @tc.desic：Empty_Menu_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Menu")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Menu" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Menu" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Padding_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Padding_1500
     * @tc.desic：Empty_MenuItem_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd MenuItem")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"MenuItem" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Padding_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Padding_1600
     * @tc.desic：Empty_MenuItemGroup_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"MenuItemGroup" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Padding_1700
     * @tc.name： Test_EmptyAttrs_Progress_Padding_1700
     * @tc.desic：Empty_Progress_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Progress")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Progress" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Progress" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Padding_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Padding_1800
     * @tc.desic：Empty_QRCode_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd QRCode")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"QRCode" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["QRCode" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Padding_1900
     * @tc.name： Test_EmptyAttrs_Radio_Padding_1900
     * @tc.desic：Empty_Radio_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Radio")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Radio" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Radio" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Padding_2000
     * @tc.name： Test_EmptyAttrs_Rating_Padding_2000
     * @tc.desic：Empty_Rating_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Rating")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Rating" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Rating" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Padding_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Padding_2100
     * @tc.desic：Empty_Refresh_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Refresh")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Refresh" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Refresh" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Padding_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Padding_2200
     * @tc.desic：Empty_RichEditor_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd RichEditor")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"RichEditor" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Padding_2300
     * @tc.name： Test_EmptyAttrs_RichText_Padding_2300
     * @tc.desic：Empty_RichText_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd RichText")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"RichText" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["RichText" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Padding_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Padding_2400
     * @tc.desic：Empty_RowSplit_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd RowSplit")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"RowSplit" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Padding_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Padding_2500
     * @tc.desic：Empty_ScrollBar_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd ScrollBar")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"ScrollBar" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Padding_2600
     * @tc.name： Test_EmptyAttrs_Search_Padding_2600
     * @tc.desic：Empty_Search_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Search")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Search" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Search" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Padding_2700
     * @tc.name： Test_EmptyAttrs_Slider_Padding_2700
     * @tc.desic：Empty_Slider_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Slider")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Slider" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Slider" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Padding_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Padding_2800
     * @tc.desic：Empty_Stepper_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Stepper")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Stepper" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Stepper" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Padding_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Padding_2900
     * @tc.desic：Empty_StepperItem_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd StepperItem")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"StepperItem" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Padding_3000
     * @tc.name： Test_EmptyAttrs_Text_Padding_3000
     * @tc.desic：Empty_Text_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Text")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Text" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Text" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Padding_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Padding_3100
     * @tc.desic：Empty_TextArea_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd TextArea")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TextArea" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TextArea" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Padding_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Padding_3200
     * @tc.desic：Empty_TextClock_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd TextClock")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TextClock" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TextClock" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Padding_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Padding_3300
     * @tc.desic：Empty_TextInput_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd TextInput")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TextInput" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TextInput" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Padding_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Padding_3400
     * @tc.desic：Empty_TextPicker_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd TextPicker")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TextPicker" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Padding_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Padding_3500
     * @tc.desic：Empty_TextTimer_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd TextTimer")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TextTimer" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Padding_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Padding_3600
     * @tc.desic：Empty_Toggle_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Toggle")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Toggle" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Toggle" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Padding_3700
     * @tc.name： Test_EmptyAttrs_Web_Padding_3700
     * @tc.desic：Empty_Web_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Web")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Web" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Web" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Padding_3800
     * @tc.name： Test_EmptyAttrs_Select_Padding_3800
     * @tc.desic：Empty_Select_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Select")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Select" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Select" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Padding_3900
     * @tc.name： Test_EmptyAttrs_Badge_Padding_3900
     * @tc.desic：Empty_Badge_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Badge")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Badge" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Badge" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Padding_4000
     * @tc.name： Test_EmptyAttrs_Column_Padding_4000
     * @tc.desic：Empty_Column_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Column")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Column" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Column" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Padding_4100
     * @tc.name： Test_EmptyAttrs_Grid_Padding_4100
     * @tc.desic：Empty_Grid_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Grid")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Grid" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Grid" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Padding_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Padding_4200
     * @tc.desic：Empty_GridItem_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd GridItem")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"GridItem" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["GridItem" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Padding_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Padding_4300
     * @tc.desic：Empty_GridRow_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd GridRow")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"GridRow" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["GridRow" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Padding_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Padding_4400
     * @tc.desic：Empty_GridCol_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd GridCol")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"GridCol" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["GridCol" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Padding_4500
     * @tc.name： Test_EmptyAttrs_Flex_Padding_4500
     * @tc.desic：Empty_Flex_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Flex")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Flex" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Flex" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Padding_4600
     * @tc.name： Test_EmptyAttrs_List_Padding_4600
     * @tc.desic：Empty_List_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd List")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"List" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["List" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Padding_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Padding_4700
     * @tc.desic：Empty_ListItem_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd ListItem")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"ListItem" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["ListItem" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Padding_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Padding_4800
     * @tc.desic：Empty_ListItemGroup_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"ListItemGroup" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Padding_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Padding_5000
     * @tc.desic：Empty_RelativeContainer_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"RelativeContainer" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Padding_5100
     * @tc.name： Test_EmptyAttrs_Row_Padding_5100
     * @tc.desic：Empty_Row_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Row")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Row" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Row" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Padding_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Padding_5200
     * @tc.desic：Empty_Scroll_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Scroll")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Scroll" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Scroll" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Padding_5300
     * @tc.name： Test_EmptyAttrs_Stack_Padding_5300
     * @tc.desic：Empty_Stack_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Stack")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Stack" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Stack" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Padding_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Padding_5400
     * @tc.desic：Empty_Swiper_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Swiper")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Swiper" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Swiper" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Padding_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Padding_5500
     * @tc.desic：Empty_Tabs_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Tabs")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Tabs" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Tabs" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Padding_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Padding_5600
     * @tc.desic：Empty_TabContent_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd TabContent")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"TabContent" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["TabContent" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Padding_5700
     * @tc.name： Test_EmptyAttrs_Circle_Padding_5700
     * @tc.desic：Empty_Circle_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Circle")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Circle" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Circle" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Padding_5800
     * @tc.name： Test_EmptyAttrs_Line_Padding_5800
     * @tc.desic：Empty_Line_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Line")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Line" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Line" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Padding_5900
     * @tc.name： Test_EmptyAttrs_Rect_Padding_5900
     * @tc.desic：Empty_Rect_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Rect")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Rect" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Rect" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Padding_6000
     * @tc.name： Test_EmptyAttrs_Shape_Padding_6000
     * @tc.desic：Empty_Shape_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Shape")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Shape" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Shape" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Padding_6200
     * @tc.name： Test_EmptyAttrs_Path_Padding_6200
     * @tc.desic：Empty_Path_Padding
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Padding_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "CheckCheckPadding: FindEnd Path")
        sleepFor(1.second)
        for (PaddingMargin_Prop in PaddingMargin_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckPaddingMargin_Prop: ${"Path" + PaddingMargin_Prop[0]}")
            let viewPort = getInspector()["Path" + PaddingMargin_Prop[0], "padding"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${PaddingMargin_Prop[2]}")
            @Expect(viewPort, PaddingMargin_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckPadding:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
