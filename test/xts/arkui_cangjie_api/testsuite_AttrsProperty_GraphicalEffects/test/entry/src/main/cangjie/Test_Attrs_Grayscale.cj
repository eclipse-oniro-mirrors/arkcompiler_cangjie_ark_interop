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
class Test_EmptyAttrs_Grayscale {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Grayscale")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Grayscale_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Grayscale_0100
     * @tc.desic：Empty_AlphabetIndexer_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"AlphabetIndexer" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Grayscale_0200
     * @tc.name： Test_EmptyAttrs_Blank_Grayscale_0200
     * @tc.desic：Empty_Blank_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Blank")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Blank" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Blank" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Grayscale_0300
     * @tc.name： Test_EmptyAttrs_Button_Grayscale_0300
     * @tc.desic：Empty_Button_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Button")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Button" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Button" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Grayscale_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Grayscale_0400
     * @tc.desic：Empty_Checkbox_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Checkbox")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Checkbox" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Grayscale_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Grayscale_0500
     * @tc.desic：Empty_CheckboxGroup_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"CheckboxGroup" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Grayscale_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Grayscale_0700
     * @tc.desic：Empty_DataPanel_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd DataPanel")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"DataPanel" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Grayscale_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Grayscale_0800
     * @tc.desic：Empty_DatePicker_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd DatePicker")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"DatePicker" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Grayscale_0900
     * @tc.name： Test_EmptyAttrs_Divider_Grayscale_0900
     * @tc.desic：Empty_Divider_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Divider")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Divider" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Divider" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Grayscale_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Grayscale_1000
     * @tc.desic：Empty_Gauge_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Gauge")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Gauge" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Gauge" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Grayscale_1100
     * @tc.name： Test_EmptyAttrs_Image_Grayscale_1100
     * @tc.desic：Empty_Image_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Image")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Image" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Image" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Grayscale_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Grayscale_1200
     * @tc.desic：Empty_ImageSpan_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"ImageSpan" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Grayscale_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Grayscale_1300
     * @tc.desic：Empty_LoadingProgress_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"LoadingProgress" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Grayscale_1400
     * @tc.name： Test_EmptyAttrs_Menu_Grayscale_1400
     * @tc.desic：Empty_Menu_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Menu")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Menu" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Menu" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Grayscale_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Grayscale_1500
     * @tc.desic：Empty_MenuItem_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd MenuItem")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"MenuItem" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Grayscale_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Grayscale_1600
     * @tc.desic：Empty_MenuItemGroup_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"MenuItemGroup" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Grayscale_1700
     * @tc.name： Test_EmptyAttrs_Progress_Grayscale_1700
     * @tc.desic：Empty_Progress_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Progress")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Progress" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Progress" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Grayscale_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Grayscale_1800
     * @tc.desic：Empty_QRCode_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd QRCode")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"QRCode" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["QRCode" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Grayscale_1900
     * @tc.name： Test_EmptyAttrs_Radio_Grayscale_1900
     * @tc.desic：Empty_Radio_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Radio")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Radio" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Radio" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Grayscale_2000
     * @tc.name： Test_EmptyAttrs_Rating_Grayscale_2000
     * @tc.desic：Empty_Rating_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Rating")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Rating" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Rating" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Grayscale_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Grayscale_2100
     * @tc.desic：Empty_Refresh_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Refresh")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Refresh" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Refresh" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Grayscale_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Grayscale_2200
     * @tc.desic：Empty_RichEditor_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd RichEditor")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"RichEditor" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Grayscale_2300
     * @tc.name： Test_EmptyAttrs_RichText_Grayscale_2300
     * @tc.desic：Empty_RichText_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd RichText")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"RichText" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["RichText" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Grayscale_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Grayscale_2400
     * @tc.desic：Empty_RowSplit_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd RowSplit")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"RowSplit" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Grayscale_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Grayscale_2500
     * @tc.desic：Empty_ScrollBar_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd ScrollBar")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"ScrollBar" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Grayscale_2600
     * @tc.name： Test_EmptyAttrs_Search_Grayscale_2600
     * @tc.desic：Empty_Search_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Search")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Search" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Search" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Grayscale_2700
     * @tc.name： Test_EmptyAttrs_Slider_Grayscale_2700
     * @tc.desic：Empty_Slider_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Slider")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Slider" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Slider" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Grayscale_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Grayscale_2800
     * @tc.desic：Empty_Stepper_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Stepper")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Stepper" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Stepper" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Grayscale_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Grayscale_2900
     * @tc.desic：Empty_StepperItem_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd StepperItem")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"StepperItem" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Grayscale_3000
     * @tc.name： Test_EmptyAttrs_Text_Grayscale_3000
     * @tc.desic：Empty_Text_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Text")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Text" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Text" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Grayscale_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Grayscale_3100
     * @tc.desic：Empty_TextArea_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd TextArea")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"TextArea" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["TextArea" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Grayscale_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Grayscale_3200
     * @tc.desic：Empty_TextClock_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd TextClock")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"TextClock" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["TextClock" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Grayscale_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Grayscale_3300
     * @tc.desic：Empty_TextInput_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd TextInput")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"TextInput" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["TextInput" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Grayscale_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Grayscale_3400
     * @tc.desic：Empty_TextPicker_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd TextPicker")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"TextPicker" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Grayscale_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Grayscale_3500
     * @tc.desic：Empty_TextTimer_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd TextTimer")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"TextTimer" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Grayscale_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Grayscale_3600
     * @tc.desic：Empty_Toggle_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Toggle")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Toggle" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Toggle" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Grayscale_3700
     * @tc.name： Test_EmptyAttrs_Web_Grayscale_3700
     * @tc.desic：Empty_Web_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Web")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Web" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Web" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Grayscale_3800
     * @tc.name： Test_EmptyAttrs_Select_Grayscale_3800
     * @tc.desic：Empty_Select_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Select")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Select" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Select" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Grayscale_3900
     * @tc.name： Test_EmptyAttrs_Badge_Grayscale_3900
     * @tc.desic：Empty_Badge_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Badge")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Badge" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Badge" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Grayscale_4000
     * @tc.name： Test_EmptyAttrs_Column_Grayscale_4000
     * @tc.desic：Empty_Column_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Column")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Column" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Column" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Grayscale_4100
     * @tc.name： Test_EmptyAttrs_Grid_Grayscale_4100
     * @tc.desic：Empty_Grid_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Grid")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Grid" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Grid" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Grayscale_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Grayscale_4200
     * @tc.desic：Empty_GridItem_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd GridItem")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"GridItem" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["GridItem" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Grayscale_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Grayscale_4300
     * @tc.desic：Empty_GridRow_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd GridRow")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"GridRow" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["GridRow" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Grayscale_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Grayscale_4400
     * @tc.desic：Empty_GridCol_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd GridCol")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"GridCol" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["GridCol" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Grayscale_4500
     * @tc.name： Test_EmptyAttrs_Flex_Grayscale_4500
     * @tc.desic：Empty_Flex_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Flex")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Flex" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Flex" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Grayscale_4600
     * @tc.name： Test_EmptyAttrs_List_Grayscale_4600
     * @tc.desic：Empty_List_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd List")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"List" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["List" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Grayscale_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Grayscale_4700
     * @tc.desic：Empty_ListItem_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd ListItem")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"ListItem" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["ListItem" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Grayscale_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Grayscale_4800
     * @tc.desic：Empty_ListItemGroup_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"ListItemGroup" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Grayscale_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Grayscale_5000
     * @tc.desic：Empty_RelativeContainer_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"RelativeContainer" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Grayscale_5100
     * @tc.name： Test_EmptyAttrs_Row_Grayscale_5100
     * @tc.desic：Empty_Row_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Row")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Row" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Row" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Grayscale_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Grayscale_5200
     * @tc.desic：Empty_Scroll_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Scroll")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Scroll" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Scroll" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Grayscale_5300
     * @tc.name： Test_EmptyAttrs_Stack_Grayscale_5300
     * @tc.desic：Empty_Stack_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Stack")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Stack" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Stack" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Grayscale_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Grayscale_5400
     * @tc.desic：Empty_Swiper_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Swiper")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Swiper" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Swiper" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Grayscale_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Grayscale_5500
     * @tc.desic：Empty_Tabs_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Tabs")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Tabs" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Tabs" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Grayscale_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Grayscale_5600
     * @tc.desic：Empty_TabContent_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd TabContent")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"TabContent" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["TabContent" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Grayscale_5700
     * @tc.name： Test_EmptyAttrs_Circle_Grayscale_5700
     * @tc.desic：Empty_Circle_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Circle")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Circle" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Circle" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Grayscale_5800
     * @tc.name： Test_EmptyAttrs_Line_Grayscale_5800
     * @tc.desic：Empty_Line_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Line")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Line" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Line" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Grayscale_5900
     * @tc.name： Test_EmptyAttrs_Rect_Grayscale_5900
     * @tc.desic：Empty_Rect_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Rect")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Rect" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Rect" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Grayscale_6000
     * @tc.name： Test_EmptyAttrs_Shape_Grayscale_6000
     * @tc.desic：Empty_Shape_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Shape")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Shape" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Shape" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Grayscale_6200
     * @tc.name： Test_EmptyAttrs_Path_Grayscale_6200
     * @tc.desic：Empty_Path_Grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Grayscale_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale: FindEnd Path")
        sleepFor(1.second)
        for (Grayscale_Prop in Grayscale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale_Prop: ${"Path" + Grayscale_Prop[0]}")
            let viewPort = getInspector()["Path" + Grayscale_Prop[0], "grayscale"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Grayscale_Prop[2]}")
            @Expect(viewPort, Grayscale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckGrayscale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
