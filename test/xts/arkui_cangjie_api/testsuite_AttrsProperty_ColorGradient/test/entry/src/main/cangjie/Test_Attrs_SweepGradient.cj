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
class Test_EmptyAttrs_SweepGradient {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("SweepGradient")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_SweepGradient_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_SweepGradient_0100
     * @tc.desic：Empty_AlphabetIndexer_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"AlphabetIndexer" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_SweepGradient_0200
     * @tc.name： Test_EmptyAttrs_Blank_SweepGradient_0200
     * @tc.desic：Empty_Blank_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Blank")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Blank" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Blank" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_SweepGradient_0300
     * @tc.name： Test_EmptyAttrs_Button_SweepGradient_0300
     * @tc.desic：Empty_Button_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Button")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Button" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Button" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_SweepGradient_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_SweepGradient_0400
     * @tc.desic：Empty_Checkbox_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Checkbox")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Checkbox" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_SweepGradient_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_SweepGradient_0500
     * @tc.desic：Empty_CheckboxGroup_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"CheckboxGroup" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_SweepGradient_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_SweepGradient_0700
     * @tc.desic：Empty_DataPanel_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd DataPanel")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"DataPanel" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_SweepGradient_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_SweepGradient_0800
     * @tc.desic：Empty_DatePicker_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd DatePicker")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"DatePicker" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_SweepGradient_0900
     * @tc.name： Test_EmptyAttrs_Divider_SweepGradient_0900
     * @tc.desic：Empty_Divider_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Divider")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Divider" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Divider" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_SweepGradient_1000
     * @tc.name： Test_EmptyAttrs_Gauge_SweepGradient_1000
     * @tc.desic：Empty_Gauge_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Gauge")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Gauge" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Gauge" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_SweepGradient_1100
     * @tc.name： Test_EmptyAttrs_Image_SweepGradient_1100
     * @tc.desic：Empty_Image_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Image")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Image" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Image" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_SweepGradient_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_SweepGradient_1200
     * @tc.desic：Empty_ImageSpan_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd ImageSpan")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"ImageSpan" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_SweepGradient_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_SweepGradient_1300
     * @tc.desic：Empty_LoadingProgress_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"LoadingProgress" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_SweepGradient_1400
     * @tc.name： Test_EmptyAttrs_Menu_SweepGradient_1400
     * @tc.desic：Empty_Menu_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Menu")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Menu" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Menu" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_SweepGradient_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_SweepGradient_1500
     * @tc.desic：Empty_MenuItem_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd MenuItem")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"MenuItem" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_SweepGradient_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_SweepGradient_1600
     * @tc.desic：Empty_MenuItemGroup_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"MenuItemGroup" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_SweepGradient_1700
     * @tc.name： Test_EmptyAttrs_Progress_SweepGradient_1700
     * @tc.desic：Empty_Progress_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Progress")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Progress" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Progress" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_SweepGradient_1800
     * @tc.name： Test_EmptyAttrs_QRCode_SweepGradient_1800
     * @tc.desic：Empty_QRCode_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd QRCode")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"QRCode" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["QRCode" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_SweepGradient_1900
     * @tc.name： Test_EmptyAttrs_Radio_SweepGradient_1900
     * @tc.desic：Empty_Radio_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Radio")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Radio" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Radio" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_SweepGradient_2000
     * @tc.name： Test_EmptyAttrs_Rating_SweepGradient_2000
     * @tc.desic：Empty_Rating_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Rating")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Rating" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Rating" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_SweepGradient_2100
     * @tc.name： Test_EmptyAttrs_Refresh_SweepGradient_2100
     * @tc.desic：Empty_Refresh_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Refresh")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Refresh" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Refresh" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_SweepGradient_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_SweepGradient_2200
     * @tc.desic：Empty_RichEditor_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd RichEditor")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"RichEditor" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_SweepGradient_2300
     * @tc.name： Test_EmptyAttrs_RowSplit_SweepGradient_2300
     * @tc.desic：Empty_RowSplit_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_RowSplit_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd RowSplit")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"RowSplit" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_SweepGradient_2400
     * @tc.name： Test_EmptyAttrs_ScrollBar_SweepGradient_2400
     * @tc.desic：Empty_ScrollBar_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_ScrollBar_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd ScrollBar")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"ScrollBar" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_SweepGradient_2500
     * @tc.name： Test_EmptyAttrs_Search_SweepGradient_2500
     * @tc.desic：Empty_Search_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Search_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Search")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Search" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Search" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_SweepGradient_2600
     * @tc.name： Test_EmptyAttrs_Slider_SweepGradient_2600
     * @tc.desic：Empty_Slider_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Slider_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Slider")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Slider" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Slider" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_SweepGradient_2700
     * @tc.name： Test_EmptyAttrs_Stepper_SweepGradient_2700
     * @tc.desic：Empty_Stepper_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Stepper_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Stepper")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Stepper" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Stepper" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_SweepGradient_2800
     * @tc.name： Test_EmptyAttrs_StepperItem_SweepGradient_2800
     * @tc.desic：Empty_StepperItem_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_StepperItem_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd StepperItem")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"StepperItem" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_SweepGradient_2900
     * @tc.name： Test_EmptyAttrs_Text_SweepGradient_2900
     * @tc.desic：Empty_Text_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Text_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Text")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Text" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Text" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_SweepGradient_3000
     * @tc.name： Test_EmptyAttrs_TextArea_SweepGradient_3000
     * @tc.desic：Empty_TextArea_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_TextArea_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd TextArea")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"TextArea" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["TextArea" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_SweepGradient_3100
     * @tc.name： Test_EmptyAttrs_TextClock_SweepGradient_3100
     * @tc.desic：Empty_TextClock_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_TextClock_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd TextClock")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"TextClock" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["TextClock" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_SweepGradient_3200
     * @tc.name： Test_EmptyAttrs_TextInput_SweepGradient_3200
     * @tc.desic：Empty_TextInput_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_TextInput_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd TextInput")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"TextInput" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["TextInput" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_SweepGradient_3300
     * @tc.name： Test_EmptyAttrs_TextPicker_SweepGradient_3300
     * @tc.desic：Empty_TextPicker_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_TextPicker_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd TextPicker")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"TextPicker" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_SweepGradient_3400
     * @tc.name： Test_EmptyAttrs_TextTimer_SweepGradient_3400
     * @tc.desic：Empty_TextTimer_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_TextTimer_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd TextTimer")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"TextTimer" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_SweepGradient_3500
     * @tc.name： Test_EmptyAttrs_Toggle_SweepGradient_3500
     * @tc.desic：Empty_Toggle_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Toggle_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Toggle")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Toggle" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Toggle" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_SweepGradient_3600
     * @tc.name： Test_EmptyAttrs_Select_SweepGradient_3600
     * @tc.desic：Empty_Select_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Select_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Select")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Select" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Select" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_SweepGradient_3700
     * @tc.name： Test_EmptyAttrs_Badge_SweepGradient_3700
     * @tc.desic：Empty_Badge_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Badge_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Badge")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Badge" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Badge" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_SweepGradient_3800
     * @tc.name： Test_EmptyAttrs_Column_SweepGradient_3800
     * @tc.desic：Empty_Column_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Column_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Column")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Column" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Column" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_SweepGradient_3900
     * @tc.name： Test_EmptyAttrs_Grid_SweepGradient_3900
     * @tc.desic：Empty_Grid_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Grid_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Grid")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Grid" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Grid" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_SweepGradient_4000
     * @tc.name： Test_EmptyAttrs_GridItem_SweepGradient_4000
     * @tc.desic：Empty_GridItem_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_GridItem_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd GridItem")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"GridItem" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["GridItem" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_SweepGradient_4100
     * @tc.name： Test_EmptyAttrs_GridRow_SweepGradient_4100
     * @tc.desic：Empty_GridRow_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_GridRow_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd GridRow")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"GridRow" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["GridRow" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_SweepGradient_4200
     * @tc.name： Test_EmptyAttrs_GridCol_SweepGradient_4200
     * @tc.desic：Empty_GridCol_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_GridCol_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd GridCol")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"GridCol" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["GridCol" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_SweepGradient_4300
     * @tc.name： Test_EmptyAttrs_Flex_SweepGradient_4300
     * @tc.desic：Empty_Flex_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Flex_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Flex")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Flex" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Flex" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_SweepGradient_4400
     * @tc.name： Test_EmptyAttrs_List_SweepGradient_4400
     * @tc.desic：Empty_List_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_List_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd List")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"List" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["List" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_SweepGradient_4500
     * @tc.name： Test_EmptyAttrs_ListItem_SweepGradient_4500
     * @tc.desic：Empty_ListItem_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_ListItem_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd ListItem")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"ListItem" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["ListItem" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_SweepGradient_4600
     * @tc.name： Test_EmptyAttrs_ListItemGroup_SweepGradient_4600
     * @tc.desic：Empty_ListItemGroup_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_ListItemGroup_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"ListItemGroup" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_SweepGradient_4800
     * @tc.name： Test_EmptyAttrs_RelativeContainer_SweepGradient_4800
     * @tc.desic：Empty_RelativeContainer_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_RelativeContainer_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"RelativeContainer" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_SweepGradient_4900
     * @tc.name： Test_EmptyAttrs_Row_SweepGradient_4900
     * @tc.desic：Empty_Row_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Row_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Row")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Row" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Row" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_SweepGradient_5000
     * @tc.name： Test_EmptyAttrs_Scroll_SweepGradient_5000
     * @tc.desic：Empty_Scroll_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Scroll_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Scroll")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Scroll" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Scroll" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_SweepGradient_5100
     * @tc.name： Test_EmptyAttrs_Stack_SweepGradient_5100
     * @tc.desic：Empty_Stack_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Stack_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Stack")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Stack" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Stack" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_SweepGradient_5200
     * @tc.name： Test_EmptyAttrs_Swiper_SweepGradient_5200
     * @tc.desic：Empty_Swiper_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Swiper_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Swiper")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Swiper" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Swiper" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_SweepGradient_5300
     * @tc.name： Test_EmptyAttrs_Tabs_SweepGradient_5300
     * @tc.desic：Empty_Tabs_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Tabs_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Tabs")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Tabs" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Tabs" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_SweepGradient_5400
     * @tc.name： Test_EmptyAttrs_TabContent_SweepGradient_5400
     * @tc.desic：Empty_TabContent_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_TabContent_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd TabContent")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"TabContent" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["TabContent" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_SweepGradient_5500
     * @tc.name： Test_EmptyAttrs_Circle_SweepGradient_5500
     * @tc.desic：Empty_Circle_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Circle_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Circle")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Circle" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Circle" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_SweepGradient_5600
     * @tc.name： Test_EmptyAttrs_Line_SweepGradient_5600
     * @tc.desic：Empty_Line_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Line_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Line")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Line" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Line" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_SweepGradient_5700
     * @tc.name： Test_EmptyAttrs_Rect_SweepGradient_5700
     * @tc.desic：Empty_Rect_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Rect_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Rect")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Rect" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Rect" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_SweepGradient_5800
     * @tc.name： Test_EmptyAttrs_Shape_SweepGradient_5800
     * @tc.desic：Empty_Shape_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Shape_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Shape")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Shape" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Shape" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_SweepGradient_6000
     * @tc.name： Test_EmptyAttrs_Path_SweepGradient_6000
     * @tc.desic：Empty_Path_SweepGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_SweepGradient_Path_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient: FindEnd Path")
        sleepFor(1.second)
        for (SweepGradient_Prop in SweepGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient_Prop: ${"Path" + SweepGradient_Prop[0]}")
            let viewPort = getInspector()["Path" + SweepGradient_Prop[0], "sweepGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${SweepGradient_Prop[2]}")
            @Expect(viewPort, SweepGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckSweepGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
