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
class Test_EmptyAttrs_RadialGradient {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("RadialGradient")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_RadialGradient_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_RadialGradient_0100
     * @tc.desic：Empty_AlphabetIndexer_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckRadialGradient_Prop: ${"AlphabetIndexer" + RadialGradient_Prop[0]}", "test")
            let viewPort = getInspector()["AlphabetIndexer" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_RadialGradient_0200
     * @tc.name： Test_EmptyAttrs_Blank_RadialGradient_0200
     * @tc.desic：Empty_Blank_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Blank")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Blank" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Blank" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_RadialGradient_0300
     * @tc.name： Test_EmptyAttrs_Button_RadialGradient_0300
     * @tc.desic：Empty_Button_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Button")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Button" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Button" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_RadialGradient_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_RadialGradient_0400
     * @tc.desic：Empty_Checkbox_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Checkbox")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Checkbox" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_RadialGradient_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_RadialGradient_0500
     * @tc.desic：Empty_CheckboxGroup_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"CheckboxGroup" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_RadialGradient_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_RadialGradient_0700
     * @tc.desic：Empty_DataPanel_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd DataPanel")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"DataPanel" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_RadialGradient_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_RadialGradient_0800
     * @tc.desic：Empty_DatePicker_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd DatePicker")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"DatePicker" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_RadialGradient_0900
     * @tc.name： Test_EmptyAttrs_Divider_RadialGradient_0900
     * @tc.desic：Empty_Divider_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Divider")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Divider" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Divider" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_RadialGradient_1000
     * @tc.name： Test_EmptyAttrs_Gauge_RadialGradient_1000
     * @tc.desic：Empty_Gauge_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Gauge")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Gauge" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Gauge" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_RadialGradient_1100
     * @tc.name： Test_EmptyAttrs_Image_RadialGradient_1100
     * @tc.desic：Empty_Image_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Image")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Image" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Image" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_RadialGradient_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_RadialGradient_1200
     * @tc.desic：Empty_ImageSpan_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd ImageSpan")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"ImageSpan" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_RadialGradient_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_RadialGradient_1300
     * @tc.desic：Empty_LoadingProgress_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"LoadingProgress" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_RadialGradient_1400
     * @tc.name： Test_EmptyAttrs_Menu_RadialGradient_1400
     * @tc.desic：Empty_Menu_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Menu")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Menu" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Menu" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_RadialGradient_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_RadialGradient_1500
     * @tc.desic：Empty_MenuItem_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd MenuItem")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"MenuItem" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_RadialGradient_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_RadialGradient_1600
     * @tc.desic：Empty_MenuItemGroup_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"MenuItemGroup" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_RadialGradient_1700
     * @tc.name： Test_EmptyAttrs_Progress_RadialGradient_1700
     * @tc.desic：Empty_Progress_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Progress")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Progress" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Progress" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_RadialGradient_1800
     * @tc.name： Test_EmptyAttrs_QRCode_RadialGradient_1800
     * @tc.desic：Empty_QRCode_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd QRCode")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"QRCode" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["QRCode" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_RadialGradient_1900
     * @tc.name： Test_EmptyAttrs_Radio_RadialGradient_1900
     * @tc.desic：Empty_Radio_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Radio")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Radio" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Radio" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_RadialGradient_2000
     * @tc.name： Test_EmptyAttrs_Rating_RadialGradient_2000
     * @tc.desic：Empty_Rating_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Rating")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Rating" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Rating" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_RadialGradient_2100
     * @tc.name： Test_EmptyAttrs_Refresh_RadialGradient_2100
     * @tc.desic：Empty_Refresh_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Refresh")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Refresh" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Refresh" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_RadialGradient_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_RadialGradient_2200
     * @tc.desic：Empty_RichEditor_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd RichEditor")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"RichEditor" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_RadialGradient_2300
     * @tc.name： Test_EmptyAttrs_RowSplit_RadialGradient_2300
     * @tc.desic：Empty_RowSplit_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_RowSplit_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd RowSplit")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"RowSplit" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_RadialGradient_2400
     * @tc.name： Test_EmptyAttrs_ScrollBar_RadialGradient_2400
     * @tc.desic：Empty_ScrollBar_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_ScrollBar_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd ScrollBar")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"ScrollBar" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_RadialGradient_2500
     * @tc.name： Test_EmptyAttrs_Search_RadialGradient_2500
     * @tc.desic：Empty_Search_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Search_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Search")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Search" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Search" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_RadialGradient_2600
     * @tc.name： Test_EmptyAttrs_Slider_RadialGradient_2600
     * @tc.desic：Empty_Slider_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Slider_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Slider")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Slider" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Slider" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_RadialGradient_2700
     * @tc.name： Test_EmptyAttrs_Stepper_RadialGradient_2700
     * @tc.desic：Empty_Stepper_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Stepper_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Stepper")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Stepper" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Stepper" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_RadialGradient_2800
     * @tc.name： Test_EmptyAttrs_StepperItem_RadialGradient_2800
     * @tc.desic：Empty_StepperItem_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_StepperItem_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd StepperItem")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"StepperItem" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_RadialGradient_2900
     * @tc.name： Test_EmptyAttrs_Text_RadialGradient_2900
     * @tc.desic：Empty_Text_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Text_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Text")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Text" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Text" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_RadialGradient_3000
     * @tc.name： Test_EmptyAttrs_TextArea_RadialGradient_3000
     * @tc.desic：Empty_TextArea_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_TextArea_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd TextArea")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"TextArea" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["TextArea" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_RadialGradient_3100
     * @tc.name： Test_EmptyAttrs_TextClock_RadialGradient_3100
     * @tc.desic：Empty_TextClock_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_TextClock_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd TextClock")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"TextClock" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["TextClock" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_RadialGradient_3200
     * @tc.name： Test_EmptyAttrs_TextInput_RadialGradient_3200
     * @tc.desic：Empty_TextInput_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_TextInput_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd TextInput")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"TextInput" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["TextInput" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_RadialGradient_3300
     * @tc.name： Test_EmptyAttrs_TextPicker_RadialGradient_3300
     * @tc.desic：Empty_TextPicker_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_TextPicker_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd TextPicker")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"TextPicker" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_RadialGradient_3400
     * @tc.name： Test_EmptyAttrs_TextTimer_RadialGradient_3400
     * @tc.desic：Empty_TextTimer_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_TextTimer_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd TextTimer")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"TextTimer" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_RadialGradient_3500
     * @tc.name： Test_EmptyAttrs_Toggle_RadialGradient_3500
     * @tc.desic：Empty_Toggle_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Toggle_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Toggle")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Toggle" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Toggle" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_RadialGradient_3600
     * @tc.name： Test_EmptyAttrs_Select_RadialGradient_3600
     * @tc.desic：Empty_Select_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Select_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Select")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Select" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Select" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_RadialGradient_3700
     * @tc.name： Test_EmptyAttrs_Badge_RadialGradient_3700
     * @tc.desic：Empty_Badge_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Badge_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Badge")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Badge" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Badge" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_RadialGradient_3800
     * @tc.name： Test_EmptyAttrs_Column_RadialGradient_3800
     * @tc.desic：Empty_Column_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Column_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Column")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Column" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Column" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_RadialGradient_3900
     * @tc.name： Test_EmptyAttrs_Grid_RadialGradient_3900
     * @tc.desic：Empty_Grid_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Grid_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Grid")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Grid" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Grid" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_RadialGradient_4000
     * @tc.name： Test_EmptyAttrs_GridItem_RadialGradient_4000
     * @tc.desic：Empty_GridItem_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_GridItem_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd GridItem")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"GridItem" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["GridItem" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_RadialGradient_4100
     * @tc.name： Test_EmptyAttrs_GridRow_RadialGradient_4100
     * @tc.desic：Empty_GridRow_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_GridRow_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd GridRow")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"GridRow" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["GridRow" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_RadialGradient_4200
     * @tc.name： Test_EmptyAttrs_GridCol_RadialGradient_4200
     * @tc.desic：Empty_GridCol_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_GridCol_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd GridCol")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"GridCol" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["GridCol" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_RadialGradient_4300
     * @tc.name： Test_EmptyAttrs_Flex_RadialGradient_4300
     * @tc.desic：Empty_Flex_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Flex_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Flex")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Flex" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Flex" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_RadialGradient_4400
     * @tc.name： Test_EmptyAttrs_List_RadialGradient_4400
     * @tc.desic：Empty_List_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_List_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd List")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"List" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["List" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_RadialGradient_4500
     * @tc.name： Test_EmptyAttrs_ListItem_RadialGradient_4500
     * @tc.desic：Empty_ListItem_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_ListItem_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd ListItem")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"ListItem" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["ListItem" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_RadialGradient_4600
     * @tc.name： Test_EmptyAttrs_ListItemGroup_RadialGradient_4600
     * @tc.desic：Empty_ListItemGroup_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_ListItemGroup_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"ListItemGroup" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_RadialGradient_4800
     * @tc.name： Test_EmptyAttrs_RelativeContainer_RadialGradient_4800
     * @tc.desic：Empty_RelativeContainer_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_RelativeContainer_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"RelativeContainer" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_RadialGradient_4900
     * @tc.name： Test_EmptyAttrs_Row_RadialGradient_4900
     * @tc.desic：Empty_Row_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Row_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Row")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Row" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Row" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_RadialGradient_5000
     * @tc.name： Test_EmptyAttrs_Scroll_RadialGradient_5000
     * @tc.desic：Empty_Scroll_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Scroll_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Scroll")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Scroll" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Scroll" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_RadialGradient_5100
     * @tc.name： Test_EmptyAttrs_Stack_RadialGradient_5100
     * @tc.desic：Empty_Stack_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Stack_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Stack")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Stack" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Stack" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_RadialGradient_5200
     * @tc.name： Test_EmptyAttrs_Swiper_RadialGradient_5200
     * @tc.desic：Empty_Swiper_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Swiper_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Swiper")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Swiper" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Swiper" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_RadialGradient_5300
     * @tc.name： Test_EmptyAttrs_Tabs_RadialGradient_5300
     * @tc.desic：Empty_Tabs_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Tabs_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Tabs")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Tabs" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Tabs" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_RadialGradient_5400
     * @tc.name： Test_EmptyAttrs_TabContent_RadialGradient_5400
     * @tc.desic：Empty_TabContent_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_TabContent_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd TabContent")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"TabContent" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["TabContent" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_RadialGradient_5500
     * @tc.name： Test_EmptyAttrs_Circle_RadialGradient_5500
     * @tc.desic：Empty_Circle_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Circle_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Circle")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Circle" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Circle" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_RadialGradient_5600
     * @tc.name： Test_EmptyAttrs_Line_RadialGradient_5600
     * @tc.desic：Empty_Line_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Line_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Line")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Line" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Line" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_RadialGradient_5700
     * @tc.name： Test_EmptyAttrs_Rect_RadialGradient_5700
     * @tc.desic：Empty_Rect_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Rect_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Rect")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Rect" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Rect" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_RadialGradient_5800
     * @tc.name： Test_EmptyAttrs_Shape_RadialGradient_5800
     * @tc.desic：Empty_Shape_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Shape_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Shape")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Shape" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Shape" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_RadialGradient_6000
     * @tc.name： Test_EmptyAttrs_Path_RadialGradient_6000
     * @tc.desic：Empty_Path_RadialGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_RadialGradient_Path_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient: FindEnd Path")
        sleepFor(1.second)
        for (RadialGradient_Prop in RadialGradient_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient_Prop: ${"Path" + RadialGradient_Prop[0]}")
            let viewPort = getInspector()["Path" + RadialGradient_Prop[0], "radialGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${RadialGradient_Prop[2]}", "test")
            @Expect(viewPort, RadialGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRadialGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
