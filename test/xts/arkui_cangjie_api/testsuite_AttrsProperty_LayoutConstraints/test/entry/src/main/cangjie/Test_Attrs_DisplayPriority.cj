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
class Test_EmptyAttrs_DisplayPriority {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("DisplayPriority")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_DisplayPriority_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_DisplayPriority_0100
     * @tc.desic：Empty_AlphabetIndexer_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd AlphabetIndexer")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: AlphabetIndexerDisplayPriority ")
        let viewPort1 = getInspector()["AlphabetIndexerDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["AlphabetIndexerDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_DisplayPriority_0200
     * @tc.name： Test_EmptyAttrs_Blank_DisplayPriority_0200
     * @tc.desic：Empty_Blank_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Blank")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: BlankDisplayPriority ")
        let viewPort1 = getInspector()["BlankDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["BlankDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_DisplayPriority_0300
     * @tc.name： Test_EmptyAttrs_Button_DisplayPriority_0300
     * @tc.desic：Empty_Button_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Button")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ButtonDisplayPriority ")
        let viewPort1 = getInspector()["ButtonDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["ButtonDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_DisplayPriority_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_DisplayPriority_0400
     * @tc.desic：Empty_Checkbox_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Checkbox")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: CheckboxDisplayPriority ")
        let viewPort1 = getInspector()["CheckboxDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["CheckboxDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_DisplayPriority_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_DisplayPriority_0500
     * @tc.desic：Empty_CheckboxGroup_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd CheckboxGroup")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: CheckboxGroupDisplayPriority ")
        let viewPort1 = getInspector()["CheckboxGroupDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["CheckboxGroupDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_DisplayPriority_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_DisplayPriority_0700
     * @tc.desic：Empty_DataPanel_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd DataPanel")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: DataPanelDisplayPriority ")
        let viewPort1 = getInspector()["DataPanelDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["DataPanelDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_DisplayPriority_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_DisplayPriority_0800
     * @tc.desic：Empty_DatePicker_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd DatePicker")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: DatePickerDisplayPriority ")
        let viewPort1 = getInspector()["DatePickerDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["DatePickerDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_DisplayPriority_0900
     * @tc.name： Test_EmptyAttrs_Divider_DisplayPriority_0900
     * @tc.desic：Empty_Divider_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Divider")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: DividerDisplayPriority ")
        let viewPort1 = getInspector()["DividerDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["DividerDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_DisplayPriority_1000
     * @tc.name： Test_EmptyAttrs_Gauge_DisplayPriority_1000
     * @tc.desic：Empty_Gauge_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Gauge")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: GaugeDisplayPriority ")
        let viewPort1 = getInspector()["GaugeDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["GaugeDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_DisplayPriority_1100
     * @tc.name： Test_EmptyAttrs_Image_DisplayPriority_1100
     * @tc.desic：Empty_Image_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Image")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ImageDisplayPriority ")
        let viewPort1 = getInspector()["ImageDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["ImageDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_DisplayPriority_1200
     * @tc.name： Test_EmptyAttrs_LoadingProgress_DisplayPriority_1200
     * @tc.desic：Empty_LoadingProgress_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_LoadingProgress_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd LoadingProgress")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: LoadingProgressDisplayPriority ")
        let viewPort1 = getInspector()["LoadingProgressDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["LoadingProgressDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_DisplayPriority_1300
     * @tc.name： Test_EmptyAttrs_Menu_DisplayPriority_1300
     * @tc.desic：Empty_Menu_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Menu_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Menu")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: MenuDisplayPriority ")
        let viewPort1 = getInspector()["MenuDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["MenuDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_DisplayPriority_1400
     * @tc.name： Test_EmptyAttrs_Progress_DisplayPriority_1400
     * @tc.desic：Empty_Progress_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Progress_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Progress")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ProgressDisplayPriority ")
        let viewPort1 = getInspector()["ProgressDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["ProgressDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_DisplayPriority_1500
     * @tc.name： Test_EmptyAttrs_QRCode_DisplayPriority_1500
     * @tc.desic：Empty_QRCode_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_QRCode_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd QRCode")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: QRCodeDisplayPriority ")
        let viewPort1 = getInspector()["QRCodeDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["QRCodeDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_DisplayPriority_1600
     * @tc.name： Test_EmptyAttrs_Radio_DisplayPriority_1600
     * @tc.desic：Empty_Radio_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Radio_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Radio")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: RadioDisplayPriority ")
        let viewPort1 = getInspector()["RadioDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["RadioDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_DisplayPriority_1700
     * @tc.name： Test_EmptyAttrs_Rating_DisplayPriority_1700
     * @tc.desic：Empty_Rating_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Rating_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Rating")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: RatingDisplayPriority ")
        let viewPort1 = getInspector()["RatingDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["RatingDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_DisplayPriority_1800
     * @tc.name： Test_EmptyAttrs_Refresh_DisplayPriority_1800
     * @tc.desic：Empty_Refresh_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Refresh_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Refresh")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: RefreshDisplayPriority ")
        let viewPort1 = getInspector()["RefreshDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["RefreshDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_DisplayPriority_1900
     * @tc.name： Test_EmptyAttrs_RichEditor_DisplayPriority_1900
     * @tc.desic：Empty_RichEditor_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_RichEditor_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd RichEditor")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: RichEditorDisplayPriority ")
        let viewPort1 = getInspector()["RichEditorDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["RichEditorDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_DisplayPriority_2000
     * @tc.name： Test_EmptyAttrs_RichText_DisplayPriority_2000
     * @tc.desic：Empty_RichText_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_RichText_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd RichText")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: RichTextDisplayPriority ")
        let viewPort1 = getInspector()["RichTextDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["RichTextDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_DisplayPriority_2100
     * @tc.name： Test_EmptyAttrs_RowSplit_DisplayPriority_2100
     * @tc.desic：Empty_RowSplit_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_RowSplit_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd RowSplit")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: RowSplitDisplayPriority ")
        let viewPort1 = getInspector()["RowSplitDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["RowSplitDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_DisplayPriority_2200
     * @tc.name： Test_EmptyAttrs_ScrollBar_DisplayPriority_2200
     * @tc.desic：Empty_ScrollBar_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_ScrollBar_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd ScrollBar")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ScrollBarDisplayPriority ")
        let viewPort1 = getInspector()["ScrollBarDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["ScrollBarDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_DisplayPriority_2300
     * @tc.name： Test_EmptyAttrs_Search_DisplayPriority_2300
     * @tc.desic：Empty_Search_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Search_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Search")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: SearchDisplayPriority ")
        let viewPort1 = getInspector()["SearchDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["SearchDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_DisplayPriority_2400
     * @tc.name： Test_EmptyAttrs_Slider_DisplayPriority_2400
     * @tc.desic：Empty_Slider_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Slider_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Slider")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: SliderDisplayPriority ")
        let viewPort1 = getInspector()["SliderDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["SliderDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_DisplayPriority_2500
     * @tc.name： Test_EmptyAttrs_Stepper_DisplayPriority_2500
     * @tc.desic：Empty_Stepper_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Stepper_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Stepper")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: StepperDisplayPriority ")
        let viewPort1 = getInspector()["StepperDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["StepperDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_DisplayPriority_2600
     * @tc.name： Test_EmptyAttrs_Text_DisplayPriority_2600
     * @tc.desic：Empty_Text_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Text_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Text")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: TextDisplayPriority ")
        let viewPort1 = getInspector()["TextDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["TextDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_DisplayPriority_2700
     * @tc.name： Test_EmptyAttrs_TextArea_DisplayPriority_2700
     * @tc.desic：Empty_TextArea_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_TextArea_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd TextArea")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: TextAreaDisplayPriority ")
        let viewPort1 = getInspector()["TextAreaDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["TextAreaDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_DisplayPriority_2800
     * @tc.name： Test_EmptyAttrs_TextClock_DisplayPriority_2800
     * @tc.desic：Empty_TextClock_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_TextClock_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd TextClock")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: TextClockDisplayPriority ")
        let viewPort1 = getInspector()["TextClockDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["TextClockDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_DisplayPriority_2900
     * @tc.name： Test_EmptyAttrs_TextInput_DisplayPriority_2900
     * @tc.desic：Empty_TextInput_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_TextInput_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd TextInput")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: TextInputDisplayPriority ")
        let viewPort1 = getInspector()["TextInputDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["TextInputDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_DisplayPriority_3000
     * @tc.name： Test_EmptyAttrs_TextPicker_DisplayPriority_3000
     * @tc.desic：Empty_TextPicker_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_TextPicker_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd TextPicker")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: TextPickerDisplayPriority ")
        let viewPort1 = getInspector()["TextPickerDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["TextPickerDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_DisplayPriority_3100
     * @tc.name： Test_EmptyAttrs_TextTimer_DisplayPriority_3100
     * @tc.desic：Empty_TextTimer_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_TextTimer_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd TextTimer")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: TextTimerDisplayPriority ")
        let viewPort1 = getInspector()["TextTimerDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["TextTimerDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_DisplayPriority_3200
     * @tc.name： Test_EmptyAttrs_Toggle_DisplayPriority_3200
     * @tc.desic：Empty_Toggle_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Toggle_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Toggle")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ToggleDisplayPriority ")
        let viewPort1 = getInspector()["ToggleDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["ToggleDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_DisplayPriority_3300
     * @tc.name： Test_EmptyAttrs_Web_DisplayPriority_3300
     * @tc.desic：Empty_Web_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Web_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Web")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: WebDisplayPriority ")
        let viewPort1 = getInspector()["WebDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["WebDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_DisplayPriority_3400
     * @tc.name： Test_EmptyAttrs_Select_DisplayPriority_3400
     * @tc.desic：Empty_Select_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Select_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Select")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: SelectDisplayPriority ")
        let viewPort1 = getInspector()["SelectDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["SelectDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_DisplayPriority_3500
     * @tc.name： Test_EmptyAttrs_Badge_DisplayPriority_3500
     * @tc.desic：Empty_Badge_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Badge_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Badge")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: BadgeDisplayPriority ")
        let viewPort1 = getInspector()["BadgeDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["BadgeDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_DisplayPriority_3600
     * @tc.name： Test_EmptyAttrs_Column_DisplayPriority_3600
     * @tc.desic：Empty_Column_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Column_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Column")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ColumnDisplayPriority ")
        let viewPort1 = getInspector()["ColumnDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["ColumnDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_DisplayPriority_3700
     * @tc.name： Test_EmptyAttrs_Grid_DisplayPriority_3700
     * @tc.desic：Empty_Grid_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Grid_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Grid")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: GridDisplayPriority ")
        let viewPort1 = getInspector()["GridDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["GridDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_DisplayPriority_3800
     * @tc.name： Test_EmptyAttrs_GridRow_DisplayPriority_3800
     * @tc.desic：Empty_GridRow_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_GridRow_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd GridRow")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: GridRowDisplayPriority ")
        let viewPort1 = getInspector()["GridRowDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["GridRowDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_DisplayPriority_3900
     * @tc.name： Test_EmptyAttrs_Flex_DisplayPriority_3900
     * @tc.desic：Empty_Flex_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Flex_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Flex")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: FlexDisplayPriority ")
        let viewPort1 = getInspector()["FlexDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["FlexDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_DisplayPriority_4000
     * @tc.name： Test_EmptyAttrs_List_DisplayPriority_4000
     * @tc.desic：Empty_List_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_List_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd List")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ListDisplayPriority ")
        let viewPort1 = getInspector()["ListDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["ListDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_DisplayPriority_4200
     * @tc.name： Test_EmptyAttrs_RelativeContainer_DisplayPriority_4200
     * @tc.desic：Empty_RelativeContainer_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_RelativeContainer_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd RelativeContainer")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: RelativeContainerDisplayPriority ")
        let viewPort1 = getInspector()["RelativeContainerDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["RelativeContainerDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_DisplayPriority_4300
     * @tc.name： Test_EmptyAttrs_Row_DisplayPriority_4300
     * @tc.desic：Empty_Row_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Row_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Row")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: RowDisplayPriority ")
        let viewPort1 = getInspector()["RowDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["RowDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_DisplayPriority_4400
     * @tc.name： Test_EmptyAttrs_Scroll_DisplayPriority_4400
     * @tc.desic：Empty_Scroll_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Scroll_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Scroll")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ScrollDisplayPriority ")
        let viewPort1 = getInspector()["ScrollDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["ScrollDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_DisplayPriority_4500
     * @tc.name： Test_EmptyAttrs_Stack_DisplayPriority_4500
     * @tc.desic：Empty_Stack_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Stack_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Stack")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: StackDisplayPriority ")
        let viewPort1 = getInspector()["StackDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["StackDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_DisplayPriority_4600
     * @tc.name： Test_EmptyAttrs_Swiper_DisplayPriority_4600
     * @tc.desic：Empty_Swiper_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Swiper_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Swiper")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: SwiperDisplayPriority ")
        let viewPort1 = getInspector()["SwiperDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["SwiperDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_DisplayPriority_4700
     * @tc.name： Test_EmptyAttrs_Tabs_DisplayPriority_4700
     * @tc.desic：Empty_Tabs_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Tabs_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Tabs")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: TabsDisplayPriority ")
        let viewPort1 = getInspector()["TabsDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["TabsDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_DisplayPriority_4800
     * @tc.name： Test_EmptyAttrs_Circle_DisplayPriority_4800
     * @tc.desic：Empty_Circle_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Circle_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Circle")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: CircleDisplayPriority ")
        let viewPort1 = getInspector()["CircleDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["CircleDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_DisplayPriority_4900
     * @tc.name： Test_EmptyAttrs_Line_DisplayPriority_4900
     * @tc.desic：Empty_Line_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Line_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Line")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: LineDisplayPriority ")
        let viewPort1 = getInspector()["LineDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["LineDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_DisplayPriority_5000
     * @tc.name： Test_EmptyAttrs_Rect_DisplayPriority_5000
     * @tc.desic：Empty_Rect_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Rect_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Rect")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: RectDisplayPriority ")
        let viewPort1 = getInspector()["RectDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["RectDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_DisplayPriority_5100
     * @tc.name： Test_EmptyAttrs_Shape_DisplayPriority_5100
     * @tc.desic：Empty_Shape_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Shape_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Shape")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ShapeDisplayPriority ")
        let viewPort1 = getInspector()["ShapeDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["ShapeDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_DisplayPriority_5300
     * @tc.name： Test_EmptyAttrs_Path_DisplayPriority_5300
     * @tc.desic：Empty_Path_DisplayPriority
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_DisplayPriority_Path_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority: FindEnd Path")
        sleepFor(1.second)

        Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: PathDisplayPriority ")
        let viewPort1 = getInspector()["PathDisplayPriority1", "displayPriority"]
        let viewPort2 = getInspector()["PathDisplayPriority2", "displayPriority"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 1")
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: 2")
        @Expect(viewPort1, "1")
        @Expect(viewPort2, "2")
        Hilog.info(0, "cangjietest", "test", "CheckCheckDisplayPriority:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
