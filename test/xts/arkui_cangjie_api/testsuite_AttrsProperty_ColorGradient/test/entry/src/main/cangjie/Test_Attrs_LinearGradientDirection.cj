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
class Test_Attrs_LinearGradientDirection {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("LinearGradientDirection")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_LinearGradient_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_LinearGradient_0100
     * @tc.desic：Empty_AlphabetIndexer_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "CheckCheckLinearGradient_Prop: ${"AlphabetIndexer" + LinearGradient_Prop[0]}", "test")
            let viewPort = getInspector()["AlphabetIndexer" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_LinearGradient_0200
     * @tc.name： Test_EmptyAttrs_Blank_LinearGradient_0200
     * @tc.desic：Empty_Blank_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Blank")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Blank" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Blank" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_LinearGradient_0300
     * @tc.name： Test_EmptyAttrs_Button_LinearGradient_0300
     * @tc.desic：Empty_Button_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Button")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Button" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Button" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_LinearGradient_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_LinearGradient_0400
     * @tc.desic：Empty_Checkbox_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Checkbox")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Checkbox" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_LinearGradient_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_LinearGradient_0500
     * @tc.desic：Empty_CheckboxGroup_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"CheckboxGroup" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_LinearGradient_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_LinearGradient_0700
     * @tc.desic：Empty_DataPanel_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd DataPanel")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"DataPanel" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_LinearGradient_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_LinearGradient_0800
     * @tc.desic：Empty_DatePicker_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd DatePicker")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"DatePicker" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_LinearGradient_0900
     * @tc.name： Test_EmptyAttrs_Divider_LinearGradient_0900
     * @tc.desic：Empty_Divider_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Divider")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Divider" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Divider" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_LinearGradient_1000
     * @tc.name： Test_EmptyAttrs_Gauge_LinearGradient_1000
     * @tc.desic：Empty_Gauge_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Gauge")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Gauge" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Gauge" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_LinearGradient_1100
     * @tc.name： Test_EmptyAttrs_Image_LinearGradient_1100
     * @tc.desic：Empty_Image_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Image")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Image" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Image" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_LinearGradient_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_LinearGradient_1200
     * @tc.desic：Empty_ImageSpan_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd ImageSpan")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"ImageSpan" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_LinearGradient_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_LinearGradient_1300
     * @tc.desic：Empty_LoadingProgress_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"LoadingProgress" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_LinearGradient_1400
     * @tc.name： Test_EmptyAttrs_Menu_LinearGradient_1400
     * @tc.desic：Empty_Menu_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Menu")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Menu" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Menu" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_LinearGradient_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_LinearGradient_1500
     * @tc.desic：Empty_MenuItem_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd MenuItem")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"MenuItem" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_LinearGradient_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_LinearGradient_1600
     * @tc.desic：Empty_MenuItemGroup_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"MenuItemGroup" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_LinearGradient_1700
     * @tc.name： Test_EmptyAttrs_Progress_LinearGradient_1700
     * @tc.desic：Empty_Progress_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Progress")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Progress" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Progress" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_LinearGradient_1800
     * @tc.name： Test_EmptyAttrs_QRCode_LinearGradient_1800
     * @tc.desic：Empty_QRCode_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd QRCode")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"QRCode" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["QRCode" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_LinearGradient_1900
     * @tc.name： Test_EmptyAttrs_Radio_LinearGradient_1900
     * @tc.desic：Empty_Radio_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Radio")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Radio" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Radio" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_LinearGradient_2000
     * @tc.name： Test_EmptyAttrs_Rating_LinearGradient_2000
     * @tc.desic：Empty_Rating_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Rating")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Rating" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Rating" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_LinearGradient_2100
     * @tc.name： Test_EmptyAttrs_Refresh_LinearGradient_2100
     * @tc.desic：Empty_Refresh_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Refresh")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Refresh" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Refresh" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_LinearGradient_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_LinearGradient_2200
     * @tc.desic：Empty_RichEditor_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd RichEditor")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"RichEditor" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_LinearGradient_2300
     * @tc.name： Test_EmptyAttrs_RowSplit_LinearGradient_2300
     * @tc.desic：Empty_RowSplit_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_RowSplit_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd RowSplit")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"RowSplit" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_LinearGradient_2400
     * @tc.name： Test_EmptyAttrs_ScrollBar_LinearGradient_2400
     * @tc.desic：Empty_ScrollBar_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_ScrollBar_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd ScrollBar")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"ScrollBar" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_LinearGradient_2500
     * @tc.name： Test_EmptyAttrs_Search_LinearGradient_2500
     * @tc.desic：Empty_Search_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Search_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Search")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Search" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Search" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_LinearGradient_2600
     * @tc.name： Test_EmptyAttrs_Slider_LinearGradient_2600
     * @tc.desic：Empty_Slider_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Slider_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Slider")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Slider" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Slider" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_LinearGradient_2700
     * @tc.name： Test_EmptyAttrs_Stepper_LinearGradient_2700
     * @tc.desic：Empty_Stepper_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Stepper_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Stepper")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Stepper" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Stepper" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_LinearGradient_2800
     * @tc.name： Test_EmptyAttrs_StepperItem_LinearGradient_2800
     * @tc.desic：Empty_StepperItem_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_StepperItem_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd StepperItem")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"StepperItem" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_LinearGradient_2900
     * @tc.name： Test_EmptyAttrs_Text_LinearGradient_2900
     * @tc.desic：Empty_Text_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Text_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Text")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Text" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Text" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_LinearGradient_3000
     * @tc.name： Test_EmptyAttrs_TextArea_LinearGradient_3000
     * @tc.desic：Empty_TextArea_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_TextArea_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd TextArea")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"TextArea" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["TextArea" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_LinearGradient_3100
     * @tc.name： Test_EmptyAttrs_TextClock_LinearGradient_3100
     * @tc.desic：Empty_TextClock_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_TextClock_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd TextClock")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"TextClock" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["TextClock" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_LinearGradient_3200
     * @tc.name： Test_EmptyAttrs_TextInput_LinearGradient_3200
     * @tc.desic：Empty_TextInput_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_TextInput_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd TextInput")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"TextInput" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["TextInput" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_LinearGradient_3300
     * @tc.name： Test_EmptyAttrs_TextPicker_LinearGradient_3300
     * @tc.desic：Empty_TextPicker_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_TextPicker_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd TextPicker")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"TextPicker" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_LinearGradient_3400
     * @tc.name： Test_EmptyAttrs_TextTimer_LinearGradient_3400
     * @tc.desic：Empty_TextTimer_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_TextTimer_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd TextTimer")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"TextTimer" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_LinearGradient_3500
     * @tc.name： Test_EmptyAttrs_Toggle_LinearGradient_3500
     * @tc.desic：Empty_Toggle_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Toggle_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Toggle")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Toggle" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Toggle" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_LinearGradient_3600
     * @tc.name： Test_EmptyAttrs_Select_LinearGradient_3600
     * @tc.desic：Empty_Select_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Select_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Select")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Select" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Select" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_LinearGradient_3700
     * @tc.name： Test_EmptyAttrs_Badge_LinearGradient_3700
     * @tc.desic：Empty_Badge_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Badge_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Badge")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Badge" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Badge" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_LinearGradient_3800
     * @tc.name： Test_EmptyAttrs_Column_LinearGradient_3800
     * @tc.desic：Empty_Column_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Column_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Column")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Column" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Column" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_LinearGradient_3900
     * @tc.name： Test_EmptyAttrs_Grid_LinearGradient_3900
     * @tc.desic：Empty_Grid_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Grid_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Grid")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Grid" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Grid" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_LinearGradient_4000
     * @tc.name： Test_EmptyAttrs_GridItem_LinearGradient_4000
     * @tc.desic：Empty_GridItem_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_GridItem_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd GridItem")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"GridItem" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["GridItem" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_LinearGradient_4100
     * @tc.name： Test_EmptyAttrs_GridRow_LinearGradient_4100
     * @tc.desic：Empty_GridRow_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_GridRow_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd GridRow")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"GridRow" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["GridRow" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_LinearGradient_4200
     * @tc.name： Test_EmptyAttrs_GridCol_LinearGradient_4200
     * @tc.desic：Empty_GridCol_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_GridCol_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd GridCol")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"GridCol" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["GridCol" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_LinearGradient_4300
     * @tc.name： Test_EmptyAttrs_Flex_LinearGradient_4300
     * @tc.desic：Empty_Flex_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Flex_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Flex")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Flex" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Flex" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_LinearGradient_4400
     * @tc.name： Test_EmptyAttrs_List_LinearGradient_4400
     * @tc.desic：Empty_List_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_List_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd List")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"List" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["List" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_LinearGradient_4500
     * @tc.name： Test_EmptyAttrs_ListItem_LinearGradient_4500
     * @tc.desic：Empty_ListItem_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_ListItem_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd ListItem")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"ListItem" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["ListItem" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_LinearGradient_4600
     * @tc.name： Test_EmptyAttrs_ListItemGroup_LinearGradient_4600
     * @tc.desic：Empty_ListItemGroup_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_ListItemGroup_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"ListItemGroup" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_LinearGradient_4800
     * @tc.name： Test_EmptyAttrs_RelativeContainer_LinearGradient_4800
     * @tc.desic：Empty_RelativeContainer_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_RelativeContainer_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"RelativeContainer" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_LinearGradient_4900
     * @tc.name： Test_EmptyAttrs_Row_LinearGradient_4900
     * @tc.desic：Empty_Row_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Row_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Row")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Row" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Row" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_LinearGradient_5000
     * @tc.name： Test_EmptyAttrs_Scroll_LinearGradient_5000
     * @tc.desic：Empty_Scroll_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Scroll_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Scroll")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Scroll" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Scroll" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_LinearGradient_5100
     * @tc.name： Test_EmptyAttrs_Stack_LinearGradient_5100
     * @tc.desic：Empty_Stack_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Stack_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Stack")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Stack" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Stack" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_LinearGradient_5200
     * @tc.name： Test_EmptyAttrs_Swiper_LinearGradient_5200
     * @tc.desic：Empty_Swiper_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Swiper_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Swiper")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Swiper" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Swiper" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_LinearGradient_5300
     * @tc.name： Test_EmptyAttrs_Tabs_LinearGradient_5300
     * @tc.desic：Empty_Tabs_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Tabs_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Tabs")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Tabs" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Tabs" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_LinearGradient_5400
     * @tc.name： Test_EmptyAttrs_TabContent_LinearGradient_5400
     * @tc.desic：Empty_TabContent_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_TabContent_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd TabContent")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"TabContent" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["TabContent" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_LinearGradient_5500
     * @tc.name： Test_EmptyAttrs_Circle_LinearGradient_5500
     * @tc.desic：Empty_Circle_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Circle_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Circle")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Circle" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Circle" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_LinearGradient_5600
     * @tc.name： Test_EmptyAttrs_Line_LinearGradient_5600
     * @tc.desic：Empty_Line_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Line_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Line")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Line" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Line" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_LinearGradient_5700
     * @tc.name： Test_EmptyAttrs_Rect_LinearGradient_5700
     * @tc.desic：Empty_Rect_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Rect_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Rect")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Rect" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Rect" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_LinearGradient_5800
     * @tc.name： Test_EmptyAttrs_Shape_LinearGradient_5800
     * @tc.desic：Empty_Shape_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Shape_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Shape")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Shape" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Shape" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_LinearGradient_6000
     * @tc.name： Test_EmptyAttrs_Path_LinearGradient_6000
     * @tc.desic：Empty_Path_LinearGradient
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LinearGradientDirect_Path_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient: FindEnd Path")
        sleepFor(1.second)
        for (LinearGradient_Prop in LinearGradient_Prop_List_Enum) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient_Prop: ${"Path" + LinearGradient_Prop[0]}")
            let viewPort = getInspector()["Path" + LinearGradient_Prop[0], "linearGradient"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${LinearGradient_Prop[2]}", "test")
            @Expect(viewPort, LinearGradient_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckLinearGradient:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
