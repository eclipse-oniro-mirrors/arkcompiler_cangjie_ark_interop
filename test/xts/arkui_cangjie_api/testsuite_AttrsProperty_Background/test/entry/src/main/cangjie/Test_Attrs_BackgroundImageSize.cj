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
class Test_EmptyAttrs_BackgroundImageSize {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("BackgroundImageSize")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_BackgroundImageSize_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_BackgroundImageSize_0100
     * @tc.desic：Empty_AlphabetIndexer_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"AlphabetIndexer" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_BackgroundImageSize_0200
     * @tc.name： Test_EmptyAttrs_Blank_BackgroundImageSize_0200
     * @tc.desic：Empty_Blank_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Blank")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Blank" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Blank" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_BackgroundImageSize_0300
     * @tc.name： Test_EmptyAttrs_Button_BackgroundImageSize_0300
     * @tc.desic：Empty_Button_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Button")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Button" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Button" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_BackgroundImageSize_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_BackgroundImageSize_0400
     * @tc.desic：Empty_Checkbox_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Checkbox")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Checkbox" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_BackgroundImageSize_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_BackgroundImageSize_0500
     * @tc.desic：Empty_CheckboxGroup_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"CheckboxGroup" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_BackgroundImageSize_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_BackgroundImageSize_0700
     * @tc.desic：Empty_DataPanel_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd DataPanel")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"DataPanel" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_BackgroundImageSize_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_BackgroundImageSize_0800
     * @tc.desic：Empty_DatePicker_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd DatePicker")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"DatePicker" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_BackgroundImageSize_0900
     * @tc.name： Test_EmptyAttrs_Divider_BackgroundImageSize_0900
     * @tc.desic：Empty_Divider_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Divider")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Divider" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Divider" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_BackgroundImageSize_1000
     * @tc.name： Test_EmptyAttrs_Gauge_BackgroundImageSize_1000
     * @tc.desic：Empty_Gauge_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Gauge")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Gauge" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Gauge" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_BackgroundImageSize_1100
     * @tc.name： Test_EmptyAttrs_Image_BackgroundImageSize_1100
     * @tc.desic：Empty_Image_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Image")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Image" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Image" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_BackgroundImageSize_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_BackgroundImageSize_1200
     * @tc.desic：Empty_ImageSpan_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd ImageSpan")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"ImageSpan" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_BackgroundImageSize_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_BackgroundImageSize_1300
     * @tc.desic：Empty_LoadingProgress_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"LoadingProgress" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_BackgroundImageSize_1400
     * @tc.name： Test_EmptyAttrs_Menu_BackgroundImageSize_1400
     * @tc.desic：Empty_Menu_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Menu")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Menu" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Menu" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_BackgroundImageSize_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_BackgroundImageSize_1500
     * @tc.desic：Empty_MenuItem_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd MenuItem")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"MenuItem" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_BackgroundImageSize_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_BackgroundImageSize_1600
     * @tc.desic：Empty_MenuItemGroup_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"MenuItemGroup" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_BackgroundImageSize_1700
     * @tc.name： Test_EmptyAttrs_Progress_BackgroundImageSize_1700
     * @tc.desic：Empty_Progress_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Progress")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Progress" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Progress" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_BackgroundImageSize_1800
     * @tc.name： Test_EmptyAttrs_QRCode_BackgroundImageSize_1800
     * @tc.desic：Empty_QRCode_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd QRCode")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"QRCode" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["QRCode" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_BackgroundImageSize_1900
     * @tc.name： Test_EmptyAttrs_Radio_BackgroundImageSize_1900
     * @tc.desic：Empty_Radio_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Radio")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Radio" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Radio" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_BackgroundImageSize_2000
     * @tc.name： Test_EmptyAttrs_Rating_BackgroundImageSize_2000
     * @tc.desic：Empty_Rating_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Rating")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Rating" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Rating" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_BackgroundImageSize_2100
     * @tc.name： Test_EmptyAttrs_Refresh_BackgroundImageSize_2100
     * @tc.desic：Empty_Refresh_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Refresh")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Refresh" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Refresh" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_BackgroundImageSize_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_BackgroundImageSize_2200
     * @tc.desic：Empty_RichEditor_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd RichEditor")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"RichEditor" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_BackgroundImageSize_2300
     * @tc.name： Test_EmptyAttrs_RowSplit_BackgroundImageSize_2300
     * @tc.desic：Empty_RowSplit_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_RowSplit_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd RowSplit")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"RowSplit" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_BackgroundImageSize_2400
     * @tc.name： Test_EmptyAttrs_ScrollBar_BackgroundImageSize_2400
     * @tc.desic：Empty_ScrollBar_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_ScrollBar_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd ScrollBar")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"ScrollBar" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_BackgroundImageSize_2500
     * @tc.name： Test_EmptyAttrs_Search_BackgroundImageSize_2500
     * @tc.desic：Empty_Search_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Search_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Search")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Search" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Search" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_BackgroundImageSize_2600
     * @tc.name： Test_EmptyAttrs_Slider_BackgroundImageSize_2600
     * @tc.desic：Empty_Slider_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Slider_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Slider")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Slider" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Slider" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_BackgroundImageSize_2700
     * @tc.name： Test_EmptyAttrs_Stepper_BackgroundImageSize_2700
     * @tc.desic：Empty_Stepper_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Stepper_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Stepper")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Stepper" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Stepper" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_BackgroundImageSize_2800
     * @tc.name： Test_EmptyAttrs_StepperItem_BackgroundImageSize_2800
     * @tc.desic：Empty_StepperItem_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_StepperItem_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd StepperItem")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"StepperItem" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_BackgroundImageSize_2900
     * @tc.name： Test_EmptyAttrs_Text_BackgroundImageSize_2900
     * @tc.desic：Empty_Text_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Text_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Text")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Text" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Text" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_BackgroundImageSize_3000
     * @tc.name： Test_EmptyAttrs_TextArea_BackgroundImageSize_3000
     * @tc.desic：Empty_TextArea_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_TextArea_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd TextArea")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"TextArea" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["TextArea" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_BackgroundImageSize_3100
     * @tc.name： Test_EmptyAttrs_TextClock_BackgroundImageSize_3100
     * @tc.desic：Empty_TextClock_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_TextClock_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd TextClock")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"TextClock" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["TextClock" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_BackgroundImageSize_3200
     * @tc.name： Test_EmptyAttrs_TextInput_BackgroundImageSize_3200
     * @tc.desic：Empty_TextInput_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_TextInput_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd TextInput")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"TextInput" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["TextInput" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_BackgroundImageSize_3300
     * @tc.name： Test_EmptyAttrs_TextPicker_BackgroundImageSize_3300
     * @tc.desic：Empty_TextPicker_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_TextPicker_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd TextPicker")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"TextPicker" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_BackgroundImageSize_3400
     * @tc.name： Test_EmptyAttrs_TextTimer_BackgroundImageSize_3400
     * @tc.desic：Empty_TextTimer_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_TextTimer_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd TextTimer")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"TextTimer" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_BackgroundImageSize_3500
     * @tc.name： Test_EmptyAttrs_Toggle_BackgroundImageSize_3500
     * @tc.desic：Empty_Toggle_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Toggle_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Toggle")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Toggle" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Toggle" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_BackgroundImageSize_3600
     * @tc.name： Test_EmptyAttrs_Web_BackgroundImageSize_3600
     * @tc.desic：Empty_Web_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Web_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Web")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Web" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Web" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_BackgroundImageSize_3700
     * @tc.name： Test_EmptyAttrs_Select_BackgroundImageSize_3700
     * @tc.desic：Empty_Select_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Select_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Select")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Select" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Select" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_BackgroundImageSize_3800
     * @tc.name： Test_EmptyAttrs_Badge_BackgroundImageSize_3800
     * @tc.desic：Empty_Badge_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Badge_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Badge")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Badge" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Badge" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_BackgroundImageSize_3900
     * @tc.name： Test_EmptyAttrs_Column_BackgroundImageSize_3900
     * @tc.desic：Empty_Column_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Column_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Column")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Column" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Column" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_BackgroundImageSize_4000
     * @tc.name： Test_EmptyAttrs_Grid_BackgroundImageSize_4000
     * @tc.desic：Empty_Grid_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Grid_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Grid")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Grid" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Grid" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_BackgroundImageSize_4100
     * @tc.name： Test_EmptyAttrs_GridItem_BackgroundImageSize_4100
     * @tc.desic：Empty_GridItem_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_GridItem_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd GridItem")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"GridItem" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["GridItem" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_BackgroundImageSize_4200
     * @tc.name： Test_EmptyAttrs_GridRow_BackgroundImageSize_4200
     * @tc.desic：Empty_GridRow_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_GridRow_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd GridRow")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"GridRow" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["GridRow" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_BackgroundImageSize_4300
     * @tc.name： Test_EmptyAttrs_GridCol_BackgroundImageSize_4300
     * @tc.desic：Empty_GridCol_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_GridCol_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd GridCol")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"GridCol" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["GridCol" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_BackgroundImageSize_4400
     * @tc.name： Test_EmptyAttrs_Flex_BackgroundImageSize_4400
     * @tc.desic：Empty_Flex_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Flex_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Flex")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Flex" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Flex" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_BackgroundImageSize_4500
     * @tc.name： Test_EmptyAttrs_List_BackgroundImageSize_4500
     * @tc.desic：Empty_List_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_List_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd List")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"List" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["List" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_BackgroundImageSize_4600
     * @tc.name： Test_EmptyAttrs_ListItem_BackgroundImageSize_4600
     * @tc.desic：Empty_ListItem_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_ListItem_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd ListItem")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"ListItem" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["ListItem" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_BackgroundImageSize_4700
     * @tc.name： Test_EmptyAttrs_ListItemGroup_BackgroundImageSize_4700
     * @tc.desic：Empty_ListItemGroup_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_ListItemGroup_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"ListItemGroup" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_BackgroundImageSize_4900
     * @tc.name： Test_EmptyAttrs_RelativeContainer_BackgroundImageSize_4900
     * @tc.desic：Empty_RelativeContainer_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_RelativeContainer_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"RelativeContainer" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_BackgroundImageSize_5000
     * @tc.name： Test_EmptyAttrs_Row_BackgroundImageSize_5000
     * @tc.desic：Empty_Row_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Row_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Row")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Row" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Row" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_BackgroundImageSize_5100
     * @tc.name： Test_EmptyAttrs_Scroll_BackgroundImageSize_5100
     * @tc.desic：Empty_Scroll_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Scroll_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Scroll")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Scroll" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Scroll" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_BackgroundImageSize_5200
     * @tc.name： Test_EmptyAttrs_Stack_BackgroundImageSize_5200
     * @tc.desic：Empty_Stack_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Stack_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Stack")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Stack" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Stack" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_BackgroundImageSize_5300
     * @tc.name： Test_EmptyAttrs_Swiper_BackgroundImageSize_5300
     * @tc.desic：Empty_Swiper_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Swiper_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Swiper")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Swiper" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Swiper" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_BackgroundImageSize_5400
     * @tc.name： Test_EmptyAttrs_Tabs_BackgroundImageSize_5400
     * @tc.desic：Empty_Tabs_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Tabs_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Tabs")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Tabs" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Tabs" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_BackgroundImageSize_5500
     * @tc.name： Test_EmptyAttrs_TabContent_BackgroundImageSize_5500
     * @tc.desic：Empty_TabContent_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_TabContent_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd TabContent")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"TabContent" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["TabContent" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_BackgroundImageSize_5600
     * @tc.name： Test_EmptyAttrs_Circle_BackgroundImageSize_5600
     * @tc.desic：Empty_Circle_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Circle_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Circle")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Circle" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Circle" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_BackgroundImageSize_5700
     * @tc.name： Test_EmptyAttrs_Line_BackgroundImageSize_5700
     * @tc.desic：Empty_Line_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Line_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Line")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Line" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Line" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_BackgroundImageSize_5800
     * @tc.name： Test_EmptyAttrs_Rect_BackgroundImageSize_5800
     * @tc.desic：Empty_Rect_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Rect_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Rect")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Rect" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Rect" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_BackgroundImageSize_5900
     * @tc.name： Test_EmptyAttrs_Shape_BackgroundImageSize_5900
     * @tc.desic：Empty_Shape_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Shape_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Shape")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Shape" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Shape" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_BackgroundImageSize_6100
     * @tc.name： Test_EmptyAttrs_Path_BackgroundImageSize_6100
     * @tc.desic：Empty_Path_BackgroundImageSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BackgroundImageSize_Path_6100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize: FindEnd Path")
        sleepFor(1.second)
        for (BackgroundImageSize_Prop in BackgroundImageSize_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize_Prop: ${"Path" + BackgroundImageSize_Prop[0]}")
            let viewPort = getInspector()["Path" + BackgroundImageSize_Prop[0], "backgroundImageSize"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImageSize_Prop[2]}")
            @Expect(viewPort, BackgroundImageSize_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImageSize:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
