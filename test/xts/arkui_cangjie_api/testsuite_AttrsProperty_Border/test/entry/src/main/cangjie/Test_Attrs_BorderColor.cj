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
class Test_EmptyAttrs_BorderColor {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("BorderColor")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_BorderColor_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_BorderColor_0100
     * @tc.desic：Empty_AlphabetIndexer_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"AlphabetIndexer" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_BorderColor_0200
     * @tc.name： Test_EmptyAttrs_Blank_BorderColor_0200
     * @tc.desic：Empty_Blank_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Blank")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Blank" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Blank" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_BorderColor_0300
     * @tc.name： Test_EmptyAttrs_Button_BorderColor_0300
     * @tc.desic：Empty_Button_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Button")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Button" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Button" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_BorderColor_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_BorderColor_0400
     * @tc.desic：Empty_Checkbox_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Checkbox")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Checkbox" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_BorderColor_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_BorderColor_0500
     * @tc.desic：Empty_CheckboxGroup_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"CheckboxGroup" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_BorderColor_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_BorderColor_0700
     * @tc.desic：Empty_DataPanel_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd DataPanel")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"DataPanel" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_BorderColor_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_BorderColor_0800
     * @tc.desic：Empty_DatePicker_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd DatePicker")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"DatePicker" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_BorderColor_0900
     * @tc.name： Test_EmptyAttrs_Divider_BorderColor_0900
     * @tc.desic：Empty_Divider_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Divider")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Divider" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Divider" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_BorderColor_1000
     * @tc.name： Test_EmptyAttrs_Gauge_BorderColor_1000
     * @tc.desic：Empty_Gauge_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Gauge")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Gauge" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Gauge" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_BorderColor_1100
     * @tc.name： Test_EmptyAttrs_Image_BorderColor_1100
     * @tc.desic：Empty_Image_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Image")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Image" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Image" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_BorderColor_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_BorderColor_1200
     * @tc.desic：Empty_ImageSpan_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd ImageSpan")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"ImageSpan" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_BorderColor_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_BorderColor_1300
     * @tc.desic：Empty_LoadingProgress_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"LoadingProgress" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_BorderColor_1400
     * @tc.name： Test_EmptyAttrs_Menu_BorderColor_1400
     * @tc.desic：Empty_Menu_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Menu")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Menu" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Menu" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_BorderColor_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_BorderColor_1500
     * @tc.desic：Empty_MenuItem_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd MenuItem")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"MenuItem" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_BorderColor_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_BorderColor_1600
     * @tc.desic：Empty_MenuItemGroup_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"MenuItemGroup" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_BorderColor_1700
     * @tc.name： Test_EmptyAttrs_Progress_BorderColor_1700
     * @tc.desic：Empty_Progress_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Progress")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Progress" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Progress" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_BorderColor_1800
     * @tc.name： Test_EmptyAttrs_QRCode_BorderColor_1800
     * @tc.desic：Empty_QRCode_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd QRCode")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"QRCode" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["QRCode" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_BorderColor_1900
     * @tc.name： Test_EmptyAttrs_Radio_BorderColor_1900
     * @tc.desic：Empty_Radio_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Radio")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Radio" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Radio" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_BorderColor_2000
     * @tc.name： Test_EmptyAttrs_Rating_BorderColor_2000
     * @tc.desic：Empty_Rating_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Rating")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Rating" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Rating" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_BorderColor_2100
     * @tc.name： Test_EmptyAttrs_Refresh_BorderColor_2100
     * @tc.desic：Empty_Refresh_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Refresh")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Refresh" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Refresh" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_BorderColor_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_BorderColor_2200
     * @tc.desic：Empty_RichEditor_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd RichEditor")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"RichEditor" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_BorderColor_2300
     * @tc.name： Test_EmptyAttrs_RichText_BorderColor_2300
     * @tc.desic：Empty_RichText_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd RichText")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"RichText" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["RichText" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_BorderColor_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_BorderColor_2400
     * @tc.desic：Empty_RowSplit_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd RowSplit")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"RowSplit" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_BorderColor_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_BorderColor_2500
     * @tc.desic：Empty_ScrollBar_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd ScrollBar")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"ScrollBar" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_BorderColor_2600
     * @tc.name： Test_EmptyAttrs_Search_BorderColor_2600
     * @tc.desic：Empty_Search_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Search")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Search" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Search" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_BorderColor_2700
     * @tc.name： Test_EmptyAttrs_Slider_BorderColor_2700
     * @tc.desic：Empty_Slider_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Slider")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Slider" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Slider" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_BorderColor_2800
     * @tc.name： Test_EmptyAttrs_Stepper_BorderColor_2800
     * @tc.desic：Empty_Stepper_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Stepper")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Stepper" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Stepper" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_BorderColor_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_BorderColor_2900
     * @tc.desic：Empty_StepperItem_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd StepperItem")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"StepperItem" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_BorderColor_3000
     * @tc.name： Test_EmptyAttrs_Text_BorderColor_3000
     * @tc.desic：Empty_Text_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Text")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Text" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Text" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_BorderColor_3100
     * @tc.name： Test_EmptyAttrs_TextArea_BorderColor_3100
     * @tc.desic：Empty_TextArea_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd TextArea")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"TextArea" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["TextArea" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_BorderColor_3200
     * @tc.name： Test_EmptyAttrs_TextClock_BorderColor_3200
     * @tc.desic：Empty_TextClock_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd TextClock")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"TextClock" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["TextClock" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_BorderColor_3300
     * @tc.name： Test_EmptyAttrs_TextInput_BorderColor_3300
     * @tc.desic：Empty_TextInput_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd TextInput")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"TextInput" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["TextInput" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_BorderColor_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_BorderColor_3400
     * @tc.desic：Empty_TextPicker_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd TextPicker")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"TextPicker" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_BorderColor_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_BorderColor_3500
     * @tc.desic：Empty_TextTimer_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd TextTimer")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"TextTimer" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_BorderColor_3600
     * @tc.name： Test_EmptyAttrs_Toggle_BorderColor_3600
     * @tc.desic：Empty_Toggle_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Toggle")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Toggle" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Toggle" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_BorderColor_3700
     * @tc.name： Test_EmptyAttrs_Web_BorderColor_3700
     * @tc.desic：Empty_Web_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Web")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Web" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Web" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_BorderColor_3800
     * @tc.name： Test_EmptyAttrs_Select_BorderColor_3800
     * @tc.desic：Empty_Select_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Select")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Select" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Select" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_BorderColor_3900
     * @tc.name： Test_EmptyAttrs_Badge_BorderColor_3900
     * @tc.desic：Empty_Badge_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Badge")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Badge" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Badge" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_BorderColor_4000
     * @tc.name： Test_EmptyAttrs_Column_BorderColor_4000
     * @tc.desic：Empty_Column_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Column")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Column" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Column" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_BorderColor_4100
     * @tc.name： Test_EmptyAttrs_Grid_BorderColor_4100
     * @tc.desic：Empty_Grid_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Grid")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Grid" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Grid" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_BorderColor_4200
     * @tc.name： Test_EmptyAttrs_GridItem_BorderColor_4200
     * @tc.desic：Empty_GridItem_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd GridItem")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"GridItem" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["GridItem" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_BorderColor_4300
     * @tc.name： Test_EmptyAttrs_GridRow_BorderColor_4300
     * @tc.desic：Empty_GridRow_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd GridRow")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"GridRow" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["GridRow" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_BorderColor_4400
     * @tc.name： Test_EmptyAttrs_GridCol_BorderColor_4400
     * @tc.desic：Empty_GridCol_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd GridCol")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"GridCol" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["GridCol" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_BorderColor_4500
     * @tc.name： Test_EmptyAttrs_Flex_BorderColor_4500
     * @tc.desic：Empty_Flex_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Flex")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Flex" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Flex" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_BorderColor_4600
     * @tc.name： Test_EmptyAttrs_List_BorderColor_4600
     * @tc.desic：Empty_List_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd List")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"List" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["List" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_BorderColor_4700
     * @tc.name： Test_EmptyAttrs_ListItem_BorderColor_4700
     * @tc.desic：Empty_ListItem_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd ListItem")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"ListItem" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["ListItem" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_BorderColor_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_BorderColor_4800
     * @tc.desic：Empty_ListItemGroup_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"ListItemGroup" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_BorderColor_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_BorderColor_5000
     * @tc.desic：Empty_RelativeContainer_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"RelativeContainer" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_BorderColor_5100
     * @tc.name： Test_EmptyAttrs_Row_BorderColor_5100
     * @tc.desic：Empty_Row_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Row")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Row" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Row" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_BorderColor_5200
     * @tc.name： Test_EmptyAttrs_Scroll_BorderColor_5200
     * @tc.desic：Empty_Scroll_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Scroll")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Scroll" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Scroll" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_BorderColor_5300
     * @tc.name： Test_EmptyAttrs_Stack_BorderColor_5300
     * @tc.desic：Empty_Stack_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Stack")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Stack" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Stack" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_BorderColor_5400
     * @tc.name： Test_EmptyAttrs_Swiper_BorderColor_5400
     * @tc.desic：Empty_Swiper_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Swiper")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Swiper" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Swiper" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_BorderColor_5500
     * @tc.name： Test_EmptyAttrs_Tabs_BorderColor_5500
     * @tc.desic：Empty_Tabs_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Tabs")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Tabs" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Tabs" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_BorderColor_5600
     * @tc.name： Test_EmptyAttrs_TabContent_BorderColor_5600
     * @tc.desic：Empty_TabContent_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd TabContent")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"TabContent" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["TabContent" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_BorderColor_5700
     * @tc.name： Test_EmptyAttrs_Circle_BorderColor_5700
     * @tc.desic：Empty_Circle_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Circle")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Circle" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Circle" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_BorderColor_5800
     * @tc.name： Test_EmptyAttrs_Line_BorderColor_5800
     * @tc.desic：Empty_Line_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Line")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Line" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Line" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_BorderColor_5900
     * @tc.name： Test_EmptyAttrs_Rect_BorderColor_5900
     * @tc.desic：Empty_Rect_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Rect")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Rect" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Rect" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_BorderColor_6000
     * @tc.name： Test_EmptyAttrs_Shape_BorderColor_6000
     * @tc.desic：Empty_Shape_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Shape")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Shape" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Shape" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_BorderColor_6200
     * @tc.name： Test_EmptyAttrs_Path_BorderColor_6200
     * @tc.desic：Empty_Path_BorderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderColor_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor: FindEnd Path")
        sleepFor(1.second)
        for (BorderColor_Prop in BorderColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor_Prop: ${"Path" + BorderColor_Prop[0]}")
            let viewPort = getInspector()["Path" + BorderColor_Prop[0], "borderColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderColor_Prop[2]}")
            @Expect(viewPort, BorderColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
