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
class Test_EmptyAttrs_HueRotate {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("HueRotate")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_HueRotate_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_HueRotate_0100
     * @tc.desic：Empty_AlphabetIndexer_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"AlphabetIndexer" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_HueRotate_0200
     * @tc.name： Test_EmptyAttrs_Blank_HueRotate_0200
     * @tc.desic：Empty_Blank_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Blank")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Blank" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Blank" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_HueRotate_0300
     * @tc.name： Test_EmptyAttrs_Button_HueRotate_0300
     * @tc.desic：Empty_Button_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Button")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Button" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Button" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_HueRotate_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_HueRotate_0400
     * @tc.desic：Empty_Checkbox_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Checkbox")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Checkbox" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_HueRotate_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_HueRotate_0500
     * @tc.desic：Empty_CheckboxGroup_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"CheckboxGroup" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_HueRotate_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_HueRotate_0700
     * @tc.desic：Empty_DataPanel_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd DataPanel")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"DataPanel" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_HueRotate_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_HueRotate_0800
     * @tc.desic：Empty_DatePicker_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd DatePicker")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"DatePicker" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_HueRotate_0900
     * @tc.name： Test_EmptyAttrs_Divider_HueRotate_0900
     * @tc.desic：Empty_Divider_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Divider")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Divider" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Divider" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_HueRotate_1000
     * @tc.name： Test_EmptyAttrs_Gauge_HueRotate_1000
     * @tc.desic：Empty_Gauge_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Gauge")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Gauge" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Gauge" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_HueRotate_1100
     * @tc.name： Test_EmptyAttrs_Image_HueRotate_1100
     * @tc.desic：Empty_Image_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Image")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Image" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Image" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_HueRotate_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_HueRotate_1200
     * @tc.desic：Empty_ImageSpan_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd ImageSpan")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"ImageSpan" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_HueRotate_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_HueRotate_1300
     * @tc.desic：Empty_LoadingProgress_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"LoadingProgress" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_HueRotate_1400
     * @tc.name： Test_EmptyAttrs_Menu_HueRotate_1400
     * @tc.desic：Empty_Menu_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Menu")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Menu" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Menu" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_HueRotate_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_HueRotate_1500
     * @tc.desic：Empty_MenuItem_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd MenuItem")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"MenuItem" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_HueRotate_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_HueRotate_1600
     * @tc.desic：Empty_MenuItemGroup_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"MenuItemGroup" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_HueRotate_1700
     * @tc.name： Test_EmptyAttrs_Progress_HueRotate_1700
     * @tc.desic：Empty_Progress_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Progress")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Progress" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Progress" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_HueRotate_1800
     * @tc.name： Test_EmptyAttrs_QRCode_HueRotate_1800
     * @tc.desic：Empty_QRCode_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd QRCode")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"QRCode" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["QRCode" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_HueRotate_1900
     * @tc.name： Test_EmptyAttrs_Radio_HueRotate_1900
     * @tc.desic：Empty_Radio_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Radio")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Radio" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Radio" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_HueRotate_2000
     * @tc.name： Test_EmptyAttrs_Rating_HueRotate_2000
     * @tc.desic：Empty_Rating_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Rating")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Rating" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Rating" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_HueRotate_2100
     * @tc.name： Test_EmptyAttrs_Refresh_HueRotate_2100
     * @tc.desic：Empty_Refresh_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Refresh")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Refresh" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Refresh" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_HueRotate_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_HueRotate_2200
     * @tc.desic：Empty_RichEditor_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd RichEditor")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"RichEditor" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_HueRotate_2300
     * @tc.name： Test_EmptyAttrs_RichText_HueRotate_2300
     * @tc.desic：Empty_RichText_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd RichText")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"RichText" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["RichText" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_HueRotate_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_HueRotate_2400
     * @tc.desic：Empty_RowSplit_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd RowSplit")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"RowSplit" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_HueRotate_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_HueRotate_2500
     * @tc.desic：Empty_ScrollBar_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd ScrollBar")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"ScrollBar" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_HueRotate_2600
     * @tc.name： Test_EmptyAttrs_Search_HueRotate_2600
     * @tc.desic：Empty_Search_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Search")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Search" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Search" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_HueRotate_2700
     * @tc.name： Test_EmptyAttrs_Slider_HueRotate_2700
     * @tc.desic：Empty_Slider_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Slider")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Slider" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Slider" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_HueRotate_2800
     * @tc.name： Test_EmptyAttrs_Stepper_HueRotate_2800
     * @tc.desic：Empty_Stepper_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Stepper")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Stepper" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Stepper" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_HueRotate_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_HueRotate_2900
     * @tc.desic：Empty_StepperItem_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd StepperItem")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"StepperItem" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_HueRotate_3000
     * @tc.name： Test_EmptyAttrs_Text_HueRotate_3000
     * @tc.desic：Empty_Text_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Text")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Text" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Text" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_HueRotate_3100
     * @tc.name： Test_EmptyAttrs_TextArea_HueRotate_3100
     * @tc.desic：Empty_TextArea_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd TextArea")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"TextArea" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["TextArea" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_HueRotate_3200
     * @tc.name： Test_EmptyAttrs_TextClock_HueRotate_3200
     * @tc.desic：Empty_TextClock_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd TextClock")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"TextClock" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["TextClock" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_HueRotate_3300
     * @tc.name： Test_EmptyAttrs_TextInput_HueRotate_3300
     * @tc.desic：Empty_TextInput_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd TextInput")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"TextInput" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["TextInput" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_HueRotate_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_HueRotate_3400
     * @tc.desic：Empty_TextPicker_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd TextPicker")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"TextPicker" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_HueRotate_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_HueRotate_3500
     * @tc.desic：Empty_TextTimer_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd TextTimer")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"TextTimer" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_HueRotate_3600
     * @tc.name： Test_EmptyAttrs_Toggle_HueRotate_3600
     * @tc.desic：Empty_Toggle_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Toggle")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Toggle" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Toggle" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_HueRotate_3700
     * @tc.name： Test_EmptyAttrs_Web_HueRotate_3700
     * @tc.desic：Empty_Web_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Web")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Web" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Web" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_HueRotate_3800
     * @tc.name： Test_EmptyAttrs_Select_HueRotate_3800
     * @tc.desic：Empty_Select_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Select")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Select" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Select" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_HueRotate_3900
     * @tc.name： Test_EmptyAttrs_Badge_HueRotate_3900
     * @tc.desic：Empty_Badge_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Badge")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Badge" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Badge" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_HueRotate_4000
     * @tc.name： Test_EmptyAttrs_Column_HueRotate_4000
     * @tc.desic：Empty_Column_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Column")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Column" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Column" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_HueRotate_4100
     * @tc.name： Test_EmptyAttrs_Grid_HueRotate_4100
     * @tc.desic：Empty_Grid_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Grid")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Grid" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Grid" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_HueRotate_4200
     * @tc.name： Test_EmptyAttrs_GridItem_HueRotate_4200
     * @tc.desic：Empty_GridItem_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd GridItem")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"GridItem" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["GridItem" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_HueRotate_4300
     * @tc.name： Test_EmptyAttrs_GridRow_HueRotate_4300
     * @tc.desic：Empty_GridRow_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd GridRow")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"GridRow" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["GridRow" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_HueRotate_4400
     * @tc.name： Test_EmptyAttrs_GridCol_HueRotate_4400
     * @tc.desic：Empty_GridCol_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd GridCol")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"GridCol" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["GridCol" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_HueRotate_4500
     * @tc.name： Test_EmptyAttrs_Flex_HueRotate_4500
     * @tc.desic：Empty_Flex_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Flex")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Flex" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Flex" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_HueRotate_4600
     * @tc.name： Test_EmptyAttrs_List_HueRotate_4600
     * @tc.desic：Empty_List_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd List")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"List" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["List" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_HueRotate_4700
     * @tc.name： Test_EmptyAttrs_ListItem_HueRotate_4700
     * @tc.desic：Empty_ListItem_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd ListItem")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"ListItem" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["ListItem" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_HueRotate_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_HueRotate_4800
     * @tc.desic：Empty_ListItemGroup_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"ListItemGroup" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_HueRotate_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_HueRotate_5000
     * @tc.desic：Empty_RelativeContainer_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"RelativeContainer" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_HueRotate_5100
     * @tc.name： Test_EmptyAttrs_Row_HueRotate_5100
     * @tc.desic：Empty_Row_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Row")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Row" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Row" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_HueRotate_5200
     * @tc.name： Test_EmptyAttrs_Scroll_HueRotate_5200
     * @tc.desic：Empty_Scroll_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Scroll")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Scroll" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Scroll" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_HueRotate_5300
     * @tc.name： Test_EmptyAttrs_Stack_HueRotate_5300
     * @tc.desic：Empty_Stack_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Stack")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Stack" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Stack" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_HueRotate_5400
     * @tc.name： Test_EmptyAttrs_Swiper_HueRotate_5400
     * @tc.desic：Empty_Swiper_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Swiper")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Swiper" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Swiper" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_HueRotate_5500
     * @tc.name： Test_EmptyAttrs_Tabs_HueRotate_5500
     * @tc.desic：Empty_Tabs_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Tabs")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Tabs" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Tabs" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_HueRotate_5600
     * @tc.name： Test_EmptyAttrs_TabContent_HueRotate_5600
     * @tc.desic：Empty_TabContent_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd TabContent")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"TabContent" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["TabContent" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_HueRotate_5700
     * @tc.name： Test_EmptyAttrs_Circle_HueRotate_5700
     * @tc.desic：Empty_Circle_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Circle")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Circle" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Circle" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_HueRotate_5800
     * @tc.name： Test_EmptyAttrs_Line_HueRotate_5800
     * @tc.desic：Empty_Line_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Line")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Line" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Line" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_HueRotate_5900
     * @tc.name： Test_EmptyAttrs_Rect_HueRotate_5900
     * @tc.desic：Empty_Rect_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Rect")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Rect" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Rect" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_HueRotate_6000
     * @tc.name： Test_EmptyAttrs_Shape_HueRotate_6000
     * @tc.desic：Empty_Shape_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Shape")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Shape" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Shape" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_HueRotate_6200
     * @tc.name： Test_EmptyAttrs_Path_HueRotate_6200
     * @tc.desic：Empty_Path_HueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_HueRotate_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate: FindEnd Path")
        sleepFor(1.second)
        for (HueRotate_Prop in HueRotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate_Prop: ${"Path" + HueRotate_Prop[0]}")
            let viewPort = getInspector()["Path" + HueRotate_Prop[0], "hueRotate"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${HueRotate_Prop[2]}")
            @Expect(viewPort, HueRotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckHueRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
