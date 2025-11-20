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
class Test_EmptyAttrs_BorderWidth {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("BorderWidth")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_BorderWidth_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_BorderWidth_0100
     * @tc.desic：Empty_AlphabetIndexer_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"AlphabetIndexer" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_BorderWidth_0200
     * @tc.name： Test_EmptyAttrs_Blank_BorderWidth_0200
     * @tc.desic：Empty_Blank_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Blank")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Blank" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Blank" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_BorderWidth_0300
     * @tc.name： Test_EmptyAttrs_Button_BorderWidth_0300
     * @tc.desic：Empty_Button_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Button")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Button" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Button" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_BorderWidth_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_BorderWidth_0400
     * @tc.desic：Empty_Checkbox_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Checkbox")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Checkbox" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_BorderWidth_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_BorderWidth_0500
     * @tc.desic：Empty_CheckboxGroup_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"CheckboxGroup" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_BorderWidth_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_BorderWidth_0700
     * @tc.desic：Empty_DataPanel_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd DataPanel")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"DataPanel" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_BorderWidth_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_BorderWidth_0800
     * @tc.desic：Empty_DatePicker_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd DatePicker")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"DatePicker" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_BorderWidth_0900
     * @tc.name： Test_EmptyAttrs_Divider_BorderWidth_0900
     * @tc.desic：Empty_Divider_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Divider")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Divider" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Divider" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_BorderWidth_1000
     * @tc.name： Test_EmptyAttrs_Gauge_BorderWidth_1000
     * @tc.desic：Empty_Gauge_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Gauge")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Gauge" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Gauge" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_BorderWidth_1100
     * @tc.name： Test_EmptyAttrs_Image_BorderWidth_1100
     * @tc.desic：Empty_Image_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Image")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Image" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Image" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_BorderWidth_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_BorderWidth_1200
     * @tc.desic：Empty_ImageSpan_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd ImageSpan")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"ImageSpan" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_BorderWidth_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_BorderWidth_1300
     * @tc.desic：Empty_LoadingProgress_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"LoadingProgress" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_BorderWidth_1400
     * @tc.name： Test_EmptyAttrs_Menu_BorderWidth_1400
     * @tc.desic：Empty_Menu_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Menu")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Menu" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Menu" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_BorderWidth_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_BorderWidth_1500
     * @tc.desic：Empty_MenuItem_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd MenuItem")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"MenuItem" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_BorderWidth_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_BorderWidth_1600
     * @tc.desic：Empty_MenuItemGroup_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"MenuItemGroup" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_BorderWidth_1700
     * @tc.name： Test_EmptyAttrs_Progress_BorderWidth_1700
     * @tc.desic：Empty_Progress_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Progress")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Progress" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Progress" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_BorderWidth_1800
     * @tc.name： Test_EmptyAttrs_QRCode_BorderWidth_1800
     * @tc.desic：Empty_QRCode_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd QRCode")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"QRCode" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["QRCode" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_BorderWidth_1900
     * @tc.name： Test_EmptyAttrs_Radio_BorderWidth_1900
     * @tc.desic：Empty_Radio_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Radio")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Radio" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Radio" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_BorderWidth_2000
     * @tc.name： Test_EmptyAttrs_Rating_BorderWidth_2000
     * @tc.desic：Empty_Rating_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Rating")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Rating" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Rating" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_BorderWidth_2100
     * @tc.name： Test_EmptyAttrs_Refresh_BorderWidth_2100
     * @tc.desic：Empty_Refresh_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Refresh")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Refresh" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Refresh" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_BorderWidth_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_BorderWidth_2200
     * @tc.desic：Empty_RichEditor_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd RichEditor")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"RichEditor" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_BorderWidth_2300
     * @tc.name： Test_EmptyAttrs_RichText_BorderWidth_2300
     * @tc.desic：Empty_RichText_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd RichText")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"RichText" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["RichText" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_BorderWidth_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_BorderWidth_2400
     * @tc.desic：Empty_RowSplit_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd RowSplit")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"RowSplit" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_BorderWidth_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_BorderWidth_2500
     * @tc.desic：Empty_ScrollBar_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd ScrollBar")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"ScrollBar" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_BorderWidth_2600
     * @tc.name： Test_EmptyAttrs_Search_BorderWidth_2600
     * @tc.desic：Empty_Search_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Search")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Search" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Search" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_BorderWidth_2700
     * @tc.name： Test_EmptyAttrs_Slider_BorderWidth_2700
     * @tc.desic：Empty_Slider_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Slider")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Slider" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Slider" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_BorderWidth_2800
     * @tc.name： Test_EmptyAttrs_Stepper_BorderWidth_2800
     * @tc.desic：Empty_Stepper_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Stepper")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Stepper" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Stepper" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_BorderWidth_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_BorderWidth_2900
     * @tc.desic：Empty_StepperItem_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd StepperItem")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"StepperItem" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_BorderWidth_3000
     * @tc.name： Test_EmptyAttrs_Text_BorderWidth_3000
     * @tc.desic：Empty_Text_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Text")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Text" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Text" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_BorderWidth_3100
     * @tc.name： Test_EmptyAttrs_TextArea_BorderWidth_3100
     * @tc.desic：Empty_TextArea_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd TextArea")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"TextArea" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["TextArea" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_BorderWidth_3200
     * @tc.name： Test_EmptyAttrs_TextClock_BorderWidth_3200
     * @tc.desic：Empty_TextClock_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd TextClock")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"TextClock" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["TextClock" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_BorderWidth_3300
     * @tc.name： Test_EmptyAttrs_TextInput_BorderWidth_3300
     * @tc.desic：Empty_TextInput_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd TextInput")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"TextInput" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["TextInput" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_BorderWidth_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_BorderWidth_3400
     * @tc.desic：Empty_TextPicker_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd TextPicker")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"TextPicker" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_BorderWidth_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_BorderWidth_3500
     * @tc.desic：Empty_TextTimer_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd TextTimer")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"TextTimer" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_BorderWidth_3600
     * @tc.name： Test_EmptyAttrs_Toggle_BorderWidth_3600
     * @tc.desic：Empty_Toggle_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Toggle")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Toggle" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Toggle" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_BorderWidth_3700
     * @tc.name： Test_EmptyAttrs_Web_BorderWidth_3700
     * @tc.desic：Empty_Web_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Web")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Web" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Web" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_BorderWidth_3800
     * @tc.name： Test_EmptyAttrs_Select_BorderWidth_3800
     * @tc.desic：Empty_Select_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Select")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Select" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Select" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_BorderWidth_3900
     * @tc.name： Test_EmptyAttrs_Badge_BorderWidth_3900
     * @tc.desic：Empty_Badge_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Badge")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Badge" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Badge" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_BorderWidth_4000
     * @tc.name： Test_EmptyAttrs_Column_BorderWidth_4000
     * @tc.desic：Empty_Column_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Column")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Column" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Column" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_BorderWidth_4100
     * @tc.name： Test_EmptyAttrs_Grid_BorderWidth_4100
     * @tc.desic：Empty_Grid_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Grid")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Grid" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Grid" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_BorderWidth_4200
     * @tc.name： Test_EmptyAttrs_GridItem_BorderWidth_4200
     * @tc.desic：Empty_GridItem_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd GridItem")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"GridItem" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["GridItem" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_BorderWidth_4300
     * @tc.name： Test_EmptyAttrs_GridRow_BorderWidth_4300
     * @tc.desic：Empty_GridRow_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd GridRow")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"GridRow" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["GridRow" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_BorderWidth_4400
     * @tc.name： Test_EmptyAttrs_GridCol_BorderWidth_4400
     * @tc.desic：Empty_GridCol_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd GridCol")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"GridCol" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["GridCol" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_BorderWidth_4500
     * @tc.name： Test_EmptyAttrs_Flex_BorderWidth_4500
     * @tc.desic：Empty_Flex_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Flex")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Flex" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Flex" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_BorderWidth_4600
     * @tc.name： Test_EmptyAttrs_List_BorderWidth_4600
     * @tc.desic：Empty_List_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd List")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"List" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["List" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_BorderWidth_4700
     * @tc.name： Test_EmptyAttrs_ListItem_BorderWidth_4700
     * @tc.desic：Empty_ListItem_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd ListItem")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"ListItem" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["ListItem" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_BorderWidth_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_BorderWidth_4800
     * @tc.desic：Empty_ListItemGroup_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"ListItemGroup" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_BorderWidth_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_BorderWidth_5000
     * @tc.desic：Empty_RelativeContainer_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"RelativeContainer" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_BorderWidth_5100
     * @tc.name： Test_EmptyAttrs_Row_BorderWidth_5100
     * @tc.desic：Empty_Row_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Row")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Row" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Row" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_BorderWidth_5200
     * @tc.name： Test_EmptyAttrs_Scroll_BorderWidth_5200
     * @tc.desic：Empty_Scroll_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Scroll")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Scroll" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Scroll" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_BorderWidth_5300
     * @tc.name： Test_EmptyAttrs_Stack_BorderWidth_5300
     * @tc.desic：Empty_Stack_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Stack")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Stack" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Stack" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_BorderWidth_5400
     * @tc.name： Test_EmptyAttrs_Swiper_BorderWidth_5400
     * @tc.desic：Empty_Swiper_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Swiper")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Swiper" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Swiper" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_BorderWidth_5500
     * @tc.name： Test_EmptyAttrs_Tabs_BorderWidth_5500
     * @tc.desic：Empty_Tabs_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Tabs")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Tabs" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Tabs" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_BorderWidth_5600
     * @tc.name： Test_EmptyAttrs_TabContent_BorderWidth_5600
     * @tc.desic：Empty_TabContent_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd TabContent")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"TabContent" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["TabContent" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_BorderWidth_5700
     * @tc.name： Test_EmptyAttrs_Circle_BorderWidth_5700
     * @tc.desic：Empty_Circle_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Circle")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Circle" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Circle" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_BorderWidth_5800
     * @tc.name： Test_EmptyAttrs_Line_BorderWidth_5800
     * @tc.desic：Empty_Line_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Line")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Line" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Line" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_BorderWidth_5900
     * @tc.name： Test_EmptyAttrs_Rect_BorderWidth_5900
     * @tc.desic：Empty_Rect_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Rect")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Rect" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Rect" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_BorderWidth_6000
     * @tc.name： Test_EmptyAttrs_Shape_BorderWidth_6000
     * @tc.desic：Empty_Shape_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Shape")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Shape" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Shape" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_BorderWidth_6200
     * @tc.name： Test_EmptyAttrs_Path_BorderWidth_6200
     * @tc.desic：Empty_Path_BorderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderWidth_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth: FindEnd Path")
        sleepFor(1.second)
        for (BorderWidth_Prop in BorderWidth_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth_Prop: ${"Path" + BorderWidth_Prop[0]}")
            let viewPort = getInspector()["Path" + BorderWidth_Prop[0], "borderWidth"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderWidth_Prop[2]}")
            @Expect(viewPort, BorderWidth_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderWidth:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
