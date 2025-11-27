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
class Test_EmptyAttrs_ColorBlend {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("ColorBlend")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_ColorBlend_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_ColorBlend_0100
     * @tc.desic：Empty_AlphabetIndexer_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"AlphabetIndexer" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_ColorBlend_0200
     * @tc.name： Test_EmptyAttrs_Blank_ColorBlend_0200
     * @tc.desic：Empty_Blank_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Blank")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Blank" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Blank" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_ColorBlend_0300
     * @tc.name： Test_EmptyAttrs_Button_ColorBlend_0300
     * @tc.desic：Empty_Button_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Button")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Button" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Button" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_ColorBlend_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_ColorBlend_0400
     * @tc.desic：Empty_Checkbox_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Checkbox")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Checkbox" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_ColorBlend_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_ColorBlend_0500
     * @tc.desic：Empty_CheckboxGroup_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"CheckboxGroup" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_ColorBlend_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_ColorBlend_0700
     * @tc.desic：Empty_DataPanel_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd DataPanel")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"DataPanel" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_ColorBlend_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_ColorBlend_0800
     * @tc.desic：Empty_DatePicker_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd DatePicker")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"DatePicker" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_ColorBlend_0900
     * @tc.name： Test_EmptyAttrs_Divider_ColorBlend_0900
     * @tc.desic：Empty_Divider_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Divider")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Divider" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Divider" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_ColorBlend_1000
     * @tc.name： Test_EmptyAttrs_Gauge_ColorBlend_1000
     * @tc.desic：Empty_Gauge_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Gauge")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Gauge" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Gauge" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_ColorBlend_1100
     * @tc.name： Test_EmptyAttrs_Image_ColorBlend_1100
     * @tc.desic：Empty_Image_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Image")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Image" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Image" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_ColorBlend_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_ColorBlend_1200
     * @tc.desic：Empty_ImageSpan_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd ImageSpan")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"ImageSpan" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_ColorBlend_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_ColorBlend_1300
     * @tc.desic：Empty_LoadingProgress_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"LoadingProgress" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_ColorBlend_1400
     * @tc.name： Test_EmptyAttrs_Menu_ColorBlend_1400
     * @tc.desic：Empty_Menu_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Menu")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Menu" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Menu" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_ColorBlend_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_ColorBlend_1500
     * @tc.desic：Empty_MenuItem_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd MenuItem")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"MenuItem" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_ColorBlend_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_ColorBlend_1600
     * @tc.desic：Empty_MenuItemGroup_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"MenuItemGroup" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_ColorBlend_1700
     * @tc.name： Test_EmptyAttrs_Progress_ColorBlend_1700
     * @tc.desic：Empty_Progress_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Progress")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Progress" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Progress" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_ColorBlend_1800
     * @tc.name： Test_EmptyAttrs_QRCode_ColorBlend_1800
     * @tc.desic：Empty_QRCode_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd QRCode")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"QRCode" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["QRCode" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_ColorBlend_1900
     * @tc.name： Test_EmptyAttrs_Radio_ColorBlend_1900
     * @tc.desic：Empty_Radio_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Radio")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Radio" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Radio" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_ColorBlend_2000
     * @tc.name： Test_EmptyAttrs_Rating_ColorBlend_2000
     * @tc.desic：Empty_Rating_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Rating")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Rating" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Rating" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_ColorBlend_2100
     * @tc.name： Test_EmptyAttrs_Refresh_ColorBlend_2100
     * @tc.desic：Empty_Refresh_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Refresh")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Refresh" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Refresh" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_ColorBlend_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_ColorBlend_2200
     * @tc.desic：Empty_RichEditor_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd RichEditor")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"RichEditor" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_ColorBlend_2300
     * @tc.name： Test_EmptyAttrs_RichText_ColorBlend_2300
     * @tc.desic：Empty_RichText_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd RichText")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"RichText" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["RichText" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_ColorBlend_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_ColorBlend_2400
     * @tc.desic：Empty_RowSplit_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd RowSplit")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"RowSplit" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_ColorBlend_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_ColorBlend_2500
     * @tc.desic：Empty_ScrollBar_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd ScrollBar")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"ScrollBar" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_ColorBlend_2600
     * @tc.name： Test_EmptyAttrs_Search_ColorBlend_2600
     * @tc.desic：Empty_Search_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Search")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Search" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Search" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_ColorBlend_2700
     * @tc.name： Test_EmptyAttrs_Slider_ColorBlend_2700
     * @tc.desic：Empty_Slider_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Slider")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Slider" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Slider" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_ColorBlend_2800
     * @tc.name： Test_EmptyAttrs_Stepper_ColorBlend_2800
     * @tc.desic：Empty_Stepper_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Stepper")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Stepper" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Stepper" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_ColorBlend_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_ColorBlend_2900
     * @tc.desic：Empty_StepperItem_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd StepperItem")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"StepperItem" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_ColorBlend_3000
     * @tc.name： Test_EmptyAttrs_Text_ColorBlend_3000
     * @tc.desic：Empty_Text_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Text")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Text" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Text" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_ColorBlend_3100
     * @tc.name： Test_EmptyAttrs_TextArea_ColorBlend_3100
     * @tc.desic：Empty_TextArea_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd TextArea")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"TextArea" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["TextArea" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_ColorBlend_3200
     * @tc.name： Test_EmptyAttrs_TextClock_ColorBlend_3200
     * @tc.desic：Empty_TextClock_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd TextClock")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"TextClock" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["TextClock" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_ColorBlend_3300
     * @tc.name： Test_EmptyAttrs_TextInput_ColorBlend_3300
     * @tc.desic：Empty_TextInput_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd TextInput")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"TextInput" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["TextInput" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_ColorBlend_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_ColorBlend_3400
     * @tc.desic：Empty_TextPicker_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd TextPicker")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"TextPicker" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_ColorBlend_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_ColorBlend_3500
     * @tc.desic：Empty_TextTimer_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd TextTimer")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"TextTimer" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_ColorBlend_3600
     * @tc.name： Test_EmptyAttrs_Toggle_ColorBlend_3600
     * @tc.desic：Empty_Toggle_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Toggle")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Toggle" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Toggle" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_ColorBlend_3700
     * @tc.name： Test_EmptyAttrs_Web_ColorBlend_3700
     * @tc.desic：Empty_Web_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Web")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Web" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Web" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_ColorBlend_3800
     * @tc.name： Test_EmptyAttrs_Select_ColorBlend_3800
     * @tc.desic：Empty_Select_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Select")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Select" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Select" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_ColorBlend_3900
     * @tc.name： Test_EmptyAttrs_Badge_ColorBlend_3900
     * @tc.desic：Empty_Badge_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Badge")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Badge" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Badge" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_ColorBlend_4000
     * @tc.name： Test_EmptyAttrs_Column_ColorBlend_4000
     * @tc.desic：Empty_Column_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Column")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Column" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Column" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_ColorBlend_4100
     * @tc.name： Test_EmptyAttrs_Grid_ColorBlend_4100
     * @tc.desic：Empty_Grid_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Grid")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Grid" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Grid" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_ColorBlend_4200
     * @tc.name： Test_EmptyAttrs_GridItem_ColorBlend_4200
     * @tc.desic：Empty_GridItem_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd GridItem")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"GridItem" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["GridItem" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_ColorBlend_4300
     * @tc.name： Test_EmptyAttrs_GridRow_ColorBlend_4300
     * @tc.desic：Empty_GridRow_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd GridRow")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"GridRow" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["GridRow" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_ColorBlend_4400
     * @tc.name： Test_EmptyAttrs_GridCol_ColorBlend_4400
     * @tc.desic：Empty_GridCol_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd GridCol")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"GridCol" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["GridCol" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_ColorBlend_4500
     * @tc.name： Test_EmptyAttrs_Flex_ColorBlend_4500
     * @tc.desic：Empty_Flex_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Flex")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Flex" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Flex" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_ColorBlend_4600
     * @tc.name： Test_EmptyAttrs_List_ColorBlend_4600
     * @tc.desic：Empty_List_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd List")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"List" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["List" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_ColorBlend_4700
     * @tc.name： Test_EmptyAttrs_ListItem_ColorBlend_4700
     * @tc.desic：Empty_ListItem_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd ListItem")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"ListItem" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["ListItem" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_ColorBlend_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_ColorBlend_4800
     * @tc.desic：Empty_ListItemGroup_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"ListItemGroup" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_ColorBlend_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_ColorBlend_5000
     * @tc.desic：Empty_RelativeContainer_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"RelativeContainer" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_ColorBlend_5100
     * @tc.name： Test_EmptyAttrs_Row_ColorBlend_5100
     * @tc.desic：Empty_Row_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Row")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Row" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Row" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_ColorBlend_5200
     * @tc.name： Test_EmptyAttrs_Scroll_ColorBlend_5200
     * @tc.desic：Empty_Scroll_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Scroll")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Scroll" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Scroll" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_ColorBlend_5300
     * @tc.name： Test_EmptyAttrs_Stack_ColorBlend_5300
     * @tc.desic：Empty_Stack_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Stack")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Stack" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Stack" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_ColorBlend_5400
     * @tc.name： Test_EmptyAttrs_Swiper_ColorBlend_5400
     * @tc.desic：Empty_Swiper_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Swiper")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Swiper" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Swiper" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_ColorBlend_5500
     * @tc.name： Test_EmptyAttrs_Tabs_ColorBlend_5500
     * @tc.desic：Empty_Tabs_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Tabs")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Tabs" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Tabs" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_ColorBlend_5600
     * @tc.name： Test_EmptyAttrs_TabContent_ColorBlend_5600
     * @tc.desic：Empty_TabContent_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd TabContent")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"TabContent" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["TabContent" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_ColorBlend_5700
     * @tc.name： Test_EmptyAttrs_Circle_ColorBlend_5700
     * @tc.desic：Empty_Circle_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Circle")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Circle" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Circle" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_ColorBlend_5800
     * @tc.name： Test_EmptyAttrs_Line_ColorBlend_5800
     * @tc.desic：Empty_Line_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Line")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Line" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Line" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_ColorBlend_5900
     * @tc.name： Test_EmptyAttrs_Rect_ColorBlend_5900
     * @tc.desic：Empty_Rect_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Rect")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Rect" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Rect" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_ColorBlend_6000
     * @tc.name： Test_EmptyAttrs_Shape_ColorBlend_6000
     * @tc.desic：Empty_Shape_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Shape")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Shape" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Shape" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_ColorBlend_6200
     * @tc.name： Test_EmptyAttrs_Path_ColorBlend_6200
     * @tc.desic：Empty_Path_ColorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ColorBlend_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend: FindEnd Path")
        sleepFor(1.second)
        for (ColorBlend_Prop in ColorBlend_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend_Prop: ${"Path" + ColorBlend_Prop[0]}")
            let viewPort = getInspector()["Path" + ColorBlend_Prop[0], "colorBlend"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ColorBlend_Prop[2]}")
            @Expect(viewPort, ColorBlend_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckColorBlend:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
