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
class Test_EmptyAttrs_Height {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Height")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Height_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Height_0100
     * @tc.desic：Empty_AlphabetIndexer_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"AlphabetIndexer" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Height_0300
     * @tc.name： Test_EmptyAttrs_Button_Height_0300
     * @tc.desic：Empty_Button_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Button")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Button" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Button" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Height_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Height_0400
     * @tc.desic：Empty_Checkbox_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Checkbox")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Checkbox" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Height_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Height_0500
     * @tc.desic：Empty_CheckboxGroup_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"CheckboxGroup" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Height_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Height_0700
     * @tc.desic：Empty_DataPanel_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd DataPanel")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"DataPanel" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Height_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Height_0800
     * @tc.desic：Empty_DatePicker_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd DatePicker")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"DatePicker" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Height_0900
     * @tc.name： Test_EmptyAttrs_Divider_Height_0900
     * @tc.desic：Empty_Divider_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Divider")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Divider" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Divider" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Height_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Height_1000
     * @tc.desic：Empty_Gauge_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Gauge")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Gauge" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Gauge" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Height_1100
     * @tc.name： Test_EmptyAttrs_Image_Height_1100
     * @tc.desic：Empty_Image_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Image")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Image" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Image" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Height_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Height_1200
     * @tc.desic：Empty_ImageSpan_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd ImageSpan")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"ImageSpan" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Height_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Height_1300
     * @tc.desic：Empty_LoadingProgress_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"LoadingProgress" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Height_1400
     * @tc.name： Test_EmptyAttrs_Menu_Height_1400
     * @tc.desic：Empty_Menu_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Menu")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Menu" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Menu" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Height_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Height_1500
     * @tc.desic：Empty_MenuItem_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd MenuItem")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"MenuItem" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Height_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Height_1600
     * @tc.desic：Empty_MenuItemGroup_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"MenuItemGroup" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Height_1700
     * @tc.name： Test_EmptyAttrs_Progress_Height_1700
     * @tc.desic：Empty_Progress_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Progress")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Progress" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Progress" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Height_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Height_1800
     * @tc.desic：Empty_QRCode_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd QRCode")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"QRCode" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["QRCode" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Height_1900
     * @tc.name： Test_EmptyAttrs_Radio_Height_1900
     * @tc.desic：Empty_Radio_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Radio")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Radio" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Radio" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Height_2000
     * @tc.name： Test_EmptyAttrs_Rating_Height_2000
     * @tc.desic：Empty_Rating_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Rating")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Rating" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Rating" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Height_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Height_2100
     * @tc.desic：Empty_Refresh_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Refresh")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Refresh" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Refresh" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Height_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Height_2200
     * @tc.desic：Empty_RichEditor_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd RichEditor")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"RichEditor" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Height_2300
     * @tc.name： Test_EmptyAttrs_RichText_Height_2300
     * @tc.desic：Empty_RichText_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd RichText")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"RichText" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["RichText" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Height_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Height_2400
     * @tc.desic：Empty_RowSplit_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd RowSplit")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"RowSplit" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Height_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Height_2500
     * @tc.desic：Empty_ScrollBar_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd ScrollBar")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"ScrollBar" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Height_2600
     * @tc.name： Test_EmptyAttrs_Search_Height_2600
     * @tc.desic：Empty_Search_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Search")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Search" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Search" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Height_2700
     * @tc.name： Test_EmptyAttrs_Slider_Height_2700
     * @tc.desic：Empty_Slider_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Slider")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Slider" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Slider" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Height_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Height_2800
     * @tc.desic：Empty_Stepper_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Stepper")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Stepper" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Stepper" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Height_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Height_2900
     * @tc.desic：Empty_StepperItem_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd StepperItem")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"StepperItem" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Height_3000
     * @tc.name： Test_EmptyAttrs_Text_Height_3000
     * @tc.desic：Empty_Text_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Text")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Text" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Text" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Height_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Height_3100
     * @tc.desic：Empty_TextArea_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd TextArea")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"TextArea" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["TextArea" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Height_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Height_3200
     * @tc.desic：Empty_TextClock_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd TextClock")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"TextClock" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["TextClock" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Height_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Height_3300
     * @tc.desic：Empty_TextInput_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd TextInput")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"TextInput" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["TextInput" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Height_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Height_3400
     * @tc.desic：Empty_TextPicker_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd TextPicker")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"TextPicker" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Height_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Height_3500
     * @tc.desic：Empty_TextTimer_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd TextTimer")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"TextTimer" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Height_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Height_3600
     * @tc.desic：Empty_Toggle_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Toggle")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Toggle" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Toggle" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Height_3700
     * @tc.name： Test_EmptyAttrs_Web_Height_3700
     * @tc.desic：Empty_Web_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Web")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Web" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Web" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Height_3800
     * @tc.name： Test_EmptyAttrs_Select_Height_3800
     * @tc.desic：Empty_Select_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Select")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Select" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Select" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Height_3900
     * @tc.name： Test_EmptyAttrs_Badge_Height_3900
     * @tc.desic：Empty_Badge_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Badge")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Badge" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Badge" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Height_4000
     * @tc.name： Test_EmptyAttrs_Column_Height_4000
     * @tc.desic：Empty_Column_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Column")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Column" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Column" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Height_4100
     * @tc.name： Test_EmptyAttrs_Grid_Height_4100
     * @tc.desic：Empty_Grid_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Grid")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Grid" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Grid" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Height_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Height_4200
     * @tc.desic：Empty_GridItem_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd GridItem")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"GridItem" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["GridItem" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Height_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Height_4300
     * @tc.desic：Empty_GridRow_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd GridRow")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"GridRow" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["GridRow" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Height_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Height_4400
     * @tc.desic：Empty_GridCol_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd GridCol")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"GridCol" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["GridCol" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Height_4500
     * @tc.name： Test_EmptyAttrs_Flex_Height_4500
     * @tc.desic：Empty_Flex_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Flex")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Flex" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Flex" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Height_4600
     * @tc.name： Test_EmptyAttrs_List_Height_4600
     * @tc.desic：Empty_List_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd List")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"List" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["List" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Height_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Height_4700
     * @tc.desic：Empty_ListItem_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd ListItem")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"ListItem" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["ListItem" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Height_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Height_4800
     * @tc.desic：Empty_ListItemGroup_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"ListItemGroup" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Height_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Height_5000
     * @tc.desic：Empty_RelativeContainer_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"RelativeContainer" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Height_5100
     * @tc.name： Test_EmptyAttrs_Row_Height_5100
     * @tc.desic：Empty_Row_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Row")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Row" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Row" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Height_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Height_5200
     * @tc.desic：Empty_Scroll_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Scroll")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Scroll" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Scroll" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Height_5300
     * @tc.name： Test_EmptyAttrs_Stack_Height_5300
     * @tc.desic：Empty_Stack_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Stack")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Stack" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Stack" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Height_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Height_5400
     * @tc.desic：Empty_Swiper_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Swiper")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Swiper" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Swiper" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Height_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Height_5500
     * @tc.desic：Empty_Tabs_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Tabs")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Tabs" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Tabs" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Height_5600
     * @tc.name： Test_EmptyAttrs_Circle_Height_5600
     * @tc.desic：Empty_Circle_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Circle_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Circle")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Circle" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Circle" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Height_5700
     * @tc.name： Test_EmptyAttrs_Line_Height_5700
     * @tc.desic：Empty_Line_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Line_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Line")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Line" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Line" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Height_5800
     * @tc.name： Test_EmptyAttrs_Rect_Height_5800
     * @tc.desic：Empty_Rect_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Rect_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Rect")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Rect" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Rect" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Height_5900
     * @tc.name： Test_EmptyAttrs_Shape_Height_5900
     * @tc.desic：Empty_Shape_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Shape_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Shape")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Shape" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Shape" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Height_6100
     * @tc.name： Test_EmptyAttrs_Path_Height_6100
     * @tc.desic：Empty_Path_Height
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Height_Path_6100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "CheckCheckHeight: FindEnd Path")
        sleepFor(1.second)
        for (WidthHeight_Prop in WidthHeight_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckWidthHeight_Prop: ${"Path" + WidthHeight_Prop[0]}")
            let viewPort = getInspector()["Path" + WidthHeight_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${WidthHeight_Prop[2]}")
            @Expect(viewPort, WidthHeight_Prop[2])
        }
        Hilog.info(0, "cangjietest", "CheckCheckHeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
