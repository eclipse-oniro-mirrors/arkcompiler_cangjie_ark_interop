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
class Test_EmptyAttrs_Sepia {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Sepia")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Sepia_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Sepia_0100
     * @tc.desic：Empty_AlphabetIndexer_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"AlphabetIndexer" + Sepia_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Sepia_0200
     * @tc.name： Test_EmptyAttrs_Blank_Sepia_0200
     * @tc.desic：Empty_Blank_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Blank")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Blank" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Blank" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Sepia_0300
     * @tc.name： Test_EmptyAttrs_Button_Sepia_0300
     * @tc.desic：Empty_Button_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Button")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Button" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Button" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Sepia_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Sepia_0400
     * @tc.desic：Empty_Checkbox_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Checkbox")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Checkbox" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Sepia_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Sepia_0500
     * @tc.desic：Empty_CheckboxGroup_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"CheckboxGroup" + Sepia_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Sepia_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Sepia_0700
     * @tc.desic：Empty_DataPanel_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd DataPanel")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"DataPanel" + Sepia_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Sepia_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Sepia_0800
     * @tc.desic：Empty_DatePicker_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd DatePicker")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"DatePicker" + Sepia_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Sepia_0900
     * @tc.name： Test_EmptyAttrs_Divider_Sepia_0900
     * @tc.desic：Empty_Divider_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Divider")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Divider" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Divider" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Sepia_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Sepia_1000
     * @tc.desic：Empty_Gauge_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Gauge")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Gauge" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Gauge" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Sepia_1100
     * @tc.name： Test_EmptyAttrs_Image_Sepia_1100
     * @tc.desic：Empty_Image_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Image")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Image" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Image" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Sepia_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Sepia_1200
     * @tc.desic：Empty_ImageSpan_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"ImageSpan" + Sepia_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Sepia_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Sepia_1300
     * @tc.desic：Empty_LoadingProgress_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"LoadingProgress" + Sepia_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Sepia_1400
     * @tc.name： Test_EmptyAttrs_Menu_Sepia_1400
     * @tc.desic：Empty_Menu_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Menu")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Menu" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Menu" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Sepia_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Sepia_1500
     * @tc.desic：Empty_MenuItem_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd MenuItem")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"MenuItem" + Sepia_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Sepia_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Sepia_1600
     * @tc.desic：Empty_MenuItemGroup_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"MenuItemGroup" + Sepia_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Sepia_1700
     * @tc.name： Test_EmptyAttrs_Progress_Sepia_1700
     * @tc.desic：Empty_Progress_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Progress")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Progress" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Progress" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Sepia_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Sepia_1800
     * @tc.desic：Empty_QRCode_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd QRCode")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"QRCode" + Sepia_Prop[0]}")
            let viewPort = getInspector()["QRCode" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Sepia_1900
     * @tc.name： Test_EmptyAttrs_Radio_Sepia_1900
     * @tc.desic：Empty_Radio_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Radio")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Radio" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Radio" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Sepia_2000
     * @tc.name： Test_EmptyAttrs_Rating_Sepia_2000
     * @tc.desic：Empty_Rating_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Rating")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Rating" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Rating" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Sepia_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Sepia_2100
     * @tc.desic：Empty_Refresh_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Refresh")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Refresh" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Refresh" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Sepia_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Sepia_2200
     * @tc.desic：Empty_RichEditor_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd RichEditor")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"RichEditor" + Sepia_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Sepia_2300
     * @tc.name： Test_EmptyAttrs_RichText_Sepia_2300
     * @tc.desic：Empty_RichText_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd RichText")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"RichText" + Sepia_Prop[0]}")
            let viewPort = getInspector()["RichText" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Sepia_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Sepia_2400
     * @tc.desic：Empty_RowSplit_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd RowSplit")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"RowSplit" + Sepia_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Sepia_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Sepia_2500
     * @tc.desic：Empty_ScrollBar_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd ScrollBar")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"ScrollBar" + Sepia_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Sepia_2600
     * @tc.name： Test_EmptyAttrs_Search_Sepia_2600
     * @tc.desic：Empty_Search_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Search")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Search" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Search" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Sepia_2700
     * @tc.name： Test_EmptyAttrs_Slider_Sepia_2700
     * @tc.desic：Empty_Slider_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Slider")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Slider" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Slider" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Sepia_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Sepia_2800
     * @tc.desic：Empty_Stepper_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Stepper")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Stepper" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Stepper" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Sepia_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Sepia_2900
     * @tc.desic：Empty_StepperItem_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd StepperItem")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"StepperItem" + Sepia_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Sepia_3000
     * @tc.name： Test_EmptyAttrs_Text_Sepia_3000
     * @tc.desic：Empty_Text_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Text")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Text" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Text" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Sepia_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Sepia_3100
     * @tc.desic：Empty_TextArea_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd TextArea")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"TextArea" + Sepia_Prop[0]}")
            let viewPort = getInspector()["TextArea" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Sepia_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Sepia_3200
     * @tc.desic：Empty_TextClock_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd TextClock")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"TextClock" + Sepia_Prop[0]}")
            let viewPort = getInspector()["TextClock" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Sepia_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Sepia_3300
     * @tc.desic：Empty_TextInput_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd TextInput")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"TextInput" + Sepia_Prop[0]}")
            let viewPort = getInspector()["TextInput" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Sepia_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Sepia_3400
     * @tc.desic：Empty_TextPicker_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd TextPicker")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"TextPicker" + Sepia_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Sepia_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Sepia_3500
     * @tc.desic：Empty_TextTimer_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd TextTimer")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"TextTimer" + Sepia_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Sepia_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Sepia_3600
     * @tc.desic：Empty_Toggle_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Toggle")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Toggle" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Toggle" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Sepia_3700
     * @tc.name： Test_EmptyAttrs_Web_Sepia_3700
     * @tc.desic：Empty_Web_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Web")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Web" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Web" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Sepia_3800
     * @tc.name： Test_EmptyAttrs_Select_Sepia_3800
     * @tc.desic：Empty_Select_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Select")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Select" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Select" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Sepia_3900
     * @tc.name： Test_EmptyAttrs_Badge_Sepia_3900
     * @tc.desic：Empty_Badge_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Badge")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Badge" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Badge" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Sepia_4000
     * @tc.name： Test_EmptyAttrs_Column_Sepia_4000
     * @tc.desic：Empty_Column_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Column")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Column" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Column" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Sepia_4100
     * @tc.name： Test_EmptyAttrs_Grid_Sepia_4100
     * @tc.desic：Empty_Grid_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Grid")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Grid" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Grid" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Sepia_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Sepia_4200
     * @tc.desic：Empty_GridItem_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd GridItem")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"GridItem" + Sepia_Prop[0]}")
            let viewPort = getInspector()["GridItem" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Sepia_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Sepia_4300
     * @tc.desic：Empty_GridRow_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd GridRow")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"GridRow" + Sepia_Prop[0]}")
            let viewPort = getInspector()["GridRow" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Sepia_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Sepia_4400
     * @tc.desic：Empty_GridCol_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd GridCol")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"GridCol" + Sepia_Prop[0]}")
            let viewPort = getInspector()["GridCol" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Sepia_4500
     * @tc.name： Test_EmptyAttrs_Flex_Sepia_4500
     * @tc.desic：Empty_Flex_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Flex")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Flex" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Flex" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Sepia_4600
     * @tc.name： Test_EmptyAttrs_List_Sepia_4600
     * @tc.desic：Empty_List_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd List")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"List" + Sepia_Prop[0]}")
            let viewPort = getInspector()["List" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Sepia_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Sepia_4700
     * @tc.desic：Empty_ListItem_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd ListItem")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"ListItem" + Sepia_Prop[0]}")
            let viewPort = getInspector()["ListItem" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Sepia_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Sepia_4800
     * @tc.desic：Empty_ListItemGroup_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"ListItemGroup" + Sepia_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Sepia_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Sepia_5000
     * @tc.desic：Empty_RelativeContainer_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"RelativeContainer" + Sepia_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Sepia_5100
     * @tc.name： Test_EmptyAttrs_Row_Sepia_5100
     * @tc.desic：Empty_Row_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Row")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Row" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Row" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Sepia_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Sepia_5200
     * @tc.desic：Empty_Scroll_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Scroll")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Scroll" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Scroll" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Sepia_5300
     * @tc.name： Test_EmptyAttrs_Stack_Sepia_5300
     * @tc.desic：Empty_Stack_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Stack")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Stack" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Stack" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Sepia_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Sepia_5400
     * @tc.desic：Empty_Swiper_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Swiper")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Swiper" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Swiper" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Sepia_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Sepia_5500
     * @tc.desic：Empty_Tabs_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Tabs")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Tabs" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Tabs" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Sepia_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Sepia_5600
     * @tc.desic：Empty_TabContent_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd TabContent")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"TabContent" + Sepia_Prop[0]}")
            let viewPort = getInspector()["TabContent" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Sepia_5700
     * @tc.name： Test_EmptyAttrs_Circle_Sepia_5700
     * @tc.desic：Empty_Circle_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Circle")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Circle" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Circle" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Sepia_5800
     * @tc.name： Test_EmptyAttrs_Line_Sepia_5800
     * @tc.desic：Empty_Line_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Line")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Line" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Line" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Sepia_5900
     * @tc.name： Test_EmptyAttrs_Rect_Sepia_5900
     * @tc.desic：Empty_Rect_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Rect")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Rect" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Rect" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Sepia_6000
     * @tc.name： Test_EmptyAttrs_Shape_Sepia_6000
     * @tc.desic：Empty_Shape_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Shape")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Shape" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Shape" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Sepia_6200
     * @tc.name： Test_EmptyAttrs_Path_Sepia_6200
     * @tc.desic：Empty_Path_Sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Sepia_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia: FindEnd Path")
        sleepFor(1.second)
        for (Sepia_Prop in Sepia_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSepia_Prop: ${"Path" + Sepia_Prop[0]}")
            let viewPort = getInspector()["Path" + Sepia_Prop[0], "sepia"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Sepia_Prop[2]}")
            @Expect(viewPort, Sepia_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSepia:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
