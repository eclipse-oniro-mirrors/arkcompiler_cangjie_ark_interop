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
class Test_EmptyAttrs_Opacity {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Opacity")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Opacity_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Opacity_0100
     * @tc.desic：Empty_AlphabetIndexer_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"AlphabetIndexer" + Opacity_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Opacity_0200
     * @tc.name： Test_EmptyAttrs_Blank_Opacity_0200
     * @tc.desic：Empty_Blank_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Blank")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Blank" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Blank" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Opacity_0300
     * @tc.name： Test_EmptyAttrs_Button_Opacity_0300
     * @tc.desic：Empty_Button_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Button")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Button" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Button" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Opacity_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Opacity_0400
     * @tc.desic：Empty_Checkbox_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Checkbox")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Checkbox" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Opacity_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Opacity_0500
     * @tc.desic：Empty_CheckboxGroup_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"CheckboxGroup" + Opacity_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Opacity_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Opacity_0700
     * @tc.desic：Empty_DataPanel_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd DataPanel")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"DataPanel" + Opacity_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Opacity_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Opacity_0800
     * @tc.desic：Empty_DatePicker_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd DatePicker")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"DatePicker" + Opacity_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Opacity_0900
     * @tc.name： Test_EmptyAttrs_Divider_Opacity_0900
     * @tc.desic：Empty_Divider_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Divider")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Divider" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Divider" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Opacity_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Opacity_1000
     * @tc.desic：Empty_Gauge_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Gauge")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Gauge" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Gauge" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Opacity_1100
     * @tc.name： Test_EmptyAttrs_Image_Opacity_1100
     * @tc.desic：Empty_Image_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Image")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Image" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Image" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Opacity_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Opacity_1200
     * @tc.desic：Empty_ImageSpan_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"ImageSpan" + Opacity_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Opacity_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Opacity_1300
     * @tc.desic：Empty_LoadingProgress_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"LoadingProgress" + Opacity_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Opacity_1400
     * @tc.name： Test_EmptyAttrs_Menu_Opacity_1400
     * @tc.desic：Empty_Menu_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Menu")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Menu" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Menu" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Opacity_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Opacity_1500
     * @tc.desic：Empty_MenuItem_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd MenuItem")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"MenuItem" + Opacity_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Opacity_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Opacity_1600
     * @tc.desic：Empty_MenuItemGroup_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"MenuItemGroup" + Opacity_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Opacity_1700
     * @tc.name： Test_EmptyAttrs_Progress_Opacity_1700
     * @tc.desic：Empty_Progress_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Progress")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Progress" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Progress" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Opacity_1900
     * @tc.name： Test_EmptyAttrs_Radio_Opacity_1900
     * @tc.desic：Empty_Radio_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Radio")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Radio" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Radio" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Opacity_2000
     * @tc.name： Test_EmptyAttrs_Rating_Opacity_2000
     * @tc.desic：Empty_Rating_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Rating")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Rating" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Rating" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Opacity_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Opacity_2100
     * @tc.desic：Empty_Refresh_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Refresh")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Refresh" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Refresh" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Opacity_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Opacity_2200
     * @tc.desic：Empty_RichEditor_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd RichEditor")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"RichEditor" + Opacity_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Opacity_2300
     * @tc.name： Test_EmptyAttrs_RowSplit_Opacity_2300
     * @tc.desic：Empty_RowSplit_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_RowSplit_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd RowSplit")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"RowSplit" + Opacity_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Opacity_2500
     * @tc.name： Test_EmptyAttrs_Search_Opacity_2500
     * @tc.desic：Empty_Search_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Search_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Search")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Search" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Search" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Opacity_2600
     * @tc.name： Test_EmptyAttrs_Slider_Opacity_2600
     * @tc.desic：Empty_Slider_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Slider_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Slider")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Slider" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Slider" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Opacity_2700
     * @tc.name： Test_EmptyAttrs_Stepper_Opacity_2700
     * @tc.desic：Empty_Stepper_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Stepper_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Stepper")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Stepper" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Stepper" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Opacity_2800
     * @tc.name： Test_EmptyAttrs_StepperItem_Opacity_2800
     * @tc.desic：Empty_StepperItem_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_StepperItem_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd StepperItem")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"StepperItem" + Opacity_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Opacity_2900
     * @tc.name： Test_EmptyAttrs_Text_Opacity_2900
     * @tc.desic：Empty_Text_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Text_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Text")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Text" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Text" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Opacity_3000
     * @tc.name： Test_EmptyAttrs_TextArea_Opacity_3000
     * @tc.desic：Empty_TextArea_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_TextArea_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd TextArea")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"TextArea" + Opacity_Prop[0]}")
            let viewPort = getInspector()["TextArea" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Opacity_3100
     * @tc.name： Test_EmptyAttrs_TextClock_Opacity_3100
     * @tc.desic：Empty_TextClock_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_TextClock_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd TextClock")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"TextClock" + Opacity_Prop[0]}")
            let viewPort = getInspector()["TextClock" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Opacity_3200
     * @tc.name： Test_EmptyAttrs_TextInput_Opacity_3200
     * @tc.desic：Empty_TextInput_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_TextInput_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd TextInput")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"TextInput" + Opacity_Prop[0]}")
            let viewPort = getInspector()["TextInput" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Opacity_3400
     * @tc.name： Test_EmptyAttrs_TextTimer_Opacity_3400
     * @tc.desic：Empty_TextTimer_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_TextTimer_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd TextTimer")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"TextTimer" + Opacity_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Opacity_3500
     * @tc.name： Test_EmptyAttrs_Toggle_Opacity_3500
     * @tc.desic：Empty_Toggle_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Toggle_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Toggle")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Toggle" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Toggle" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Opacity_3600
     * @tc.name： Test_EmptyAttrs_Web_Opacity_3600
     * @tc.desic：Empty_Web_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Web_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Web")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Web" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Web" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Opacity_3700
     * @tc.name： Test_EmptyAttrs_Select_Opacity_3700
     * @tc.desic：Empty_Select_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Select_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Select")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Select" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Select" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Opacity_3800
     * @tc.name： Test_EmptyAttrs_Badge_Opacity_3800
     * @tc.desic：Empty_Badge_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Badge_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Badge")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Badge" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Badge" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Opacity_3900
     * @tc.name： Test_EmptyAttrs_Column_Opacity_3900
     * @tc.desic：Empty_Column_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Column_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Column")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Column" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Column" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Opacity_4000
     * @tc.name： Test_EmptyAttrs_Grid_Opacity_4000
     * @tc.desic：Empty_Grid_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Grid_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Grid")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Grid" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Grid" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Opacity_4100
     * @tc.name： Test_EmptyAttrs_GridItem_Opacity_4100
     * @tc.desic：Empty_GridItem_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_GridItem_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd GridItem")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"GridItem" + Opacity_Prop[0]}")
            let viewPort = getInspector()["GridItem" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Opacity_4200
     * @tc.name： Test_EmptyAttrs_GridRow_Opacity_4200
     * @tc.desic：Empty_GridRow_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_GridRow_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd GridRow")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"GridRow" + Opacity_Prop[0]}")
            let viewPort = getInspector()["GridRow" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Opacity_4300
     * @tc.name： Test_EmptyAttrs_GridCol_Opacity_4300
     * @tc.desic：Empty_GridCol_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_GridCol_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd GridCol")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"GridCol" + Opacity_Prop[0]}")
            let viewPort = getInspector()["GridCol" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Opacity_4400
     * @tc.name： Test_EmptyAttrs_Flex_Opacity_4400
     * @tc.desic：Empty_Flex_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Flex_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Flex")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Flex" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Flex" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Opacity_4500
     * @tc.name： Test_EmptyAttrs_List_Opacity_4500
     * @tc.desic：Empty_List_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_List_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd List")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"List" + Opacity_Prop[0]}")
            let viewPort = getInspector()["List" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Opacity_4600
     * @tc.name： Test_EmptyAttrs_ListItem_Opacity_4600
     * @tc.desic：Empty_ListItem_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_ListItem_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd ListItem")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"ListItem" + Opacity_Prop[0]}")
            let viewPort = getInspector()["ListItem" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Opacity_4700
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Opacity_4700
     * @tc.desic：Empty_ListItemGroup_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_ListItemGroup_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"ListItemGroup" + Opacity_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Opacity_4900
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Opacity_4900
     * @tc.desic：Empty_RelativeContainer_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_RelativeContainer_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"RelativeContainer" + Opacity_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Opacity_5000
     * @tc.name： Test_EmptyAttrs_Row_Opacity_5000
     * @tc.desic：Empty_Row_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Row_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Row")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Row" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Row" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Opacity_5100
     * @tc.name： Test_EmptyAttrs_Scroll_Opacity_5100
     * @tc.desic：Empty_Scroll_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Scroll_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Scroll")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Scroll" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Scroll" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Opacity_5200
     * @tc.name： Test_EmptyAttrs_Stack_Opacity_5200
     * @tc.desic：Empty_Stack_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Stack_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Stack")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Stack" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Stack" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Opacity_5300
     * @tc.name： Test_EmptyAttrs_Swiper_Opacity_5300
     * @tc.desic：Empty_Swiper_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Swiper_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Swiper")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Swiper" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Swiper" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Opacity_5400
     * @tc.name： Test_EmptyAttrs_Tabs_Opacity_5400
     * @tc.desic：Empty_Tabs_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Tabs_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Tabs")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Tabs" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Tabs" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Opacity_5500
     * @tc.name： Test_EmptyAttrs_TabContent_Opacity_5500
     * @tc.desic：Empty_TabContent_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_TabContent_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd TabContent")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"TabContent" + Opacity_Prop[0]}")
            let viewPort = getInspector()["TabContent" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Opacity_5600
     * @tc.name： Test_EmptyAttrs_Circle_Opacity_5600
     * @tc.desic：Empty_Circle_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Circle_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Circle")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Circle" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Circle" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Opacity_5700
     * @tc.name： Test_EmptyAttrs_Line_Opacity_5700
     * @tc.desic：Empty_Line_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Line_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Line")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Line" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Line" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Opacity_5800
     * @tc.name： Test_EmptyAttrs_Rect_Opacity_5800
     * @tc.desic：Empty_Rect_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Rect_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Rect")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Rect" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Rect" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Opacity_5900
     * @tc.name： Test_EmptyAttrs_Shape_Opacity_5900
     * @tc.desic：Empty_Shape_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Shape_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Shape")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Shape" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Shape" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Opacity_6100
     * @tc.name： Test_EmptyAttrs_Path_Opacity_6100
     * @tc.desic：Empty_Path_Opacity
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Opacity_Path_6100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity: FindEnd Path")
        sleepFor(1.second)
        for (Opacity_Prop in Opacity_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity_Prop: ${"Path" + Opacity_Prop[0]}")
            let viewPort = getInspector()["Path" + Opacity_Prop[0], "opacity"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Opacity_Prop[2]}")
            @Expect(viewPort, Opacity_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckOpacity:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
