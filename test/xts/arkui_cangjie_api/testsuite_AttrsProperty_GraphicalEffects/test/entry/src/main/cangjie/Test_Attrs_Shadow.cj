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
class Test_EmptyAttrs_Shadow {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Shadow")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Shadow_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Shadow_0100
     * @tc.desic：Empty_AlphabetIndexer_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"AlphabetIndexer" + Shadow_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Shadow_0200
     * @tc.name： Test_EmptyAttrs_Blank_Shadow_0200
     * @tc.desic：Empty_Blank_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Blank")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Blank" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Blank" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Shadow_0300
     * @tc.name： Test_EmptyAttrs_Button_Shadow_0300
     * @tc.desic：Empty_Button_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Button")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Button" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Button" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Shadow_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Shadow_0400
     * @tc.desic：Empty_Checkbox_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Checkbox")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Checkbox" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Shadow_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Shadow_0500
     * @tc.desic：Empty_CheckboxGroup_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"CheckboxGroup" + Shadow_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Shadow_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Shadow_0700
     * @tc.desic：Empty_DataPanel_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd DataPanel")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"DataPanel" + Shadow_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Shadow_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Shadow_0800
     * @tc.desic：Empty_DatePicker_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd DatePicker")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"DatePicker" + Shadow_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Shadow_0900
     * @tc.name： Test_EmptyAttrs_Divider_Shadow_0900
     * @tc.desic：Empty_Divider_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Divider")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Divider" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Divider" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Shadow_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Shadow_1000
     * @tc.desic：Empty_Gauge_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Gauge")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Gauge" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Gauge" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Shadow_1100
     * @tc.name： Test_EmptyAttrs_Image_Shadow_1100
     * @tc.desic：Empty_Image_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Image")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Image" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Image" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Shadow_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Shadow_1200
     * @tc.desic：Empty_ImageSpan_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"ImageSpan" + Shadow_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Shadow_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Shadow_1300
     * @tc.desic：Empty_LoadingProgress_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"LoadingProgress" + Shadow_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

  

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Shadow_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Shadow_1500
     * @tc.desic：Empty_MenuItem_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd MenuItem")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"MenuItem" + Shadow_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Shadow_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Shadow_1600
     * @tc.desic：Empty_MenuItemGroup_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"MenuItemGroup" + Shadow_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Shadow_1700
     * @tc.name： Test_EmptyAttrs_Progress_Shadow_1700
     * @tc.desic：Empty_Progress_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Progress")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Progress" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Progress" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Shadow_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Shadow_1800
     * @tc.desic：Empty_QRCode_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd QRCode")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"QRCode" + Shadow_Prop[0]}")
            let viewPort = getInspector()["QRCode" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Shadow_1900
     * @tc.name： Test_EmptyAttrs_Radio_Shadow_1900
     * @tc.desic：Empty_Radio_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Radio")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Radio" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Radio" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Shadow_2000
     * @tc.name： Test_EmptyAttrs_Rating_Shadow_2000
     * @tc.desic：Empty_Rating_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Rating")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Rating" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Rating" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Shadow_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Shadow_2100
     * @tc.desic：Empty_Refresh_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Refresh")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Refresh" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Refresh" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Shadow_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Shadow_2200
     * @tc.desic：Empty_RichEditor_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd RichEditor")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"RichEditor" + Shadow_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Shadow_2300
     * @tc.name： Test_EmptyAttrs_RichText_Shadow_2300
     * @tc.desic：Empty_RichText_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd RichText")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"RichText" + Shadow_Prop[0]}")
            let viewPort = getInspector()["RichText" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Shadow_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Shadow_2400
     * @tc.desic：Empty_RowSplit_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd RowSplit")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"RowSplit" + Shadow_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Shadow_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Shadow_2500
     * @tc.desic：Empty_ScrollBar_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd ScrollBar")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"ScrollBar" + Shadow_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Shadow_2600
     * @tc.name： Test_EmptyAttrs_Search_Shadow_2600
     * @tc.desic：Empty_Search_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Search")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Search" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Search" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Shadow_2700
     * @tc.name： Test_EmptyAttrs_Slider_Shadow_2700
     * @tc.desic：Empty_Slider_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Slider")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Slider" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Slider" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Shadow_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Shadow_2800
     * @tc.desic：Empty_Stepper_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Stepper")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Stepper" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Stepper" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Shadow_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Shadow_2900
     * @tc.desic：Empty_StepperItem_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd StepperItem")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"StepperItem" + Shadow_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Shadow_3000
     * @tc.name： Test_EmptyAttrs_Text_Shadow_3000
     * @tc.desic：Empty_Text_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Text")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Text" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Text" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Shadow_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Shadow_3100
     * @tc.desic：Empty_TextArea_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd TextArea")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"TextArea" + Shadow_Prop[0]}")
            let viewPort = getInspector()["TextArea" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Shadow_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Shadow_3200
     * @tc.desic：Empty_TextClock_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd TextClock")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"TextClock" + Shadow_Prop[0]}")
            let viewPort = getInspector()["TextClock" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Shadow_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Shadow_3300
     * @tc.desic：Empty_TextInput_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd TextInput")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"TextInput" + Shadow_Prop[0]}")
            let viewPort = getInspector()["TextInput" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Shadow_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Shadow_3400
     * @tc.desic：Empty_TextPicker_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd TextPicker")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"TextPicker" + Shadow_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Shadow_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Shadow_3500
     * @tc.desic：Empty_TextTimer_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd TextTimer")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"TextTimer" + Shadow_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Shadow_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Shadow_3600
     * @tc.desic：Empty_Toggle_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Toggle")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Toggle" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Toggle" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Shadow_3700
     * @tc.name： Test_EmptyAttrs_Web_Shadow_3700
     * @tc.desic：Empty_Web_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Web")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Web" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Web" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Shadow_3800
     * @tc.name： Test_EmptyAttrs_Select_Shadow_3800
     * @tc.desic：Empty_Select_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Select")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Select" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Select" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Shadow_3900
     * @tc.name： Test_EmptyAttrs_Badge_Shadow_3900
     * @tc.desic：Empty_Badge_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Badge")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Badge" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Badge" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Shadow_4000
     * @tc.name： Test_EmptyAttrs_Column_Shadow_4000
     * @tc.desic：Empty_Column_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Column")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Column" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Column" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Shadow_4100
     * @tc.name： Test_EmptyAttrs_Grid_Shadow_4100
     * @tc.desic：Empty_Grid_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Grid")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Grid" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Grid" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Shadow_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Shadow_4200
     * @tc.desic：Empty_GridItem_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd GridItem")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"GridItem" + Shadow_Prop[0]}")
            let viewPort = getInspector()["GridItem" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Shadow_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Shadow_4300
     * @tc.desic：Empty_GridRow_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd GridRow")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"GridRow" + Shadow_Prop[0]}")
            let viewPort = getInspector()["GridRow" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Shadow_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Shadow_4400
     * @tc.desic：Empty_GridCol_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd GridCol")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"GridCol" + Shadow_Prop[0]}")
            let viewPort = getInspector()["GridCol" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Shadow_4500
     * @tc.name： Test_EmptyAttrs_Flex_Shadow_4500
     * @tc.desic：Empty_Flex_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Flex")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Flex" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Flex" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Shadow_4600
     * @tc.name： Test_EmptyAttrs_List_Shadow_4600
     * @tc.desic：Empty_List_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd List")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"List" + Shadow_Prop[0]}")
            let viewPort = getInspector()["List" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Shadow_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Shadow_4700
     * @tc.desic：Empty_ListItem_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd ListItem")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"ListItem" + Shadow_Prop[0]}")
            let viewPort = getInspector()["ListItem" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Shadow_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Shadow_4800
     * @tc.desic：Empty_ListItemGroup_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"ListItemGroup" + Shadow_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Shadow_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Shadow_5000
     * @tc.desic：Empty_RelativeContainer_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"RelativeContainer" + Shadow_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Shadow_5100
     * @tc.name： Test_EmptyAttrs_Row_Shadow_5100
     * @tc.desic：Empty_Row_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Row")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Row" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Row" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Shadow_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Shadow_5200
     * @tc.desic：Empty_Scroll_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Scroll")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Scroll" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Scroll" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Shadow_5300
     * @tc.name： Test_EmptyAttrs_Stack_Shadow_5300
     * @tc.desic：Empty_Stack_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Stack")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Stack" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Stack" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Shadow_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Shadow_5400
     * @tc.desic：Empty_Swiper_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Swiper")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Swiper" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Swiper" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Shadow_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Shadow_5500
     * @tc.desic：Empty_Tabs_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Tabs")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Tabs" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Tabs" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Shadow_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Shadow_5600
     * @tc.desic：Empty_TabContent_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd TabContent")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"TabContent" + Shadow_Prop[0]}")
            let viewPort = getInspector()["TabContent" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Shadow_5700
     * @tc.name： Test_EmptyAttrs_Circle_Shadow_5700
     * @tc.desic：Empty_Circle_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Circle")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Circle" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Circle" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Shadow_5800
     * @tc.name： Test_EmptyAttrs_Line_Shadow_5800
     * @tc.desic：Empty_Line_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Line")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Line" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Line" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Shadow_5900
     * @tc.name： Test_EmptyAttrs_Rect_Shadow_5900
     * @tc.desic：Empty_Rect_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Rect")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Rect" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Rect" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Shadow_6000
     * @tc.name： Test_EmptyAttrs_Shape_Shadow_6000
     * @tc.desic：Empty_Shape_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Shape")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Shape" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Shape" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Shadow_6200
     * @tc.name： Test_EmptyAttrs_Path_Shadow_6200
     * @tc.desic：Empty_Path_Shadow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Shadow_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow: FindEnd Path")
        sleepFor(1.second)
        for (Shadow_Prop in Shadow_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckShadow_Prop: ${"Path" + Shadow_Prop[0]}")
            let viewPort = getInspector()["Path" + Shadow_Prop[0], "shadow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Shadow_Prop[2]}")
            @Expect(viewPort, Shadow_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckShadow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
