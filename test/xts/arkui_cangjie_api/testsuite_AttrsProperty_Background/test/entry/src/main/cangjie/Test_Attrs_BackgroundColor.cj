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
class Test_EmptyAttrs_BackgroundColor {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("BackgroundColor")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_BackgroundColor_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_BackgroundColor_0100
     * @tc.desic：Empty_AlphabetIndexer_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"AlphabetIndexer" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_BackgroundColor_0200
     * @tc.name： Test_EmptyAttrs_Blank_BackgroundColor_0200
     * @tc.desic：Empty_Blank_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Blank")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Blank" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Blank" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_BackgroundColor_0300
     * @tc.name： Test_EmptyAttrs_Button_BackgroundColor_0300
     * @tc.desic：Empty_Button_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Button")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Button" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Button" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_BackgroundColor_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_BackgroundColor_0400
     * @tc.desic：Empty_Checkbox_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Checkbox")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Checkbox" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_BackgroundColor_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_BackgroundColor_0500
     * @tc.desic：Empty_CheckboxGroup_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"CheckboxGroup" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_BackgroundColor_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_BackgroundColor_0700
     * @tc.desic：Empty_DataPanel_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd DataPanel")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"DataPanel" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_BackgroundColor_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_BackgroundColor_0800
     * @tc.desic：Empty_DatePicker_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd DatePicker")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"DatePicker" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_BackgroundColor_0900
     * @tc.name： Test_EmptyAttrs_Divider_BackgroundColor_0900
     * @tc.desic：Empty_Divider_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Divider")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Divider" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Divider" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_BackgroundColor_1000
     * @tc.name： Test_EmptyAttrs_Gauge_BackgroundColor_1000
     * @tc.desic：Empty_Gauge_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Gauge")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Gauge" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Gauge" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_BackgroundColor_1100
     * @tc.name： Test_EmptyAttrs_Image_BackgroundColor_1100
     * @tc.desic：Empty_Image_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Image")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Image" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Image" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_BackgroundColor_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_BackgroundColor_1200
     * @tc.desic：Empty_ImageSpan_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd ImageSpan")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"ImageSpan" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_BackgroundColor_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_BackgroundColor_1300
     * @tc.desic：Empty_LoadingProgress_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"LoadingProgress" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_BackgroundColor_1400
     * @tc.name： Test_EmptyAttrs_Menu_BackgroundColor_1400
     * @tc.desic：Empty_Menu_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Menu")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Menu" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Menu" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_BackgroundColor_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_BackgroundColor_1500
     * @tc.desic：Empty_MenuItem_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd MenuItem")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"MenuItem" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_BackgroundColor_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_BackgroundColor_1600
     * @tc.desic：Empty_MenuItemGroup_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"MenuItemGroup" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_BackgroundColor_1700
     * @tc.name： Test_EmptyAttrs_Progress_BackgroundColor_1700
     * @tc.desic：Empty_Progress_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Progress")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Progress" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Progress" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_BackgroundColor_1800
     * @tc.name： Test_EmptyAttrs_QRCode_BackgroundColor_1800
     * @tc.desic：Empty_QRCode_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd QRCode")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"QRCode" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["QRCode" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_BackgroundColor_1900
     * @tc.name： Test_EmptyAttrs_Radio_BackgroundColor_1900
     * @tc.desic：Empty_Radio_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Radio")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Radio" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Radio" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_BackgroundColor_2000
     * @tc.name： Test_EmptyAttrs_Rating_BackgroundColor_2000
     * @tc.desic：Empty_Rating_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Rating")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Rating" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Rating" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_BackgroundColor_2100
     * @tc.name： Test_EmptyAttrs_Refresh_BackgroundColor_2100
     * @tc.desic：Empty_Refresh_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Refresh")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Refresh" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Refresh" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_BackgroundColor_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_BackgroundColor_2200
     * @tc.desic：Empty_RichEditor_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd RichEditor")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"RichEditor" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_BackgroundColor_2300
     * @tc.name： Test_EmptyAttrs_RowSplit_BackgroundColor_2300
     * @tc.desic：Empty_RowSplit_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_RowSplit_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd RowSplit")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"RowSplit" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_BackgroundColor_2400
     * @tc.name： Test_EmptyAttrs_ScrollBar_BackgroundColor_2400
     * @tc.desic：Empty_ScrollBar_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_ScrollBar_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd ScrollBar")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"ScrollBar" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_BackgroundColor_2500
     * @tc.name： Test_EmptyAttrs_Search_BackgroundColor_2500
     * @tc.desic：Empty_Search_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Search_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Search")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Search" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Search" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_BackgroundColor_2600
     * @tc.name： Test_EmptyAttrs_Slider_BackgroundColor_2600
     * @tc.desic：Empty_Slider_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Slider_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Slider")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Slider" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Slider" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_BackgroundColor_2700
     * @tc.name： Test_EmptyAttrs_Stepper_BackgroundColor_2700
     * @tc.desic：Empty_Stepper_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Stepper_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Stepper")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Stepper" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Stepper" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_BackgroundColor_2800
     * @tc.name： Test_EmptyAttrs_StepperItem_BackgroundColor_2800
     * @tc.desic：Empty_StepperItem_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_StepperItem_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd StepperItem")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"StepperItem" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_BackgroundColor_2900
     * @tc.name： Test_EmptyAttrs_Text_BackgroundColor_2900
     * @tc.desic：Empty_Text_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Text_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Text")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Text" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Text" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_BackgroundColor_3000
     * @tc.name： Test_EmptyAttrs_TextArea_BackgroundColor_3000
     * @tc.desic：Empty_TextArea_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_TextArea_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd TextArea")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"TextArea" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["TextArea" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_BackgroundColor_3100
     * @tc.name： Test_EmptyAttrs_TextClock_BackgroundColor_3100
     * @tc.desic：Empty_TextClock_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_TextClock_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd TextClock")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"TextClock" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["TextClock" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_BackgroundColor_3200
     * @tc.name： Test_EmptyAttrs_TextInput_BackgroundColor_3200
     * @tc.desic：Empty_TextInput_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_TextInput_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd TextInput")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"TextInput" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["TextInput" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_BackgroundColor_3300
     * @tc.name： Test_EmptyAttrs_TextPicker_BackgroundColor_3300
     * @tc.desic：Empty_TextPicker_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_TextPicker_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd TextPicker")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"TextPicker" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_BackgroundColor_3400
     * @tc.name： Test_EmptyAttrs_TextTimer_BackgroundColor_3400
     * @tc.desic：Empty_TextTimer_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_TextTimer_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd TextTimer")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"TextTimer" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_BackgroundColor_3600
     * @tc.name： Test_EmptyAttrs_Web_BackgroundColor_3600
     * @tc.desic：Empty_Web_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Web_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Web")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Web" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Web" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_BackgroundColor_3800
     * @tc.name： Test_EmptyAttrs_Badge_BackgroundColor_3800
     * @tc.desic：Empty_Badge_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Badge_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Badge")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Badge" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Badge" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_BackgroundColor_3900
     * @tc.name： Test_EmptyAttrs_Column_BackgroundColor_3900
     * @tc.desic：Empty_Column_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Column_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Column")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Column" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Column" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_BackgroundColor_4000
     * @tc.name： Test_EmptyAttrs_Grid_BackgroundColor_4000
     * @tc.desic：Empty_Grid_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Grid_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Grid")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Grid" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Grid" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_BackgroundColor_4100
     * @tc.name： Test_EmptyAttrs_GridItem_BackgroundColor_4100
     * @tc.desic：Empty_GridItem_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_GridItem_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd GridItem")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"GridItem" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["GridItem" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_BackgroundColor_4200
     * @tc.name： Test_EmptyAttrs_GridRow_BackgroundColor_4200
     * @tc.desic：Empty_GridRow_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_GridRow_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd GridRow")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"GridRow" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["GridRow" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_BackgroundColor_4300
     * @tc.name： Test_EmptyAttrs_GridCol_BackgroundColor_4300
     * @tc.desic：Empty_GridCol_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_GridCol_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd GridCol")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"GridCol" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["GridCol" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_BackgroundColor_4400
     * @tc.name： Test_EmptyAttrs_Flex_BackgroundColor_4400
     * @tc.desic：Empty_Flex_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Flex_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Flex")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Flex" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Flex" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_BackgroundColor_4500
     * @tc.name： Test_EmptyAttrs_List_BackgroundColor_4500
     * @tc.desic：Empty_List_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_List_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd List")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"List" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["List" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_BackgroundColor_4600
     * @tc.name： Test_EmptyAttrs_ListItem_BackgroundColor_4600
     * @tc.desic：Empty_ListItem_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_ListItem_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd ListItem")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"ListItem" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["ListItem" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_BackgroundColor_4700
     * @tc.name： Test_EmptyAttrs_ListItemGroup_BackgroundColor_4700
     * @tc.desic：Empty_ListItemGroup_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_ListItemGroup_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"ListItemGroup" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_BackgroundColor_4900
     * @tc.name： Test_EmptyAttrs_RelativeContainer_BackgroundColor_4900
     * @tc.desic：Empty_RelativeContainer_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_RelativeContainer_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"RelativeContainer" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_BackgroundColor_5000
     * @tc.name： Test_EmptyAttrs_Row_BackgroundColor_5000
     * @tc.desic：Empty_Row_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Row_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Row")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Row" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Row" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_BackgroundColor_5100
     * @tc.name： Test_EmptyAttrs_Scroll_BackgroundColor_5100
     * @tc.desic：Empty_Scroll_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Scroll_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Scroll")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Scroll" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Scroll" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_BackgroundColor_5200
     * @tc.name： Test_EmptyAttrs_Stack_BackgroundColor_5200
     * @tc.desic：Empty_Stack_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Stack_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Stack")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Stack" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Stack" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_BackgroundColor_5300
     * @tc.name： Test_EmptyAttrs_Swiper_BackgroundColor_5300
     * @tc.desic：Empty_Swiper_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Swiper_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Swiper")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Swiper" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Swiper" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_BackgroundColor_5400
     * @tc.name： Test_EmptyAttrs_Tabs_BackgroundColor_5400
     * @tc.desic：Empty_Tabs_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Tabs_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Tabs")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Tabs" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Tabs" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_BackgroundColor_5500
     * @tc.name： Test_EmptyAttrs_TabContent_BackgroundColor_5500
     * @tc.desic：Empty_TabContent_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_TabContent_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd TabContent")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"TabContent" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["TabContent" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_BackgroundColor_5600
     * @tc.name： Test_EmptyAttrs_Circle_BackgroundColor_5600
     * @tc.desic：Empty_Circle_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Circle_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Circle")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Circle" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Circle" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_BackgroundColor_5700
     * @tc.name： Test_EmptyAttrs_Line_BackgroundColor_5700
     * @tc.desic：Empty_Line_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Line_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Line")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Line" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Line" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_BackgroundColor_5800
     * @tc.name： Test_EmptyAttrs_Rect_BackgroundColor_5800
     * @tc.desic：Empty_Rect_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Rect_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Rect")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Rect" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Rect" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_BackgroundColor_5900
     * @tc.name： Test_EmptyAttrs_Shape_BackgroundColor_5900
     * @tc.desic：Empty_Shape_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Shape_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Shape")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Shape" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Shape" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_BackgroundColor_6100
     * @tc.name： Test_EmptyAttrs_Path_BackgroundColor_6100
     * @tc.desic：Empty_Path_BackgroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundColor_Path_6100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor: FindEnd Path")
        sleepFor(1.second)
        for (BackgroundColor_Prop in BackgroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor_Prop: ${"Path" + BackgroundColor_Prop[0]}")
            let viewPort = getInspector()["Path" + BackgroundColor_Prop[0], "backgroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundColor_Prop[2]}")
            @Expect(viewPort, BackgroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
