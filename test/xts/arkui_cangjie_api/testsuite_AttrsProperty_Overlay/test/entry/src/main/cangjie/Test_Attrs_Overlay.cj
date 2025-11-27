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
class Test_EmptyAttrs_Overlay {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Overlay")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Overlay_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Overlay_0100
     * @tc.desic：Empty_AlphabetIndexer_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"AlphabetIndexer" + Overlay_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Overlay_0200
     * @tc.name： Test_EmptyAttrs_Blank_Overlay_0200
     * @tc.desic：Empty_Blank_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Blank")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Blank" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Blank" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Overlay_0300
     * @tc.name： Test_EmptyAttrs_Button_Overlay_0300
     * @tc.desic：Empty_Button_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Button")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Button" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Button" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Overlay_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Overlay_0400
     * @tc.desic：Empty_Checkbox_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Checkbox")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Checkbox" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Overlay_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Overlay_0500
     * @tc.desic：Empty_CheckboxGroup_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"CheckboxGroup" + Overlay_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Overlay_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Overlay_0700
     * @tc.desic：Empty_DataPanel_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd DataPanel")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"DataPanel" + Overlay_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Overlay_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Overlay_0800
     * @tc.desic：Empty_DatePicker_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd DatePicker")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"DatePicker" + Overlay_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Overlay_0900
     * @tc.name： Test_EmptyAttrs_Divider_Overlay_0900
     * @tc.desic：Empty_Divider_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Divider")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Divider" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Divider" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Overlay_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Overlay_1000
     * @tc.desic：Empty_Gauge_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Gauge")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Gauge" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Gauge" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Overlay_1100
     * @tc.name： Test_EmptyAttrs_Image_Overlay_1100
     * @tc.desic：Empty_Image_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Image")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Image" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Image" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Overlay_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Overlay_1200
     * @tc.desic：Empty_ImageSpan_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"ImageSpan" + Overlay_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Overlay_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Overlay_1300
     * @tc.desic：Empty_LoadingProgress_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"LoadingProgress" + Overlay_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Overlay_1400
     * @tc.name： Test_EmptyAttrs_Menu_Overlay_1400
     * @tc.desic：Empty_Menu_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Menu")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Menu" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Menu" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Overlay_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Overlay_1500
     * @tc.desic：Empty_MenuItem_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd MenuItem")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"MenuItem" + Overlay_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Overlay_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Overlay_1600
     * @tc.desic：Empty_MenuItemGroup_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"MenuItemGroup" + Overlay_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Overlay_1700
     * @tc.name： Test_EmptyAttrs_Progress_Overlay_1700
     * @tc.desic：Empty_Progress_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Progress")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Progress" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Progress" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Overlay_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Overlay_1800
     * @tc.desic：Empty_QRCode_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd QRCode")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"QRCode" + Overlay_Prop[0]}")
            let viewPort = getInspector()["QRCode" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Overlay_1900
     * @tc.name： Test_EmptyAttrs_Radio_Overlay_1900
     * @tc.desic：Empty_Radio_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Radio")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Radio" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Radio" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Overlay_2000
     * @tc.name： Test_EmptyAttrs_Rating_Overlay_2000
     * @tc.desic：Empty_Rating_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Rating")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Rating" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Rating" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Overlay_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Overlay_2100
     * @tc.desic：Empty_Refresh_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Refresh")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Refresh" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Refresh" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Overlay_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Overlay_2200
     * @tc.desic：Empty_RichEditor_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd RichEditor")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"RichEditor" + Overlay_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Overlay_2300
     * @tc.name： Test_EmptyAttrs_RowSplit_Overlay_2300
     * @tc.desic：Empty_RowSplit_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_RowSplit_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd RowSplit")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"RowSplit" + Overlay_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Overlay_2400
     * @tc.name： Test_EmptyAttrs_ScrollBar_Overlay_2400
     * @tc.desic：Empty_ScrollBar_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_ScrollBar_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd ScrollBar")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"ScrollBar" + Overlay_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Overlay_2500
     * @tc.name： Test_EmptyAttrs_Search_Overlay_2500
     * @tc.desic：Empty_Search_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Search_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Search")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Search" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Search" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Overlay_2600
     * @tc.name： Test_EmptyAttrs_Slider_Overlay_2600
     * @tc.desic：Empty_Slider_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Slider_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Slider")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Slider" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Slider" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Overlay_2700
     * @tc.name： Test_EmptyAttrs_Stepper_Overlay_2700
     * @tc.desic：Empty_Stepper_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Stepper_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Stepper")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Stepper" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Stepper" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Overlay_2800
     * @tc.name： Test_EmptyAttrs_StepperItem_Overlay_2800
     * @tc.desic：Empty_StepperItem_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_StepperItem_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd StepperItem")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"StepperItem" + Overlay_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Overlay_2900
     * @tc.name： Test_EmptyAttrs_Text_Overlay_2900
     * @tc.desic：Empty_Text_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Text_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Text")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Text" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Text" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Overlay_3000
     * @tc.name： Test_EmptyAttrs_TextArea_Overlay_3000
     * @tc.desic：Empty_TextArea_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_TextArea_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd TextArea")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"TextArea" + Overlay_Prop[0]}")
            let viewPort = getInspector()["TextArea" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Overlay_3100
     * @tc.name： Test_EmptyAttrs_TextClock_Overlay_3100
     * @tc.desic：Empty_TextClock_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_TextClock_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd TextClock")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"TextClock" + Overlay_Prop[0]}")
            let viewPort = getInspector()["TextClock" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Overlay_3200
     * @tc.name： Test_EmptyAttrs_TextInput_Overlay_3200
     * @tc.desic：Empty_TextInput_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_TextInput_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd TextInput")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"TextInput" + Overlay_Prop[0]}")
            let viewPort = getInspector()["TextInput" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Overlay_3300
     * @tc.name： Test_EmptyAttrs_TextPicker_Overlay_3300
     * @tc.desic：Empty_TextPicker_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_TextPicker_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd TextPicker")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"TextPicker" + Overlay_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Overlay_3400
     * @tc.name： Test_EmptyAttrs_TextTimer_Overlay_3400
     * @tc.desic：Empty_TextTimer_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_TextTimer_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd TextTimer")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"TextTimer" + Overlay_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Overlay_3500
     * @tc.name： Test_EmptyAttrs_Toggle_Overlay_3500
     * @tc.desic：Empty_Toggle_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Toggle_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Toggle")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Toggle" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Toggle" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Overlay_3600
     * @tc.name： Test_EmptyAttrs_Web_Overlay_3600
     * @tc.desic：Empty_Web_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Web_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Web")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Web" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Web" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Overlay_3700
     * @tc.name： Test_EmptyAttrs_Select_Overlay_3700
     * @tc.desic：Empty_Select_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Select_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Select")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Select" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Select" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Overlay_3800
     * @tc.name： Test_EmptyAttrs_Badge_Overlay_3800
     * @tc.desic：Empty_Badge_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Badge_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Badge")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Badge" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Badge" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Overlay_3900
     * @tc.name： Test_EmptyAttrs_Column_Overlay_3900
     * @tc.desic：Empty_Column_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Column_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Column")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Column" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Column" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Overlay_4000
     * @tc.name： Test_EmptyAttrs_Grid_Overlay_4000
     * @tc.desic：Empty_Grid_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Grid_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Grid")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Grid" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Grid" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Overlay_4100
     * @tc.name： Test_EmptyAttrs_GridItem_Overlay_4100
     * @tc.desic：Empty_GridItem_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_GridItem_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd GridItem")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"GridItem" + Overlay_Prop[0]}")
            let viewPort = getInspector()["GridItem" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Overlay_4200
     * @tc.name： Test_EmptyAttrs_GridRow_Overlay_4200
     * @tc.desic：Empty_GridRow_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_GridRow_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd GridRow")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"GridRow" + Overlay_Prop[0]}")
            let viewPort = getInspector()["GridRow" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Overlay_4300
     * @tc.name： Test_EmptyAttrs_GridCol_Overlay_4300
     * @tc.desic：Empty_GridCol_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_GridCol_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd GridCol")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"GridCol" + Overlay_Prop[0]}")
            let viewPort = getInspector()["GridCol" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Overlay_4400
     * @tc.name： Test_EmptyAttrs_Flex_Overlay_4400
     * @tc.desic：Empty_Flex_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Flex_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Flex")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Flex" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Flex" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Overlay_4500
     * @tc.name： Test_EmptyAttrs_List_Overlay_4500
     * @tc.desic：Empty_List_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_List_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd List")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"List" + Overlay_Prop[0]}")
            let viewPort = getInspector()["List" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Overlay_4600
     * @tc.name： Test_EmptyAttrs_ListItem_Overlay_4600
     * @tc.desic：Empty_ListItem_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_ListItem_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd ListItem")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"ListItem" + Overlay_Prop[0]}")
            let viewPort = getInspector()["ListItem" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Overlay_4700
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Overlay_4700
     * @tc.desic：Empty_ListItemGroup_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_ListItemGroup_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"ListItemGroup" + Overlay_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Overlay_4900
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Overlay_4900
     * @tc.desic：Empty_RelativeContainer_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_RelativeContainer_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"RelativeContainer" + Overlay_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Overlay_5000
     * @tc.name： Test_EmptyAttrs_Row_Overlay_5000
     * @tc.desic：Empty_Row_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Row_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Row")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Row" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Row" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Overlay_5100
     * @tc.name： Test_EmptyAttrs_Scroll_Overlay_5100
     * @tc.desic：Empty_Scroll_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Scroll_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Scroll")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Scroll" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Scroll" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Overlay_5200
     * @tc.name： Test_EmptyAttrs_Stack_Overlay_5200
     * @tc.desic：Empty_Stack_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Stack_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Stack")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Stack" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Stack" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Overlay_5300
     * @tc.name： Test_EmptyAttrs_Swiper_Overlay_5300
     * @tc.desic：Empty_Swiper_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Swiper_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Swiper")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Swiper" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Swiper" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Overlay_5400
     * @tc.name： Test_EmptyAttrs_Tabs_Overlay_5400
     * @tc.desic：Empty_Tabs_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Tabs_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Tabs")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Tabs" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Tabs" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Overlay_5500
     * @tc.name： Test_EmptyAttrs_TabContent_Overlay_5500
     * @tc.desic：Empty_TabContent_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_TabContent_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd TabContent")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"TabContent" + Overlay_Prop[0]}")
            let viewPort = getInspector()["TabContent" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Overlay_5600
     * @tc.name： Test_EmptyAttrs_Circle_Overlay_5600
     * @tc.desic：Empty_Circle_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Circle_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Circle")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Circle" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Circle" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Overlay_5700
     * @tc.name： Test_EmptyAttrs_Line_Overlay_5700
     * @tc.desic：Empty_Line_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Line_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Line")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Line" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Line" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Overlay_5800
     * @tc.name： Test_EmptyAttrs_Rect_Overlay_5800
     * @tc.desic：Empty_Rect_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Rect_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Rect")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Rect" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Rect" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Overlay_5900
     * @tc.name： Test_EmptyAttrs_Shape_Overlay_5900
     * @tc.desic：Empty_Shape_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Shape_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Shape")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Shape" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Shape" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Overlay_6100
     * @tc.name： Test_EmptyAttrs_Path_Overlay_6100
     * @tc.desic：Empty_Path_Overlay
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Overlay_Path_6100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay: FindEnd Path")
        sleepFor(1.second)
        for (Overlay_Prop in Overlay_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay_Prop: ${"Path" + Overlay_Prop[0]}")
            let viewPort = getInspector()["Path" + Overlay_Prop[0], "overlay"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Overlay_Prop[2]}")
            @Expect(viewPort, Overlay_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOverlay:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
