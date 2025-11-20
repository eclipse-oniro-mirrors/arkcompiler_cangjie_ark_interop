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
class Test_EmptyAttrs_Brightness {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Brightness")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Brightness_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Brightness_0100
     * @tc.desic：Empty_AlphabetIndexer_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"AlphabetIndexer" + Brightness_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Brightness_0200
     * @tc.name： Test_EmptyAttrs_Blank_Brightness_0200
     * @tc.desic：Empty_Blank_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Blank")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Blank" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Blank" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Brightness_0300
     * @tc.name： Test_EmptyAttrs_Button_Brightness_0300
     * @tc.desic：Empty_Button_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Button")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Button" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Button" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Brightness_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Brightness_0400
     * @tc.desic：Empty_Checkbox_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Checkbox")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Checkbox" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Brightness_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Brightness_0500
     * @tc.desic：Empty_CheckboxGroup_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"CheckboxGroup" + Brightness_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Brightness_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Brightness_0700
     * @tc.desic：Empty_DataPanel_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd DataPanel")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"DataPanel" + Brightness_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Brightness_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Brightness_0800
     * @tc.desic：Empty_DatePicker_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd DatePicker")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"DatePicker" + Brightness_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Brightness_0900
     * @tc.name： Test_EmptyAttrs_Divider_Brightness_0900
     * @tc.desic：Empty_Divider_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Divider")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Divider" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Divider" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Brightness_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Brightness_1000
     * @tc.desic：Empty_Gauge_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Gauge")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Gauge" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Gauge" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Brightness_1100
     * @tc.name： Test_EmptyAttrs_Image_Brightness_1100
     * @tc.desic：Empty_Image_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Image")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Image" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Image" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Brightness_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Brightness_1200
     * @tc.desic：Empty_ImageSpan_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"ImageSpan" + Brightness_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Brightness_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Brightness_1300
     * @tc.desic：Empty_LoadingProgress_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"LoadingProgress" + Brightness_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Brightness_1400
     * @tc.name： Test_EmptyAttrs_Menu_Brightness_1400
     * @tc.desic：Empty_Menu_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Menu")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Menu" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Menu" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Brightness_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Brightness_1500
     * @tc.desic：Empty_MenuItem_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd MenuItem")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"MenuItem" + Brightness_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Brightness_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Brightness_1600
     * @tc.desic：Empty_MenuItemGroup_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"MenuItemGroup" + Brightness_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Brightness_1700
     * @tc.name： Test_EmptyAttrs_Progress_Brightness_1700
     * @tc.desic：Empty_Progress_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Progress")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Progress" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Progress" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Brightness_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Brightness_1800
     * @tc.desic：Empty_QRCode_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd QRCode")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"QRCode" + Brightness_Prop[0]}")
            let viewPort = getInspector()["QRCode" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Brightness_1900
     * @tc.name： Test_EmptyAttrs_Radio_Brightness_1900
     * @tc.desic：Empty_Radio_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Radio")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Radio" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Radio" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Brightness_2000
     * @tc.name： Test_EmptyAttrs_Rating_Brightness_2000
     * @tc.desic：Empty_Rating_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Rating")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Rating" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Rating" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Brightness_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Brightness_2100
     * @tc.desic：Empty_Refresh_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Refresh")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Refresh" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Refresh" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Brightness_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Brightness_2200
     * @tc.desic：Empty_RichEditor_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd RichEditor")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"RichEditor" + Brightness_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Brightness_2300
     * @tc.name： Test_EmptyAttrs_RichText_Brightness_2300
     * @tc.desic：Empty_RichText_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd RichText")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"RichText" + Brightness_Prop[0]}")
            let viewPort = getInspector()["RichText" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Brightness_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Brightness_2400
     * @tc.desic：Empty_RowSplit_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd RowSplit")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"RowSplit" + Brightness_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Brightness_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Brightness_2500
     * @tc.desic：Empty_ScrollBar_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd ScrollBar")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"ScrollBar" + Brightness_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Brightness_2600
     * @tc.name： Test_EmptyAttrs_Search_Brightness_2600
     * @tc.desic：Empty_Search_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Search")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Search" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Search" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Brightness_2700
     * @tc.name： Test_EmptyAttrs_Slider_Brightness_2700
     * @tc.desic：Empty_Slider_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Slider")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Slider" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Slider" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Brightness_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Brightness_2800
     * @tc.desic：Empty_Stepper_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Stepper")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Stepper" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Stepper" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Brightness_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Brightness_2900
     * @tc.desic：Empty_StepperItem_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd StepperItem")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"StepperItem" + Brightness_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Brightness_3000
     * @tc.name： Test_EmptyAttrs_Text_Brightness_3000
     * @tc.desic：Empty_Text_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Text")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Text" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Text" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Brightness_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Brightness_3100
     * @tc.desic：Empty_TextArea_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd TextArea")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"TextArea" + Brightness_Prop[0]}")
            let viewPort = getInspector()["TextArea" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Brightness_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Brightness_3200
     * @tc.desic：Empty_TextClock_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd TextClock")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"TextClock" + Brightness_Prop[0]}")
            let viewPort = getInspector()["TextClock" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Brightness_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Brightness_3300
     * @tc.desic：Empty_TextInput_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd TextInput")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"TextInput" + Brightness_Prop[0]}")
            let viewPort = getInspector()["TextInput" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Brightness_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Brightness_3400
     * @tc.desic：Empty_TextPicker_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd TextPicker")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"TextPicker" + Brightness_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Brightness_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Brightness_3500
     * @tc.desic：Empty_TextTimer_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd TextTimer")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"TextTimer" + Brightness_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Brightness_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Brightness_3600
     * @tc.desic：Empty_Toggle_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Toggle")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Toggle" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Toggle" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Brightness_3700
     * @tc.name： Test_EmptyAttrs_Web_Brightness_3700
     * @tc.desic：Empty_Web_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Web")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Web" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Web" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Brightness_3800
     * @tc.name： Test_EmptyAttrs_Select_Brightness_3800
     * @tc.desic：Empty_Select_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Select")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Select" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Select" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Brightness_3900
     * @tc.name： Test_EmptyAttrs_Badge_Brightness_3900
     * @tc.desic：Empty_Badge_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Badge")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Badge" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Badge" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Brightness_4000
     * @tc.name： Test_EmptyAttrs_Column_Brightness_4000
     * @tc.desic：Empty_Column_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Column")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Column" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Column" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Brightness_4100
     * @tc.name： Test_EmptyAttrs_Grid_Brightness_4100
     * @tc.desic：Empty_Grid_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Grid")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Grid" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Grid" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Brightness_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Brightness_4200
     * @tc.desic：Empty_GridItem_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd GridItem")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"GridItem" + Brightness_Prop[0]}")
            let viewPort = getInspector()["GridItem" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Brightness_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Brightness_4300
     * @tc.desic：Empty_GridRow_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd GridRow")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"GridRow" + Brightness_Prop[0]}")
            let viewPort = getInspector()["GridRow" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Brightness_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Brightness_4400
     * @tc.desic：Empty_GridCol_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd GridCol")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"GridCol" + Brightness_Prop[0]}")
            let viewPort = getInspector()["GridCol" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Brightness_4500
     * @tc.name： Test_EmptyAttrs_Flex_Brightness_4500
     * @tc.desic：Empty_Flex_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Flex")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Flex" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Flex" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Brightness_4600
     * @tc.name： Test_EmptyAttrs_List_Brightness_4600
     * @tc.desic：Empty_List_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd List")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"List" + Brightness_Prop[0]}")
            let viewPort = getInspector()["List" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Brightness_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Brightness_4700
     * @tc.desic：Empty_ListItem_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd ListItem")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"ListItem" + Brightness_Prop[0]}")
            let viewPort = getInspector()["ListItem" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Brightness_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Brightness_4800
     * @tc.desic：Empty_ListItemGroup_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"ListItemGroup" + Brightness_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Brightness_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Brightness_5000
     * @tc.desic：Empty_RelativeContainer_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"RelativeContainer" + Brightness_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Brightness_5100
     * @tc.name： Test_EmptyAttrs_Row_Brightness_5100
     * @tc.desic：Empty_Row_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Row")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Row" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Row" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Brightness_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Brightness_5200
     * @tc.desic：Empty_Scroll_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Scroll")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Scroll" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Scroll" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Brightness_5300
     * @tc.name： Test_EmptyAttrs_Stack_Brightness_5300
     * @tc.desic：Empty_Stack_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Stack")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Stack" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Stack" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Brightness_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Brightness_5400
     * @tc.desic：Empty_Swiper_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Swiper")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Swiper" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Swiper" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Brightness_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Brightness_5500
     * @tc.desic：Empty_Tabs_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Tabs")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Tabs" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Tabs" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Brightness_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Brightness_5600
     * @tc.desic：Empty_TabContent_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd TabContent")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"TabContent" + Brightness_Prop[0]}")
            let viewPort = getInspector()["TabContent" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Brightness_5700
     * @tc.name： Test_EmptyAttrs_Circle_Brightness_5700
     * @tc.desic：Empty_Circle_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Circle")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Circle" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Circle" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Brightness_5800
     * @tc.name： Test_EmptyAttrs_Line_Brightness_5800
     * @tc.desic：Empty_Line_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Line")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Line" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Line" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Brightness_5900
     * @tc.name： Test_EmptyAttrs_Rect_Brightness_5900
     * @tc.desic：Empty_Rect_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Rect")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Rect" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Rect" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Brightness_6000
     * @tc.name： Test_EmptyAttrs_Shape_Brightness_6000
     * @tc.desic：Empty_Shape_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Shape")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Shape" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Shape" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Brightness_6200
     * @tc.name： Test_EmptyAttrs_Path_Brightness_6200
     * @tc.desic：Empty_Path_Brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Brightness_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness: FindEnd Path")
        sleepFor(1.second)
        for (Brightness_Prop in Brightness_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness_Prop: ${"Path" + Brightness_Prop[0]}")
            let viewPort = getInspector()["Path" + Brightness_Prop[0], "brightness"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Brightness_Prop[2]}")
            @Expect(viewPort, Brightness_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBrightness:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
