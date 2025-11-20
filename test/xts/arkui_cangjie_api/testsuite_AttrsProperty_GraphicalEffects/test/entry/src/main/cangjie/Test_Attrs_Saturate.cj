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
class Test_EmptyAttrs_Saturate {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Saturate")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Saturate_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Saturate_0100
     * @tc.desic：Empty_AlphabetIndexer_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"AlphabetIndexer" + Saturate_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Saturate_0200
     * @tc.name： Test_EmptyAttrs_Blank_Saturate_0200
     * @tc.desic：Empty_Blank_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Blank")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Blank" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Blank" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Saturate_0300
     * @tc.name： Test_EmptyAttrs_Button_Saturate_0300
     * @tc.desic：Empty_Button_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Button")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Button" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Button" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Saturate_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Saturate_0400
     * @tc.desic：Empty_Checkbox_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Checkbox")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Checkbox" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Saturate_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Saturate_0500
     * @tc.desic：Empty_CheckboxGroup_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"CheckboxGroup" + Saturate_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Saturate_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Saturate_0700
     * @tc.desic：Empty_DataPanel_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd DataPanel")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"DataPanel" + Saturate_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Saturate_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Saturate_0800
     * @tc.desic：Empty_DatePicker_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd DatePicker")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"DatePicker" + Saturate_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Saturate_0900
     * @tc.name： Test_EmptyAttrs_Divider_Saturate_0900
     * @tc.desic：Empty_Divider_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Divider")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Divider" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Divider" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Saturate_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Saturate_1000
     * @tc.desic：Empty_Gauge_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Gauge")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Gauge" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Gauge" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Saturate_1100
     * @tc.name： Test_EmptyAttrs_Image_Saturate_1100
     * @tc.desic：Empty_Image_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Image")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Image" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Image" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Saturate_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Saturate_1200
     * @tc.desic：Empty_ImageSpan_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"ImageSpan" + Saturate_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Saturate_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Saturate_1300
     * @tc.desic：Empty_LoadingProgress_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"LoadingProgress" + Saturate_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Saturate_1400
     * @tc.name： Test_EmptyAttrs_Menu_Saturate_1400
     * @tc.desic：Empty_Menu_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Menu")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Menu" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Menu" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Saturate_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Saturate_1500
     * @tc.desic：Empty_MenuItem_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd MenuItem")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"MenuItem" + Saturate_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Saturate_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Saturate_1600
     * @tc.desic：Empty_MenuItemGroup_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"MenuItemGroup" + Saturate_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Saturate_1700
     * @tc.name： Test_EmptyAttrs_Progress_Saturate_1700
     * @tc.desic：Empty_Progress_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Progress")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Progress" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Progress" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Saturate_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Saturate_1800
     * @tc.desic：Empty_QRCode_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd QRCode")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"QRCode" + Saturate_Prop[0]}")
            let viewPort = getInspector()["QRCode" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Saturate_1900
     * @tc.name： Test_EmptyAttrs_Radio_Saturate_1900
     * @tc.desic：Empty_Radio_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Radio")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Radio" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Radio" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Saturate_2000
     * @tc.name： Test_EmptyAttrs_Rating_Saturate_2000
     * @tc.desic：Empty_Rating_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Rating")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Rating" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Rating" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Saturate_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Saturate_2100
     * @tc.desic：Empty_Refresh_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Refresh")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Refresh" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Refresh" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Saturate_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Saturate_2200
     * @tc.desic：Empty_RichEditor_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd RichEditor")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"RichEditor" + Saturate_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Saturate_2300
     * @tc.name： Test_EmptyAttrs_RichText_Saturate_2300
     * @tc.desic：Empty_RichText_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd RichText")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"RichText" + Saturate_Prop[0]}")
            let viewPort = getInspector()["RichText" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Saturate_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Saturate_2400
     * @tc.desic：Empty_RowSplit_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd RowSplit")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"RowSplit" + Saturate_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Saturate_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Saturate_2500
     * @tc.desic：Empty_ScrollBar_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd ScrollBar")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"ScrollBar" + Saturate_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Saturate_2600
     * @tc.name： Test_EmptyAttrs_Search_Saturate_2600
     * @tc.desic：Empty_Search_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Search")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Search" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Search" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Saturate_2700
     * @tc.name： Test_EmptyAttrs_Slider_Saturate_2700
     * @tc.desic：Empty_Slider_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Slider")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Slider" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Slider" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Saturate_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Saturate_2800
     * @tc.desic：Empty_Stepper_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Stepper")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Stepper" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Stepper" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Saturate_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Saturate_2900
     * @tc.desic：Empty_StepperItem_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd StepperItem")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"StepperItem" + Saturate_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Saturate_3000
     * @tc.name： Test_EmptyAttrs_Text_Saturate_3000
     * @tc.desic：Empty_Text_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Text")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Text" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Text" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Saturate_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Saturate_3100
     * @tc.desic：Empty_TextArea_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd TextArea")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"TextArea" + Saturate_Prop[0]}")
            let viewPort = getInspector()["TextArea" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Saturate_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Saturate_3200
     * @tc.desic：Empty_TextClock_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd TextClock")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"TextClock" + Saturate_Prop[0]}")
            let viewPort = getInspector()["TextClock" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Saturate_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Saturate_3300
     * @tc.desic：Empty_TextInput_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd TextInput")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"TextInput" + Saturate_Prop[0]}")
            let viewPort = getInspector()["TextInput" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Saturate_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Saturate_3400
     * @tc.desic：Empty_TextPicker_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd TextPicker")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"TextPicker" + Saturate_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Saturate_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Saturate_3500
     * @tc.desic：Empty_TextTimer_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd TextTimer")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"TextTimer" + Saturate_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Saturate_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Saturate_3600
     * @tc.desic：Empty_Toggle_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Toggle")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Toggle" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Toggle" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Saturate_3700
     * @tc.name： Test_EmptyAttrs_Web_Saturate_3700
     * @tc.desic：Empty_Web_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Web")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Web" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Web" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Saturate_3800
     * @tc.name： Test_EmptyAttrs_Select_Saturate_3800
     * @tc.desic：Empty_Select_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Select")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Select" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Select" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Saturate_3900
     * @tc.name： Test_EmptyAttrs_Badge_Saturate_3900
     * @tc.desic：Empty_Badge_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Badge")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Badge" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Badge" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Saturate_4000
     * @tc.name： Test_EmptyAttrs_Column_Saturate_4000
     * @tc.desic：Empty_Column_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Column")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Column" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Column" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Saturate_4100
     * @tc.name： Test_EmptyAttrs_Grid_Saturate_4100
     * @tc.desic：Empty_Grid_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Grid")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Grid" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Grid" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Saturate_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Saturate_4200
     * @tc.desic：Empty_GridItem_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd GridItem")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"GridItem" + Saturate_Prop[0]}")
            let viewPort = getInspector()["GridItem" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Saturate_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Saturate_4300
     * @tc.desic：Empty_GridRow_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd GridRow")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"GridRow" + Saturate_Prop[0]}")
            let viewPort = getInspector()["GridRow" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Saturate_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Saturate_4400
     * @tc.desic：Empty_GridCol_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd GridCol")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"GridCol" + Saturate_Prop[0]}")
            let viewPort = getInspector()["GridCol" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Saturate_4500
     * @tc.name： Test_EmptyAttrs_Flex_Saturate_4500
     * @tc.desic：Empty_Flex_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Flex")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Flex" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Flex" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Saturate_4600
     * @tc.name： Test_EmptyAttrs_List_Saturate_4600
     * @tc.desic：Empty_List_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd List")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"List" + Saturate_Prop[0]}")
            let viewPort = getInspector()["List" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Saturate_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Saturate_4700
     * @tc.desic：Empty_ListItem_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd ListItem")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"ListItem" + Saturate_Prop[0]}")
            let viewPort = getInspector()["ListItem" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Saturate_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Saturate_4800
     * @tc.desic：Empty_ListItemGroup_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"ListItemGroup" + Saturate_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Saturate_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Saturate_5000
     * @tc.desic：Empty_RelativeContainer_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"RelativeContainer" + Saturate_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Saturate_5100
     * @tc.name： Test_EmptyAttrs_Row_Saturate_5100
     * @tc.desic：Empty_Row_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Row")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Row" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Row" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Saturate_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Saturate_5200
     * @tc.desic：Empty_Scroll_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Scroll")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Scroll" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Scroll" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Saturate_5300
     * @tc.name： Test_EmptyAttrs_Stack_Saturate_5300
     * @tc.desic：Empty_Stack_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Stack")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Stack" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Stack" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Saturate_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Saturate_5400
     * @tc.desic：Empty_Swiper_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Swiper")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Swiper" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Swiper" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Saturate_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Saturate_5500
     * @tc.desic：Empty_Tabs_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Tabs")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Tabs" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Tabs" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Saturate_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Saturate_5600
     * @tc.desic：Empty_TabContent_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd TabContent")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"TabContent" + Saturate_Prop[0]}")
            let viewPort = getInspector()["TabContent" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Saturate_5700
     * @tc.name： Test_EmptyAttrs_Circle_Saturate_5700
     * @tc.desic：Empty_Circle_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Circle")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Circle" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Circle" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Saturate_5800
     * @tc.name： Test_EmptyAttrs_Line_Saturate_5800
     * @tc.desic：Empty_Line_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Line")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Line" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Line" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Saturate_5900
     * @tc.name： Test_EmptyAttrs_Rect_Saturate_5900
     * @tc.desic：Empty_Rect_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Rect")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Rect" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Rect" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Saturate_6000
     * @tc.name： Test_EmptyAttrs_Shape_Saturate_6000
     * @tc.desic：Empty_Shape_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Shape")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Shape" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Shape" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Saturate_6200
     * @tc.name： Test_EmptyAttrs_Path_Saturate_6200
     * @tc.desic：Empty_Path_Saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Saturate_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate: FindEnd Path")
        sleepFor(1.second)
        for (Saturate_Prop in Saturate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate_Prop: ${"Path" + Saturate_Prop[0]}")
            let viewPort = getInspector()["Path" + Saturate_Prop[0], "saturate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Saturate_Prop[2]}")
            @Expect(viewPort, Saturate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSaturate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
