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
class Test_EmptyAttrs_Invert {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Invert")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Invert_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Invert_0100
     * @tc.desic：Empty_AlphabetIndexer_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"AlphabetIndexer" + Invert_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Invert_0200
     * @tc.name： Test_EmptyAttrs_Blank_Invert_0200
     * @tc.desic：Empty_Blank_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Blank")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Blank" + Invert_Prop[0]}")
            let viewPort = getInspector()["Blank" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Invert_0300
     * @tc.name： Test_EmptyAttrs_Button_Invert_0300
     * @tc.desic：Empty_Button_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Button")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Button" + Invert_Prop[0]}")
            let viewPort = getInspector()["Button" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Invert_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Invert_0400
     * @tc.desic：Empty_Checkbox_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Checkbox")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Checkbox" + Invert_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Invert_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Invert_0500
     * @tc.desic：Empty_CheckboxGroup_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"CheckboxGroup" + Invert_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Invert_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Invert_0700
     * @tc.desic：Empty_DataPanel_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd DataPanel")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"DataPanel" + Invert_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Invert_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Invert_0800
     * @tc.desic：Empty_DatePicker_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd DatePicker")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"DatePicker" + Invert_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Invert_0900
     * @tc.name： Test_EmptyAttrs_Divider_Invert_0900
     * @tc.desic：Empty_Divider_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Divider")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Divider" + Invert_Prop[0]}")
            let viewPort = getInspector()["Divider" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Invert_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Invert_1000
     * @tc.desic：Empty_Gauge_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Gauge")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Gauge" + Invert_Prop[0]}")
            let viewPort = getInspector()["Gauge" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Invert_1100
     * @tc.name： Test_EmptyAttrs_Image_Invert_1100
     * @tc.desic：Empty_Image_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Image")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Image" + Invert_Prop[0]}")
            let viewPort = getInspector()["Image" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Invert_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Invert_1200
     * @tc.desic：Empty_ImageSpan_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"ImageSpan" + Invert_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Invert_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Invert_1300
     * @tc.desic：Empty_LoadingProgress_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"LoadingProgress" + Invert_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Invert_1400
     * @tc.name： Test_EmptyAttrs_Menu_Invert_1400
     * @tc.desic：Empty_Menu_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Menu")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Menu" + Invert_Prop[0]}")
            let viewPort = getInspector()["Menu" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Invert_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Invert_1500
     * @tc.desic：Empty_MenuItem_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd MenuItem")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"MenuItem" + Invert_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Invert_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Invert_1600
     * @tc.desic：Empty_MenuItemGroup_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"MenuItemGroup" + Invert_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Invert_1700
     * @tc.name： Test_EmptyAttrs_Progress_Invert_1700
     * @tc.desic：Empty_Progress_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Progress")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Progress" + Invert_Prop[0]}")
            let viewPort = getInspector()["Progress" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Invert_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Invert_1800
     * @tc.desic：Empty_QRCode_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd QRCode")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"QRCode" + Invert_Prop[0]}")
            let viewPort = getInspector()["QRCode" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Invert_1900
     * @tc.name： Test_EmptyAttrs_Radio_Invert_1900
     * @tc.desic：Empty_Radio_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Radio")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Radio" + Invert_Prop[0]}")
            let viewPort = getInspector()["Radio" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Invert_2000
     * @tc.name： Test_EmptyAttrs_Rating_Invert_2000
     * @tc.desic：Empty_Rating_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Rating")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Rating" + Invert_Prop[0]}")
            let viewPort = getInspector()["Rating" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Invert_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Invert_2100
     * @tc.desic：Empty_Refresh_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Refresh")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Refresh" + Invert_Prop[0]}")
            let viewPort = getInspector()["Refresh" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Invert_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Invert_2200
     * @tc.desic：Empty_RichEditor_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd RichEditor")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"RichEditor" + Invert_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Invert_2300
     * @tc.name： Test_EmptyAttrs_RichText_Invert_2300
     * @tc.desic：Empty_RichText_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd RichText")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"RichText" + Invert_Prop[0]}")
            let viewPort = getInspector()["RichText" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Invert_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Invert_2400
     * @tc.desic：Empty_RowSplit_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd RowSplit")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"RowSplit" + Invert_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Invert_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Invert_2500
     * @tc.desic：Empty_ScrollBar_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd ScrollBar")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"ScrollBar" + Invert_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Invert_2600
     * @tc.name： Test_EmptyAttrs_Search_Invert_2600
     * @tc.desic：Empty_Search_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Search")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Search" + Invert_Prop[0]}")
            let viewPort = getInspector()["Search" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Invert_2700
     * @tc.name： Test_EmptyAttrs_Slider_Invert_2700
     * @tc.desic：Empty_Slider_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Slider")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Slider" + Invert_Prop[0]}")
            let viewPort = getInspector()["Slider" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Invert_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Invert_2800
     * @tc.desic：Empty_Stepper_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Stepper")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Stepper" + Invert_Prop[0]}")
            let viewPort = getInspector()["Stepper" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Invert_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Invert_2900
     * @tc.desic：Empty_StepperItem_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd StepperItem")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"StepperItem" + Invert_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Invert_3000
     * @tc.name： Test_EmptyAttrs_Text_Invert_3000
     * @tc.desic：Empty_Text_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Text")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Text" + Invert_Prop[0]}")
            let viewPort = getInspector()["Text" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Invert_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Invert_3100
     * @tc.desic：Empty_TextArea_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd TextArea")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"TextArea" + Invert_Prop[0]}")
            let viewPort = getInspector()["TextArea" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Invert_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Invert_3200
     * @tc.desic：Empty_TextClock_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd TextClock")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"TextClock" + Invert_Prop[0]}")
            let viewPort = getInspector()["TextClock" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Invert_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Invert_3300
     * @tc.desic：Empty_TextInput_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd TextInput")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"TextInput" + Invert_Prop[0]}")
            let viewPort = getInspector()["TextInput" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Invert_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Invert_3400
     * @tc.desic：Empty_TextPicker_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd TextPicker")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"TextPicker" + Invert_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Invert_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Invert_3500
     * @tc.desic：Empty_TextTimer_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd TextTimer")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"TextTimer" + Invert_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Invert_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Invert_3600
     * @tc.desic：Empty_Toggle_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Toggle")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Toggle" + Invert_Prop[0]}")
            let viewPort = getInspector()["Toggle" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Invert_3700
     * @tc.name： Test_EmptyAttrs_Web_Invert_3700
     * @tc.desic：Empty_Web_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Web")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Web" + Invert_Prop[0]}")
            let viewPort = getInspector()["Web" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Invert_3800
     * @tc.name： Test_EmptyAttrs_Select_Invert_3800
     * @tc.desic：Empty_Select_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Select")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Select" + Invert_Prop[0]}")
            let viewPort = getInspector()["Select" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Invert_3900
     * @tc.name： Test_EmptyAttrs_Badge_Invert_3900
     * @tc.desic：Empty_Badge_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Badge")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Badge" + Invert_Prop[0]}")
            let viewPort = getInspector()["Badge" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Invert_4000
     * @tc.name： Test_EmptyAttrs_Column_Invert_4000
     * @tc.desic：Empty_Column_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Column")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Column" + Invert_Prop[0]}")
            let viewPort = getInspector()["Column" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Invert_4100
     * @tc.name： Test_EmptyAttrs_Grid_Invert_4100
     * @tc.desic：Empty_Grid_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Grid")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Grid" + Invert_Prop[0]}")
            let viewPort = getInspector()["Grid" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Invert_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Invert_4200
     * @tc.desic：Empty_GridItem_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd GridItem")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"GridItem" + Invert_Prop[0]}")
            let viewPort = getInspector()["GridItem" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Invert_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Invert_4300
     * @tc.desic：Empty_GridRow_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd GridRow")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"GridRow" + Invert_Prop[0]}")
            let viewPort = getInspector()["GridRow" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Invert_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Invert_4400
     * @tc.desic：Empty_GridCol_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd GridCol")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"GridCol" + Invert_Prop[0]}")
            let viewPort = getInspector()["GridCol" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Invert_4500
     * @tc.name： Test_EmptyAttrs_Flex_Invert_4500
     * @tc.desic：Empty_Flex_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Flex")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Flex" + Invert_Prop[0]}")
            let viewPort = getInspector()["Flex" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Invert_4600
     * @tc.name： Test_EmptyAttrs_List_Invert_4600
     * @tc.desic：Empty_List_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd List")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"List" + Invert_Prop[0]}")
            let viewPort = getInspector()["List" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Invert_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Invert_4700
     * @tc.desic：Empty_ListItem_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd ListItem")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"ListItem" + Invert_Prop[0]}")
            let viewPort = getInspector()["ListItem" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Invert_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Invert_4800
     * @tc.desic：Empty_ListItemGroup_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"ListItemGroup" + Invert_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Invert_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Invert_5000
     * @tc.desic：Empty_RelativeContainer_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"RelativeContainer" + Invert_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Invert_5100
     * @tc.name： Test_EmptyAttrs_Row_Invert_5100
     * @tc.desic：Empty_Row_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Row")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Row" + Invert_Prop[0]}")
            let viewPort = getInspector()["Row" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Invert_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Invert_5200
     * @tc.desic：Empty_Scroll_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Scroll")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Scroll" + Invert_Prop[0]}")
            let viewPort = getInspector()["Scroll" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Invert_5300
     * @tc.name： Test_EmptyAttrs_Stack_Invert_5300
     * @tc.desic：Empty_Stack_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Stack")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Stack" + Invert_Prop[0]}")
            let viewPort = getInspector()["Stack" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Invert_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Invert_5400
     * @tc.desic：Empty_Swiper_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Swiper")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Swiper" + Invert_Prop[0]}")
            let viewPort = getInspector()["Swiper" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Invert_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Invert_5500
     * @tc.desic：Empty_Tabs_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Tabs")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Tabs" + Invert_Prop[0]}")
            let viewPort = getInspector()["Tabs" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Invert_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Invert_5600
     * @tc.desic：Empty_TabContent_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd TabContent")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"TabContent" + Invert_Prop[0]}")
            let viewPort = getInspector()["TabContent" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Invert_5700
     * @tc.name： Test_EmptyAttrs_Circle_Invert_5700
     * @tc.desic：Empty_Circle_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Circle")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Circle" + Invert_Prop[0]}")
            let viewPort = getInspector()["Circle" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Invert_5800
     * @tc.name： Test_EmptyAttrs_Line_Invert_5800
     * @tc.desic：Empty_Line_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Line")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Line" + Invert_Prop[0]}")
            let viewPort = getInspector()["Line" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Invert_5900
     * @tc.name： Test_EmptyAttrs_Rect_Invert_5900
     * @tc.desic：Empty_Rect_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Rect")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Rect" + Invert_Prop[0]}")
            let viewPort = getInspector()["Rect" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Invert_6000
     * @tc.name： Test_EmptyAttrs_Shape_Invert_6000
     * @tc.desic：Empty_Shape_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Shape")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Shape" + Invert_Prop[0]}")
            let viewPort = getInspector()["Shape" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Invert_6200
     * @tc.name： Test_EmptyAttrs_Path_Invert_6200
     * @tc.desic：Empty_Path_Invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Invert_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert: FindEnd Path")
        sleepFor(1.second)
        for (Invert_Prop in Invert_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckInvert_Prop: ${"Path" + Invert_Prop[0]}")
            let viewPort = getInspector()["Path" + Invert_Prop[0], "invert"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Invert_Prop[2]}")
            @Expect(viewPort, Invert_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckInvert:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
