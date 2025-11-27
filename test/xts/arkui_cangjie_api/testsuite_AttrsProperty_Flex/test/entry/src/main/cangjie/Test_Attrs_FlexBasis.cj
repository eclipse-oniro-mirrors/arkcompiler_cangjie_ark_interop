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
class Test_EmptyAttrs_FlexBasis {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("FlexBasis")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_FlexBasis_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_FlexBasis_0100
     * @tc.desic：Empty_AlphabetIndexer_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"AlphabetIndexer" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_FlexBasis_0200
     * @tc.name： Test_EmptyAttrs_Blank_FlexBasis_0200
     * @tc.desic：Empty_Blank_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Blank")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Blank" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Blank" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_FlexBasis_0300
     * @tc.name： Test_EmptyAttrs_Button_FlexBasis_0300
     * @tc.desic：Empty_Button_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Button")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Button" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Button" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_FlexBasis_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_FlexBasis_0400
     * @tc.desic：Empty_Checkbox_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Checkbox")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Checkbox" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_FlexBasis_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_FlexBasis_0500
     * @tc.desic：Empty_CheckboxGroup_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"CheckboxGroup" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_FlexBasis_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_FlexBasis_0700
     * @tc.desic：Empty_DataPanel_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd DataPanel")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"DataPanel" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_FlexBasis_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_FlexBasis_0800
     * @tc.desic：Empty_DatePicker_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd DatePicker")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"DatePicker" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_FlexBasis_0900
     * @tc.name： Test_EmptyAttrs_Divider_FlexBasis_0900
     * @tc.desic：Empty_Divider_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Divider")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Divider" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Divider" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_FlexBasis_1000
     * @tc.name： Test_EmptyAttrs_Gauge_FlexBasis_1000
     * @tc.desic：Empty_Gauge_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Gauge")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Gauge" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Gauge" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_FlexBasis_1100
     * @tc.name： Test_EmptyAttrs_Image_FlexBasis_1100
     * @tc.desic：Empty_Image_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Image")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Image" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Image" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_FlexBasis_1200
     * @tc.name： Test_EmptyAttrs_LoadingProgress_FlexBasis_1200
     * @tc.desic：Empty_LoadingProgress_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_LoadingProgress_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"LoadingProgress" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_FlexBasis_1300
     * @tc.name： Test_EmptyAttrs_Menu_FlexBasis_1300
     * @tc.desic：Empty_Menu_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Menu_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Menu")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Menu" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Menu" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_FlexBasis_1400
     * @tc.name： Test_EmptyAttrs_Progress_FlexBasis_1400
     * @tc.desic：Empty_Progress_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Progress_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Progress")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Progress" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Progress" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_FlexBasis_1500
     * @tc.name： Test_EmptyAttrs_QRCode_FlexBasis_1500
     * @tc.desic：Empty_QRCode_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_QRCode_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd QRCode")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"QRCode" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["QRCode" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_FlexBasis_1600
     * @tc.name： Test_EmptyAttrs_Radio_FlexBasis_1600
     * @tc.desic：Empty_Radio_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Radio_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Radio")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Radio" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Radio" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_FlexBasis_1700
     * @tc.name： Test_EmptyAttrs_Rating_FlexBasis_1700
     * @tc.desic：Empty_Rating_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Rating_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Rating")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Rating" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Rating" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_FlexBasis_1800
     * @tc.name： Test_EmptyAttrs_Refresh_FlexBasis_1800
     * @tc.desic：Empty_Refresh_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Refresh_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Refresh")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Refresh" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Refresh" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_FlexBasis_1900
     * @tc.name： Test_EmptyAttrs_RichEditor_FlexBasis_1900
     * @tc.desic：Empty_RichEditor_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_RichEditor_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd RichEditor")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"RichEditor" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_FlexBasis_2000
     * @tc.name： Test_EmptyAttrs_RichText_FlexBasis_2000
     * @tc.desic：Empty_RichText_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_RichText_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd RichText")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"RichText" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["RichText" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_FlexBasis_2100
     * @tc.name： Test_EmptyAttrs_RowSplit_FlexBasis_2100
     * @tc.desic：Empty_RowSplit_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_RowSplit_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd RowSplit")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"RowSplit" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_FlexBasis_2200
     * @tc.name： Test_EmptyAttrs_ScrollBar_FlexBasis_2200
     * @tc.desic：Empty_ScrollBar_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_ScrollBar_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd ScrollBar")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"ScrollBar" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_FlexBasis_2300
     * @tc.name： Test_EmptyAttrs_Search_FlexBasis_2300
     * @tc.desic：Empty_Search_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Search_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Search")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Search" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Search" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_FlexBasis_2400
     * @tc.name： Test_EmptyAttrs_Slider_FlexBasis_2400
     * @tc.desic：Empty_Slider_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Slider_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Slider")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Slider" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Slider" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_FlexBasis_2500
     * @tc.name： Test_EmptyAttrs_Stepper_FlexBasis_2500
     * @tc.desic：Empty_Stepper_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Stepper_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Stepper")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Stepper" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Stepper" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_FlexBasis_2600
     * @tc.name： Test_EmptyAttrs_Text_FlexBasis_2600
     * @tc.desic：Empty_Text_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Text_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Text")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Text" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Text" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_FlexBasis_2700
     * @tc.name： Test_EmptyAttrs_TextArea_FlexBasis_2700
     * @tc.desic：Empty_TextArea_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_TextArea_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd TextArea")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"TextArea" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["TextArea" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_FlexBasis_2800
     * @tc.name： Test_EmptyAttrs_TextClock_FlexBasis_2800
     * @tc.desic：Empty_TextClock_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_TextClock_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd TextClock")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"TextClock" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["TextClock" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_FlexBasis_2900
     * @tc.name： Test_EmptyAttrs_TextInput_FlexBasis_2900
     * @tc.desic：Empty_TextInput_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_TextInput_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd TextInput")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"TextInput" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["TextInput" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_FlexBasis_3000
     * @tc.name： Test_EmptyAttrs_TextPicker_FlexBasis_3000
     * @tc.desic：Empty_TextPicker_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_TextPicker_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd TextPicker")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"TextPicker" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_FlexBasis_3100
     * @tc.name： Test_EmptyAttrs_TextTimer_FlexBasis_3100
     * @tc.desic：Empty_TextTimer_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_TextTimer_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd TextTimer")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"TextTimer" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_FlexBasis_3200
     * @tc.name： Test_EmptyAttrs_Toggle_FlexBasis_3200
     * @tc.desic：Empty_Toggle_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Toggle_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Toggle")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Toggle" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Toggle" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_FlexBasis_3300
     * @tc.name： Test_EmptyAttrs_Web_FlexBasis_3300
     * @tc.desic：Empty_Web_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Web_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Web")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Web" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Web" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_FlexBasis_3400
     * @tc.name： Test_EmptyAttrs_Select_FlexBasis_3400
     * @tc.desic：Empty_Select_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Select_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Select")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Select" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Select" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_FlexBasis_3500
     * @tc.name： Test_EmptyAttrs_Badge_FlexBasis_3500
     * @tc.desic：Empty_Badge_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Badge_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Badge")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Badge" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Badge" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_FlexBasis_3600
     * @tc.name： Test_EmptyAttrs_Column_FlexBasis_3600
     * @tc.desic：Empty_Column_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Column_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Column")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Column" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Column" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_FlexBasis_3700
     * @tc.name： Test_EmptyAttrs_Grid_FlexBasis_3700
     * @tc.desic：Empty_Grid_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Grid_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Grid")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Grid" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Grid" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_FlexBasis_3800
     * @tc.name： Test_EmptyAttrs_GridRow_FlexBasis_3800
     * @tc.desic：Empty_GridRow_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_GridRow_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd GridRow")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"GridRow" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["GridRow" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_FlexBasis_3900
     * @tc.name： Test_EmptyAttrs_Flex_FlexBasis_3900
     * @tc.desic：Empty_Flex_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Flex_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Flex")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Flex" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Flex" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_FlexBasis_4000
     * @tc.name： Test_EmptyAttrs_List_FlexBasis_4000
     * @tc.desic：Empty_List_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_List_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd List")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"List" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["List" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_FlexBasis_4200
     * @tc.name： Test_EmptyAttrs_RelativeContainer_FlexBasis_4200
     * @tc.desic：Empty_RelativeContainer_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_RelativeContainer_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"RelativeContainer" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_FlexBasis_4300
     * @tc.name： Test_EmptyAttrs_Row_FlexBasis_4300
     * @tc.desic：Empty_Row_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Row_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Row")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Row" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Row" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_FlexBasis_4400
     * @tc.name： Test_EmptyAttrs_Scroll_FlexBasis_4400
     * @tc.desic：Empty_Scroll_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Scroll_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Scroll")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Scroll" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Scroll" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_FlexBasis_4500
     * @tc.name： Test_EmptyAttrs_Stack_FlexBasis_4500
     * @tc.desic：Empty_Stack_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Stack_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Stack")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Stack" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Stack" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_FlexBasis_4600
     * @tc.name： Test_EmptyAttrs_Swiper_FlexBasis_4600
     * @tc.desic：Empty_Swiper_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Swiper_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Swiper")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Swiper" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Swiper" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_FlexBasis_4700
     * @tc.name： Test_EmptyAttrs_Tabs_FlexBasis_4700
     * @tc.desic：Empty_Tabs_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Tabs_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Tabs")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Tabs" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Tabs" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_FlexBasis_4800
     * @tc.name： Test_EmptyAttrs_Circle_FlexBasis_4800
     * @tc.desic：Empty_Circle_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Circle_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Circle")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Circle" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Circle" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_FlexBasis_4900
     * @tc.name： Test_EmptyAttrs_Line_FlexBasis_4900
     * @tc.desic：Empty_Line_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Line_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Line")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Line" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Line" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_FlexBasis_5000
     * @tc.name： Test_EmptyAttrs_Rect_FlexBasis_5000
     * @tc.desic：Empty_Rect_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Rect_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Rect")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Rect" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Rect" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_FlexBasis_5100
     * @tc.name： Test_EmptyAttrs_Shape_FlexBasis_5100
     * @tc.desic：Empty_Shape_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Shape_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Shape")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Shape" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Shape" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_FlexBasis_5300
     * @tc.name： Test_EmptyAttrs_Path_FlexBasis_5300
     * @tc.desic：Empty_Path_FlexBasis
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexBasis_Path_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis: FindEnd Path")
        sleepFor(1.second)
        for (FlexBasis_Prop in FlexBasis_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis_Prop: ${"Path" + FlexBasis_Prop[0]}")
            let viewPort = getInspector()["Path" + FlexBasis_Prop[0], "flexBasis"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${FlexBasis_Prop[2]}")
            @Expect(viewPort, FlexBasis_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexBasis:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
