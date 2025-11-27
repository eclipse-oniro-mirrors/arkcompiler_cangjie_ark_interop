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
class Test_EmptyAttrs_ZIndex {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("ZIndex")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_ZIndex_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_ZIndex_0100
     * @tc.desic：Empty_AlphabetIndexer_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: AlphabetIndexerZIndex" + value)
            let viewPort = getInspector()["AlphabetIndexerZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_ZIndex_0200
     * @tc.name： Test_EmptyAttrs_Button_ZIndex_0200
     * @tc.desic：Empty_Button_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Button_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Button")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ButtonZIndex" + value)
            let viewPort = getInspector()["ButtonZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_ZIndex_0300
     * @tc.name： Test_EmptyAttrs_Checkbox_ZIndex_0300
     * @tc.desic：Empty_Checkbox_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Checkbox_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Checkbox")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: CheckboxZIndex" + value)
            let viewPort = getInspector()["CheckboxZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_ZIndex_0400
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_ZIndex_0400
     * @tc.desic：Empty_CheckboxGroup_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_CheckboxGroup_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: CheckboxGroupZIndex" + value)
            let viewPort = getInspector()["CheckboxGroupZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_ZIndex_0600
     * @tc.name： Test_EmptyAttrs_DataPanel_ZIndex_0600
     * @tc.desic：Empty_DataPanel_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_DataPanel_0600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd DataPanel")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: DataPanelZIndex" + value)
            let viewPort = getInspector()["DataPanelZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_ZIndex_0700
     * @tc.name： Test_EmptyAttrs_DatePicker_ZIndex_0700
     * @tc.desic：Empty_DatePicker_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_DatePicker_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd DatePicker")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: DatePickerZIndex" + value)
            let viewPort = getInspector()["DatePickerZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_ZIndex_0800
     * @tc.name： Test_EmptyAttrs_Divider_ZIndex_0800
     * @tc.desic：Empty_Divider_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Divider_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Divider")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: DividerZIndex" + value)
            let viewPort = getInspector()["DividerZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_ZIndex_0900
     * @tc.name： Test_EmptyAttrs_Gauge_ZIndex_0900
     * @tc.desic：Empty_Gauge_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Gauge_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Gauge")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: GaugeZIndex" + value)
            let viewPort = getInspector()["GaugeZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_ZIndex_1000
     * @tc.name： Test_EmptyAttrs_Image_ZIndex_1000
     * @tc.desic：Empty_Image_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Image_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Image")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ImageZIndex" + value)
            let viewPort = getInspector()["ImageZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_ZIndex_1100
     * @tc.name： Test_EmptyAttrs_LoadingProgress_ZIndex_1100
     * @tc.desic：Empty_LoadingProgress_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_LoadingProgress_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: LoadingProgressZIndex" + value)
            let viewPort = getInspector()["LoadingProgressZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_ZIndex_1200
     * @tc.name： Test_EmptyAttrs_Menu_ZIndex_1200
     * @tc.desic：Empty_Menu_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Menu_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Menu")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: MenuZIndex" + value)
            let viewPort = getInspector()["MenuZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_ZIndex_1300
     * @tc.name： Test_EmptyAttrs_Progress_ZIndex_1300
     * @tc.desic：Empty_Progress_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Progress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Progress")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ProgressZIndex" + value)
            let viewPort = getInspector()["ProgressZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_ZIndex_1400
     * @tc.name： Test_EmptyAttrs_QRCode_ZIndex_1400
     * @tc.desic：Empty_QRCode_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_QRCode_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd QRCode")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: QRCodeZIndex" + value)
            let viewPort = getInspector()["QRCodeZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_ZIndex_1500
     * @tc.name： Test_EmptyAttrs_Radio_ZIndex_1500
     * @tc.desic：Empty_Radio_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Radio_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Radio")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: RadioZIndex" + value)
            let viewPort = getInspector()["RadioZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_ZIndex_1600
     * @tc.name： Test_EmptyAttrs_Rating_ZIndex_1600
     * @tc.desic：Empty_Rating_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Rating_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Rating")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: RatingZIndex" + value)
            let viewPort = getInspector()["RatingZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_ZIndex_1700
     * @tc.name： Test_EmptyAttrs_Refresh_ZIndex_1700
     * @tc.desic：Empty_Refresh_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Refresh_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Refresh")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: RefreshZIndex" + value)
            let viewPort = getInspector()["RefreshZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_ZIndex_1800
     * @tc.name： Test_EmptyAttrs_RichEditor_ZIndex_1800
     * @tc.desic：Empty_RichEditor_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_RichEditor_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd RichEditor")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: RichEditorZIndex" + value)
            let viewPort = getInspector()["RichEditorZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_ZIndex_1900
     * @tc.name： Test_EmptyAttrs_RowSplit_ZIndex_1900
     * @tc.desic：Empty_RowSplit_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_RowSplit_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd RowSplit")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: RowSplitZIndex" + value)
            let viewPort = getInspector()["RowSplitZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_ZIndex_2000
     * @tc.name： Test_EmptyAttrs_ScrollBar_ZIndex_2000
     * @tc.desic：Empty_ScrollBar_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_ScrollBar_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd ScrollBar")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ScrollBarZIndex" + value)
            let viewPort = getInspector()["ScrollBarZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_ZIndex_2100
     * @tc.name： Test_EmptyAttrs_Search_ZIndex_2100
     * @tc.desic：Empty_Search_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Search_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Search")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: SearchZIndex" + value)
            let viewPort = getInspector()["SearchZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_ZIndex_2200
     * @tc.name： Test_EmptyAttrs_Slider_ZIndex_2200
     * @tc.desic：Empty_Slider_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Slider_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Slider")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: SliderZIndex" + value)
            let viewPort = getInspector()["SliderZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_ZIndex_2300
     * @tc.name： Test_EmptyAttrs_Stepper_ZIndex_2300
     * @tc.desic：Empty_Stepper_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Stepper_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Stepper")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: StepperZIndex" + value)
            let viewPort = getInspector()["StepperZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_ZIndex_2400
     * @tc.name： Test_EmptyAttrs_Text_ZIndex_2400
     * @tc.desic：Empty_Text_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Text_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Text")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: TextZIndex" + value)
            let viewPort = getInspector()["TextZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_ZIndex_2500
     * @tc.name： Test_EmptyAttrs_TextArea_ZIndex_2500
     * @tc.desic：Empty_TextArea_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_TextArea_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd TextArea")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: TextAreaZIndex" + value)
            let viewPort = getInspector()["TextAreaZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_ZIndex_2600
     * @tc.name： Test_EmptyAttrs_TextClock_ZIndex_2600
     * @tc.desic：Empty_TextClock_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_TextClock_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd TextClock")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: TextClockZIndex" + value)
            let viewPort = getInspector()["TextClockZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_ZIndex_2700
     * @tc.name： Test_EmptyAttrs_TextInput_ZIndex_2700
     * @tc.desic：Empty_TextInput_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_TextInput_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd TextInput")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: TextInputZIndex" + value)
            let viewPort = getInspector()["TextInputZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_ZIndex_2800
     * @tc.name： Test_EmptyAttrs_TextPicker_ZIndex_2800
     * @tc.desic：Empty_TextPicker_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_TextPicker_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd TextPicker")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: TextPickerZIndex" + value)
            let viewPort = getInspector()["TextPickerZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_ZIndex_2900
     * @tc.name： Test_EmptyAttrs_TextTimer_ZIndex_2900
     * @tc.desic：Empty_TextTimer_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_TextTimer_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd TextTimer")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: TextTimerZIndex" + value)
            let viewPort = getInspector()["TextTimerZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_ZIndex_3000
     * @tc.name： Test_EmptyAttrs_Toggle_ZIndex_3000
     * @tc.desic：Empty_Toggle_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Toggle_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Toggle")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ToggleZIndex" + value)
            let viewPort = getInspector()["ToggleZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_ZIndex_3100
     * @tc.name： Test_EmptyAttrs_Web_ZIndex_3100
     * @tc.desic：Empty_Web_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Web_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Web")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: WebZIndex" + value)
            let viewPort = getInspector()["WebZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_ZIndex_3200
     * @tc.name： Test_EmptyAttrs_Select_ZIndex_3200
     * @tc.desic：Empty_Select_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Select_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Select")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: SelectZIndex" + value)
            let viewPort = getInspector()["SelectZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_ZIndex_3300
     * @tc.name： Test_EmptyAttrs_Badge_ZIndex_3300
     * @tc.desic：Empty_Badge_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Badge_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Badge")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: BadgeZIndex" + value)
            let viewPort = getInspector()["BadgeZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_ZIndex_3400
     * @tc.name： Test_EmptyAttrs_Column_ZIndex_3400
     * @tc.desic：Empty_Column_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Column_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Column")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ColumnZIndex" + value)
            let viewPort = getInspector()["ColumnZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_ZIndex_3500
     * @tc.name： Test_EmptyAttrs_Grid_ZIndex_3500
     * @tc.desic：Empty_Grid_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Grid_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Grid")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: GridZIndex" + value)
            let viewPort = getInspector()["GridZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_ZIndex_3600
     * @tc.name： Test_EmptyAttrs_GridRow_ZIndex_3600
     * @tc.desic：Empty_GridRow_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_GridRow_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd GridRow")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: GridRowZIndex" + value)
            let viewPort = getInspector()["GridRowZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_ZIndex_3700
     * @tc.name： Test_EmptyAttrs_Flex_ZIndex_3700
     * @tc.desic：Empty_Flex_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Flex_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Flex")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: FlexZIndex" + value)
            let viewPort = getInspector()["FlexZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_ZIndex_3800
     * @tc.name： Test_EmptyAttrs_List_ZIndex_3800
     * @tc.desic：Empty_List_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_List_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd List")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ListZIndex" + value)
            let viewPort = getInspector()["ListZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_ZIndex_4000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_ZIndex_4000
     * @tc.desic：Empty_RelativeContainer_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_RelativeContainer_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: RelativeContainerZIndex" + value)
            let viewPort = getInspector()["RelativeContainerZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_ZIndex_4100
     * @tc.name： Test_EmptyAttrs_Row_ZIndex_4100
     * @tc.desic：Empty_Row_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Row_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Row")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: RowZIndex" + value)
            let viewPort = getInspector()["RowZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_ZIndex_4200
     * @tc.name： Test_EmptyAttrs_Scroll_ZIndex_4200
     * @tc.desic：Empty_Scroll_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Scroll_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Scroll")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ScrollZIndex" + value)
            let viewPort = getInspector()["ScrollZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_ZIndex_4300
     * @tc.name： Test_EmptyAttrs_Stack_ZIndex_4300
     * @tc.desic：Empty_Stack_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Stack_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Stack")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: StackZIndex" + value)
            let viewPort = getInspector()["StackZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_ZIndex_4400
     * @tc.name： Test_EmptyAttrs_Swiper_ZIndex_4400
     * @tc.desic：Empty_Swiper_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Swiper_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Swiper")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: SwiperZIndex" + value)
            let viewPort = getInspector()["SwiperZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_ZIndex_4500
     * @tc.name： Test_EmptyAttrs_Tabs_ZIndex_4500
     * @tc.desic：Empty_Tabs_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Tabs_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Tabs")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: TabsZIndex" + value)
            let viewPort = getInspector()["TabsZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_ZIndex_4600
     * @tc.name： Test_EmptyAttrs_Circle_ZIndex_4600
     * @tc.desic：Empty_Circle_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Circle_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Circle")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: CircleZIndex" + value)
            let viewPort = getInspector()["CircleZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_ZIndex_4700
     * @tc.name： Test_EmptyAttrs_Line_ZIndex_4700
     * @tc.desic：Empty_Line_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Line_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Line")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: LineZIndex" + value)
            let viewPort = getInspector()["LineZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_ZIndex_4800
     * @tc.name： Test_EmptyAttrs_Rect_ZIndex_4800
     * @tc.desic：Empty_Rect_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Rect_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Rect")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: RectZIndex" + value)
            let viewPort = getInspector()["RectZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_ZIndex_4900
     * @tc.name： Test_EmptyAttrs_Shape_ZIndex_4900
     * @tc.desic：Empty_Shape_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Shape_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Shape")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ShapeZIndex" + value)
            let viewPort = getInspector()["ShapeZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_ZIndex_5100
     * @tc.name： Test_EmptyAttrs_Path_ZIndex_5100
     * @tc.desic：Empty_Path_ZIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ZIndex_Path_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "CheckCheckZIndex: FindEnd Path")
        sleepFor(1.second)
        for (value in ["0", "1", "2"]) {
            Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: PathZIndex" + value)
            let viewPort = getInspector()["PathZIndex" + value, "zIndex"]
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${value}")
            @Expect(viewPort, value)
        }
        Hilog.info(0, "cangjietest", "CheckCheckZIndex:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
