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

@Test
class Test_EmptyAttrs_LayoutWeight {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("LayoutWeight")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_LayoutWeight_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_LayoutWeight_0100
     * @tc.desic：Empty_AlphabetIndexer_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        let viewPort1 = getInspector()["AlphabetIndexerLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["AlphabetIndexerLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_LayoutWeight_0200
     * @tc.name： Test_EmptyAttrs_Blank_LayoutWeight_0200
     * @tc.desic：Empty_Blank_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Blank")
        sleepFor(1.second)
        let viewPort1 = getInspector()["BlankLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["BlankLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_LayoutWeight_0300
     * @tc.name： Test_EmptyAttrs_Button_LayoutWeight_0300
     * @tc.desic：Empty_Button_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Button")
        sleepFor(1.second)
        let viewPort1 = getInspector()["ButtonLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["ButtonLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_LayoutWeight_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_LayoutWeight_0400
     * @tc.desic：Empty_Checkbox_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Checkbox")
        sleepFor(1.second)
        let viewPort1 = getInspector()["CheckboxLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["CheckboxLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_LayoutWeight_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_LayoutWeight_0500
     * @tc.desic：Empty_CheckboxGroup_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd CheckboxGroup")
        sleepFor(1.second)
        let viewPort1 = getInspector()["CheckboxGroupLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["CheckboxGroupLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_LayoutWeight_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_LayoutWeight_0700
     * @tc.desic：Empty_DataPanel_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd DataPanel")
        sleepFor(1.second)
        let viewPort1 = getInspector()["DataPanelLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["DataPanelLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_LayoutWeight_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_LayoutWeight_0800
     * @tc.desic：Empty_DatePicker_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd DatePicker")
        sleepFor(1.second)
        let viewPort1 = getInspector()["DatePickerLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["DatePickerLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_LayoutWeight_0900
     * @tc.name： Test_EmptyAttrs_Divider_LayoutWeight_0900
     * @tc.desic：Empty_Divider_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Divider")
        sleepFor(1.second)
        let viewPort1 = getInspector()["DividerLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["DividerLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_LayoutWeight_1000
     * @tc.name： Test_EmptyAttrs_Gauge_LayoutWeight_1000
     * @tc.desic：Empty_Gauge_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Gauge")
        sleepFor(1.second)
        let viewPort1 = getInspector()["GaugeLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["GaugeLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_LayoutWeight_1100
     * @tc.name： Test_EmptyAttrs_Image_LayoutWeight_1100
     * @tc.desic：Empty_Image_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Image")
        sleepFor(1.second)
        let viewPort1 = getInspector()["ImageLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["ImageLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_LayoutWeight_1200
     * @tc.name： Test_EmptyAttrs_LoadingProgress_LayoutWeight_1200
     * @tc.desic：Empty_LoadingProgress_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_LoadingProgress_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd LoadingProgress")
        sleepFor(1.second)
        let viewPort1 = getInspector()["LoadingProgressLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["LoadingProgressLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_LayoutWeight_1300
     * @tc.name： Test_EmptyAttrs_Menu_LayoutWeight_1300
     * @tc.desic：Empty_Menu_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Menu_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Menu")
        sleepFor(1.second)
        let viewPort1 = getInspector()["MenuLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["MenuLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_LayoutWeight_1400
     * @tc.name： Test_EmptyAttrs_Progress_LayoutWeight_1400
     * @tc.desic：Empty_Progress_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Progress_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Progress")
        sleepFor(1.second)
        let viewPort1 = getInspector()["ProgressLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["ProgressLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_LayoutWeight_1500
     * @tc.name： Test_EmptyAttrs_QRCode_LayoutWeight_1500
     * @tc.desic：Empty_QRCode_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_QRCode_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd QRCode")
        sleepFor(1.second)
        let viewPort1 = getInspector()["QRCodeLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["QRCodeLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_LayoutWeight_1600
     * @tc.name： Test_EmptyAttrs_Radio_LayoutWeight_1600
     * @tc.desic：Empty_Radio_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Radio_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Radio")
        sleepFor(1.second)
        let viewPort1 = getInspector()["RadioLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["RadioLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_LayoutWeight_1700
     * @tc.name： Test_EmptyAttrs_Rating_LayoutWeight_1700
     * @tc.desic：Empty_Rating_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Rating_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Rating")
        sleepFor(1.second)
        let viewPort1 = getInspector()["RatingLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["RatingLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_LayoutWeight_1800
     * @tc.name： Test_EmptyAttrs_Refresh_LayoutWeight_1800
     * @tc.desic：Empty_Refresh_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Refresh_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Refresh")
        sleepFor(1.second)
        let viewPort1 = getInspector()["RefreshLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["RefreshLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_LayoutWeight_1900
     * @tc.name： Test_EmptyAttrs_RichEditor_LayoutWeight_1900
     * @tc.desic：Empty_RichEditor_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_RichEditor_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd RichEditor")
        sleepFor(1.second)
        let viewPort1 = getInspector()["RichEditorLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["RichEditorLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_LayoutWeight_2000
     * @tc.name： Test_EmptyAttrs_RichText_LayoutWeight_2000
     * @tc.desic：Empty_RichText_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_RichText_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd RichText")
        sleepFor(1.second)
        let viewPort1 = getInspector()["RichTextLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["RichTextLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_LayoutWeight_2100
     * @tc.name： Test_EmptyAttrs_RowSplit_LayoutWeight_2100
     * @tc.desic：Empty_RowSplit_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_RowSplit_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd RowSplit")
        sleepFor(1.second)
        let viewPort1 = getInspector()["RowSplitLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["RowSplitLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_LayoutWeight_2200
     * @tc.name： Test_EmptyAttrs_ScrollBar_LayoutWeight_2200
     * @tc.desic：Empty_ScrollBar_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_ScrollBar_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd ScrollBar")
        sleepFor(1.second)
        let viewPort1 = getInspector()["ScrollBarLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["ScrollBarLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_LayoutWeight_2300
     * @tc.name： Test_EmptyAttrs_Search_LayoutWeight_2300
     * @tc.desic：Empty_Search_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Search_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Search")
        sleepFor(1.second)
        let viewPort1 = getInspector()["SearchLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["SearchLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_LayoutWeight_2400
     * @tc.name： Test_EmptyAttrs_Slider_LayoutWeight_2400
     * @tc.desic：Empty_Slider_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Slider_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Slider")
        sleepFor(1.second)
        let viewPort1 = getInspector()["SliderLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["SliderLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_LayoutWeight_2500
     * @tc.name： Test_EmptyAttrs_Stepper_LayoutWeight_2500
     * @tc.desic：Empty_Stepper_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Stepper_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Stepper")
        sleepFor(1.second)
        let viewPort1 = getInspector()["StepperLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["StepperLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_LayoutWeight_2600
     * @tc.name： Test_EmptyAttrs_Text_LayoutWeight_2600
     * @tc.desic：Empty_Text_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Text_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Text")
        sleepFor(1.second)
        let viewPort1 = getInspector()["TextLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["TextLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_LayoutWeight_2700
     * @tc.name： Test_EmptyAttrs_TextArea_LayoutWeight_2700
     * @tc.desic：Empty_TextArea_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_TextArea_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd TextArea")
        sleepFor(1.second)
        let viewPort1 = getInspector()["TextAreaLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["TextAreaLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_LayoutWeight_2800
     * @tc.name： Test_EmptyAttrs_TextClock_LayoutWeight_2800
     * @tc.desic：Empty_TextClock_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_TextClock_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd TextClock")
        sleepFor(1.second)
        let viewPort1 = getInspector()["TextClockLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["TextClockLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_LayoutWeight_2900
     * @tc.name： Test_EmptyAttrs_TextInput_LayoutWeight_2900
     * @tc.desic：Empty_TextInput_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_TextInput_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd TextInput")
        sleepFor(1.second)
        let viewPort1 = getInspector()["TextInputLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["TextInputLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_LayoutWeight_3000
     * @tc.name： Test_EmptyAttrs_TextPicker_LayoutWeight_3000
     * @tc.desic：Empty_TextPicker_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_TextPicker_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd TextPicker")
        sleepFor(1.second)
        let viewPort1 = getInspector()["TextPickerLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["TextPickerLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_LayoutWeight_3100
     * @tc.name： Test_EmptyAttrs_TextTimer_LayoutWeight_3100
     * @tc.desic：Empty_TextTimer_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_TextTimer_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd TextTimer")
        sleepFor(1.second)
        let viewPort1 = getInspector()["TextTimerLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["TextTimerLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_LayoutWeight_3200
     * @tc.name： Test_EmptyAttrs_Toggle_LayoutWeight_3200
     * @tc.desic：Empty_Toggle_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Toggle_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Toggle")
        sleepFor(1.second)
        let viewPort1 = getInspector()["ToggleLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["ToggleLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_LayoutWeight_3300
     * @tc.name： Test_EmptyAttrs_Web_LayoutWeight_3300
     * @tc.desic：Empty_Web_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Web_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Web")
        sleepFor(1.second)
        let viewPort1 = getInspector()["WebLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["WebLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_LayoutWeight_3400
     * @tc.name： Test_EmptyAttrs_Select_LayoutWeight_3400
     * @tc.desic：Empty_Select_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Select_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Select")
        sleepFor(1.second)
        let viewPort1 = getInspector()["SelectLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["SelectLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_LayoutWeight_3500
     * @tc.name： Test_EmptyAttrs_Badge_LayoutWeight_3500
     * @tc.desic：Empty_Badge_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Badge_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Badge")
        sleepFor(1.second)
        let viewPort1 = getInspector()["BadgeLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["BadgeLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_LayoutWeight_3600
     * @tc.name： Test_EmptyAttrs_Column_LayoutWeight_3600
     * @tc.desic：Empty_Column_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Column_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Column")
        sleepFor(1.second)
        let viewPort1 = getInspector()["ColumnLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["ColumnLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_LayoutWeight_3700
     * @tc.name： Test_EmptyAttrs_Grid_LayoutWeight_3700
     * @tc.desic：Empty_Grid_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Grid_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Grid")
        sleepFor(1.second)
        let viewPort1 = getInspector()["GridLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["GridLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_LayoutWeight_3800
     * @tc.name： Test_EmptyAttrs_GridRow_LayoutWeight_3800
     * @tc.desic：Empty_GridRow_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_GridRow_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd GridRow")
        sleepFor(1.second)
        let viewPort1 = getInspector()["GridRowLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["GridRowLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_LayoutWeight_3900
     * @tc.name： Test_EmptyAttrs_Flex_LayoutWeight_3900
     * @tc.desic：Empty_Flex_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Flex_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Flex")
        sleepFor(1.second)
        let viewPort1 = getInspector()["FlexLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["FlexLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_LayoutWeight_4000
     * @tc.name： Test_EmptyAttrs_List_LayoutWeight_4000
     * @tc.desic：Empty_List_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_List_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd List")
        sleepFor(1.second)
        let viewPort1 = getInspector()["ListLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["ListLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }




    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_LayoutWeight_4200
     * @tc.name： Test_EmptyAttrs_RelativeContainer_LayoutWeight_4200
     * @tc.desic：Empty_RelativeContainer_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_RelativeContainer_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd RelativeContainer")
        sleepFor(1.second)
        let viewPort1 = getInspector()["RelativeContainerLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["RelativeContainerLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_LayoutWeight_4300
     * @tc.name： Test_EmptyAttrs_Row_LayoutWeight_4300
     * @tc.desic：Empty_Row_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Row_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Row")
        sleepFor(1.second)
        let viewPort1 = getInspector()["RowLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["RowLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_LayoutWeight_4400
     * @tc.name： Test_EmptyAttrs_Scroll_LayoutWeight_4400
     * @tc.desic：Empty_Scroll_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Scroll_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Scroll")
        sleepFor(1.second)
        let viewPort1 = getInspector()["ScrollLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["ScrollLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_LayoutWeight_4500
     * @tc.name： Test_EmptyAttrs_Stack_LayoutWeight_4500
     * @tc.desic：Empty_Stack_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Stack_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Stack")
        sleepFor(1.second)
        let viewPort1 = getInspector()["StackLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["StackLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_LayoutWeight_4600
     * @tc.name： Test_EmptyAttrs_Swiper_LayoutWeight_4600
     * @tc.desic：Empty_Swiper_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Swiper_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Swiper")
        sleepFor(1.second)
        let viewPort1 = getInspector()["SwiperLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["SwiperLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_LayoutWeight_4700
     * @tc.name： Test_EmptyAttrs_Tabs_LayoutWeight_4700
     * @tc.desic：Empty_Tabs_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Tabs_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Tabs")
        sleepFor(1.second)
        let viewPort1 = getInspector()["TabsLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["TabsLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_LayoutWeight_4800
     * @tc.name： Test_EmptyAttrs_Circle_LayoutWeight_4800
     * @tc.desic：Empty_Circle_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Circle_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Circle")
        sleepFor(1.second)
        let viewPort1 = getInspector()["CircleLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["CircleLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_LayoutWeight_4900
     * @tc.name： Test_EmptyAttrs_Line_LayoutWeight_4900
     * @tc.desic：Empty_Line_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Line_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Line")
        sleepFor(1.second)
        let viewPort1 = getInspector()["LineLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["LineLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_LayoutWeight_5000
     * @tc.name： Test_EmptyAttrs_Rect_LayoutWeight_5000
     * @tc.desic：Empty_Rect_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Rect_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Rect")
        sleepFor(1.second)
        let viewPort1 = getInspector()["RectLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["RectLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_LayoutWeight_5100
     * @tc.name： Test_EmptyAttrs_Shape_LayoutWeight_5100
     * @tc.desic：Empty_Shape_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Shape_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Shape")
        sleepFor(1.second)
        let viewPort1 = getInspector()["ShapeLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["ShapeLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_LayoutWeight_5300
     * @tc.name： Test_EmptyAttrs_Path_LayoutWeight_5300
     * @tc.desic：Empty_Path_LayoutWeight
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_LayoutWeight_Path_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight: FindEnd Path")
        sleepFor(1.second)
        let viewPort1 = getInspector()["PathLayoutWeight1", "layoutWeight"]
        let viewPort2 = getInspector()["PathLayoutWeight2", "layoutWeight"]
        Hilog.info(0, "cangjietest", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect1: \"1\"")
        @Expect(viewPort1, "1")
        Hilog.info(0, "cangjietest", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "CheckCheckExpect2: \"2\"")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "CheckCheckLayoutWeight:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
