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
class Test_EmptyAttrs_Id {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Id")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Id_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Id_0100
     * @tc.desic：Empty_AlphabetIndexer_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: AlphabetIndexer")
        let viewPort = getInspector()["AlphabetIndexer", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"AlphabetIndexer\"")
        @Expect(viewPort, "\"AlphabetIndexer\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Id_0200
     * @tc.name： Test_EmptyAttrs_Blank_Id_0200
     * @tc.desic：Empty_Blank_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Blank")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Blank")
        let viewPort = getInspector()["Blank", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Blank\"")
        @Expect(viewPort, "\"Blank\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Id_0300
     * @tc.name： Test_EmptyAttrs_Button_Id_0300
     * @tc.desic：Empty_Button_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Button")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Button")
        let viewPort = getInspector()["Button", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Button\"")
        @Expect(viewPort, "\"Button\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Id_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Id_0400
     * @tc.desic：Empty_Checkbox_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Checkbox")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Checkbox")
        let viewPort = getInspector()["Checkbox", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Checkbox\"")
        @Expect(viewPort, "\"Checkbox\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Id_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Id_0500
     * @tc.desic：Empty_CheckboxGroup_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd CheckboxGroup")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: CheckboxGroup")
        let viewPort = getInspector()["CheckboxGroup", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"CheckboxGroup\"")
        @Expect(viewPort, "\"CheckboxGroup\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Id_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Id_0700
     * @tc.desic：Empty_DataPanel_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd DataPanel")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: DataPanel")
        let viewPort = getInspector()["DataPanel", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"DataPanel\"")
        @Expect(viewPort, "\"DataPanel\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Id_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Id_0800
     * @tc.desic：Empty_DatePicker_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd DatePicker")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: DatePicker")
        let viewPort = getInspector()["DatePicker", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"DatePicker\"")
        @Expect(viewPort, "\"DatePicker\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Id_0900
     * @tc.name： Test_EmptyAttrs_Divider_Id_0900
     * @tc.desic：Empty_Divider_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Divider")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Divider")
        let viewPort = getInspector()["Divider", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Divider\"")
        @Expect(viewPort, "\"Divider\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Id_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Id_1000
     * @tc.desic：Empty_Gauge_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Gauge")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Gauge")
        let viewPort = getInspector()["Gauge", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Gauge\"")
        @Expect(viewPort, "\"Gauge\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Id_1100
     * @tc.name： Test_EmptyAttrs_Image_Id_1100
     * @tc.desic：Empty_Image_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Image")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Image")
        let viewPort = getInspector()["Image", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Image\"")
        @Expect(viewPort, "\"Image\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Id_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Id_1200
     * @tc.desic：Empty_ImageSpan_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd ImageSpan")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: ImageSpan")
        let viewPort = getInspector()["ImageSpan", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"ImageSpan\"")
        @Expect(viewPort, "\"ImageSpan\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Id_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Id_1300
     * @tc.desic：Empty_LoadingProgress_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd LoadingProgress")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: LoadingProgress")
        let viewPort = getInspector()["LoadingProgress", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"LoadingProgress\"")
        @Expect(viewPort, "\"LoadingProgress\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Id_1400
     * @tc.name： Test_EmptyAttrs_Menu_Id_1400
     * @tc.desic：Empty_Menu_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Menu")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Menu")
        let viewPort = getInspector()["Menu", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Menu\"")
        @Expect(viewPort, "\"Menu\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Id_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Id_1500
     * @tc.desic：Empty_MenuItem_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd MenuItem")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: MenuItem")
        let viewPort = getInspector()["MenuItem", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"MenuItem\"")
        @Expect(viewPort, "\"MenuItem\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Id_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Id_1600
     * @tc.desic：Empty_MenuItemGroup_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd MenuItemGroup")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: MenuItemGroup")
        let viewPort = getInspector()["MenuItemGroup", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"MenuItemGroup\"")
        @Expect(viewPort, "\"MenuItemGroup\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Id_1700
     * @tc.name： Test_EmptyAttrs_Progress_Id_1700
     * @tc.desic：Empty_Progress_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Progress")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Progress")
        let viewPort = getInspector()["Progress", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Progress\"")
        @Expect(viewPort, "\"Progress\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Id_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Id_1800
     * @tc.desic：Empty_QRCode_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd QRCode")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: QRCode")
        let viewPort = getInspector()["QRCode", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"QRCode\"")
        @Expect(viewPort, "\"QRCode\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Id_1900
     * @tc.name： Test_EmptyAttrs_Radio_Id_1900
     * @tc.desic：Empty_Radio_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Radio")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Radio")
        let viewPort = getInspector()["Radio", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Radio\"")
        @Expect(viewPort, "\"Radio\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Id_2000
     * @tc.name： Test_EmptyAttrs_Rating_Id_2000
     * @tc.desic：Empty_Rating_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Rating")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Rating")
        let viewPort = getInspector()["Rating", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Rating\"")
        @Expect(viewPort, "\"Rating\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Id_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Id_2100
     * @tc.desic：Empty_Refresh_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Refresh")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Refresh")
        let viewPort = getInspector()["Refresh", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Refresh\"")
        @Expect(viewPort, "\"Refresh\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Id_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Id_2200
     * @tc.desic：Empty_RichEditor_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd RichEditor")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: RichEditor")
        let viewPort = getInspector()["RichEditor", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"RichEditor\"")
        @Expect(viewPort, "\"RichEditor\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Id_2300
     * @tc.name： Test_EmptyAttrs_RichText_Id_2300
     * @tc.desic：Empty_RichText_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd RichText")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: RichText")
        let viewPort = getInspector()["RichText", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"RichText\"")
        @Expect(viewPort, "\"RichText\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Id_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Id_2400
     * @tc.desic：Empty_RowSplit_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd RowSplit")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: RowSplit")
        let viewPort = getInspector()["RowSplit", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"RowSplit\"")
        @Expect(viewPort, "\"RowSplit\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Id_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Id_2500
     * @tc.desic：Empty_ScrollBar_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd ScrollBar")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: ScrollBar")
        let viewPort = getInspector()["ScrollBar", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"ScrollBar\"")
        @Expect(viewPort, "\"ScrollBar\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Id_2600
     * @tc.name： Test_EmptyAttrs_Search_Id_2600
     * @tc.desic：Empty_Search_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Search")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Search")
        let viewPort = getInspector()["Search", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Search\"")
        @Expect(viewPort, "\"Search\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Id_2700
     * @tc.name： Test_EmptyAttrs_Slider_Id_2700
     * @tc.desic：Empty_Slider_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Slider")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Slider")
        let viewPort = getInspector()["Slider", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Slider\"")
        @Expect(viewPort, "\"Slider\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Id_2900
     * @tc.name： Test_EmptyAttrs_Stepper_Id_2900
     * @tc.desic：Empty_Stepper_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Stepper_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Stepper")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Stepper")
        let viewPort = getInspector()["Stepper", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Stepper\"")
        @Expect(viewPort, "\"Stepper\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Id_3000
     * @tc.name： Test_EmptyAttrs_StepperItem_Id_3000
     * @tc.desic：Empty_StepperItem_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_StepperItem_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd StepperItem")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: StepperItem")
        let viewPort = getInspector()["StepperItem", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"StepperItem\"")
        @Expect(viewPort, "\"StepperItem\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Id_3100
     * @tc.name： Test_EmptyAttrs_Text_Id_3100
     * @tc.desic：Empty_Text_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Text_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Text")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Text")
        let viewPort = getInspector()["Text", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Text\"")
        @Expect(viewPort, "\"Text\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Id_3200
     * @tc.name： Test_EmptyAttrs_TextArea_Id_3200
     * @tc.desic：Empty_TextArea_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_TextArea_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd TextArea")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: TextArea")
        let viewPort = getInspector()["TextArea", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"TextArea\"")
        @Expect(viewPort, "\"TextArea\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Id_3300
     * @tc.name： Test_EmptyAttrs_TextClock_Id_3300
     * @tc.desic：Empty_TextClock_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_TextClock_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd TextClock")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: TextClock")
        let viewPort = getInspector()["TextClock", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"TextClock\"")
        @Expect(viewPort, "\"TextClock\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Id_3400
     * @tc.name： Test_EmptyAttrs_TextInput_Id_3400
     * @tc.desic：Empty_TextInput_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_TextInput_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd TextInput")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: TextInput")
        let viewPort = getInspector()["TextInput", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"TextInput\"")
        @Expect(viewPort, "\"TextInput\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Id_3500
     * @tc.name： Test_EmptyAttrs_TextPicker_Id_3500
     * @tc.desic：Empty_TextPicker_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_TextPicker_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd TextPicker")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: TextPicker")
        let viewPort = getInspector()["TextPicker", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"TextPicker\"")
        @Expect(viewPort, "\"TextPicker\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Id_3600
     * @tc.name： Test_EmptyAttrs_TextTimer_Id_3600
     * @tc.desic：Empty_TextTimer_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_TextTimer_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd TextTimer")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: TextTimer")
        let viewPort = getInspector()["TextTimer", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"TextTimer\"")
        @Expect(viewPort, "\"TextTimer\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Id_3700
     * @tc.name： Test_EmptyAttrs_Toggle_Id_3700
     * @tc.desic：Empty_Toggle_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Toggle_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Toggle")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Toggle")
        let viewPort = getInspector()["Toggle", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Toggle\"")
        @Expect(viewPort, "\"Toggle\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Id_3800
     * @tc.name： Test_EmptyAttrs_Web_Id_3800
     * @tc.desic：Empty_Web_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Web_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Web")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Web")
        let viewPort = getInspector()["Web", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Web\"")
        @Expect(viewPort, "\"Web\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Id_3900
     * @tc.name： Test_EmptyAttrs_Select_Id_3900
     * @tc.desic：Empty_Select_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Select_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Select")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Select")
        let viewPort = getInspector()["Select", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Select\"")
        @Expect(viewPort, "\"Select\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Id_4000
     * @tc.name： Test_EmptyAttrs_Badge_Id_4000
     * @tc.desic：Empty_Badge_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Badge_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Badge")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Badge")
        let viewPort = getInspector()["Badge", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Badge\"")
        @Expect(viewPort, "\"Badge\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Id_4100
     * @tc.name： Test_EmptyAttrs_Column_Id_4100
     * @tc.desic：Empty_Column_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Column_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Column")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Column")
        let viewPort = getInspector()["Column", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Column\"")
        @Expect(viewPort, "\"Column\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Id_4200
     * @tc.name： Test_EmptyAttrs_Grid_Id_4200
     * @tc.desic：Empty_Grid_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Grid_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Grid")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Grid")
        let viewPort = getInspector()["Grid", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Grid\"")
        @Expect(viewPort, "\"Grid\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Id_4300
     * @tc.name： Test_EmptyAttrs_GridItem_Id_4300
     * @tc.desic：Empty_GridItem_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_GridItem_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd GridItem")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: GridItem")
        let viewPort = getInspector()["GridItem", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"GridItem\"")
        @Expect(viewPort, "\"GridItem\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Id_4400
     * @tc.name： Test_EmptyAttrs_GridRow_Id_4400
     * @tc.desic：Empty_GridRow_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_GridRow_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd GridRow")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: GridRow")
        let viewPort = getInspector()["GridRow", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"GridRow\"")
        @Expect(viewPort, "\"GridRow\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Id_4500
     * @tc.name： Test_EmptyAttrs_GridCol_Id_4500
     * @tc.desic：Empty_GridCol_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_GridCol_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd GridCol")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: GridCol")
        let viewPort = getInspector()["GridCol", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"GridCol\"")
        @Expect(viewPort, "\"GridCol\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Id_4600
     * @tc.name： Test_EmptyAttrs_Flex_Id_4600
     * @tc.desic：Empty_Flex_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Flex_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Flex")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Flex")
        let viewPort = getInspector()["Flex", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Flex\"")
        @Expect(viewPort, "\"Flex\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Id_4700
     * @tc.name： Test_EmptyAttrs_List_Id_4700
     * @tc.desic：Empty_List_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_List_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd List")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: List")
        let viewPort = getInspector()["List", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"List\"")
        @Expect(viewPort, "\"List\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Id_4800
     * @tc.name： Test_EmptyAttrs_ListItem_Id_4800
     * @tc.desic：Empty_ListItem_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_ListItem_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd ListItem")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: ListItem")
        let viewPort = getInspector()["ListItem", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"ListItem\"")
        @Expect(viewPort, "\"ListItem\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Id_4900
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Id_4900
     * @tc.desic：Empty_ListItemGroup_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_ListItemGroup_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd ListItemGroup")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: ListItemGroup")
        let viewPort = getInspector()["ListItemGroup", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"ListItemGroup\"")
        @Expect(viewPort, "\"ListItemGroup\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Id_5100
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Id_5100
     * @tc.desic：Empty_RelativeContainer_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_RelativeContainer_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd RelativeContainer")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: RelativeContainer")
        let viewPort = getInspector()["RelativeContainer", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"RelativeContainer\"")
        @Expect(viewPort, "\"RelativeContainer\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Id_5200
     * @tc.name： Test_EmptyAttrs_Row_Id_5200
     * @tc.desic：Empty_Row_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Row_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Row")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Row")
        let viewPort = getInspector()["Row", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Row\"")
        @Expect(viewPort, "\"Row\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Id_5300
     * @tc.name： Test_EmptyAttrs_Scroll_Id_5300
     * @tc.desic：Empty_Scroll_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Scroll_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Scroll")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Scroll")
        let viewPort = getInspector()["Scroll", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Scroll\"")
        @Expect(viewPort, "\"Scroll\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Id_5400
     * @tc.name： Test_EmptyAttrs_Stack_Id_5400
     * @tc.desic：Empty_Stack_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Stack_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Stack")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Stack")
        let viewPort = getInspector()["Stack", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Stack\"")
        @Expect(viewPort, "\"Stack\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Id_5500
     * @tc.name： Test_EmptyAttrs_Swiper_Id_5500
     * @tc.desic：Empty_Swiper_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Swiper_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Swiper")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Swiper")
        let viewPort = getInspector()["Swiper", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Swiper\"")
        @Expect(viewPort, "\"Swiper\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Id_5600
     * @tc.name： Test_EmptyAttrs_Tabs_Id_5600
     * @tc.desic：Empty_Tabs_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Tabs_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Tabs")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Tabs")
        let viewPort = getInspector()["Tabs", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Tabs\"")
        @Expect(viewPort, "\"Tabs\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Id_5700
     * @tc.name： Test_EmptyAttrs_TabContent_Id_5700
     * @tc.desic：Empty_TabContent_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_TabContent_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd TabContent")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: TabContent")
        let viewPort = getInspector()["TabContent", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"TabContent\"")
        @Expect(viewPort, "\"TabContent\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Id_5800
     * @tc.name： Test_EmptyAttrs_Circle_Id_5800
     * @tc.desic：Empty_Circle_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Circle_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Circle")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Circle")
        let viewPort = getInspector()["Circle", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Circle\"")
        @Expect(viewPort, "\"Circle\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Id_5900
     * @tc.name： Test_EmptyAttrs_Line_Id_5900
     * @tc.desic：Empty_Line_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Line_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Line")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Line")
        let viewPort = getInspector()["Line", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Line\"")
        @Expect(viewPort, "\"Line\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Id_6000
     * @tc.name： Test_EmptyAttrs_Rect_Id_6000
     * @tc.desic：Empty_Rect_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Rect_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Rect")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Rect")
        let viewPort = getInspector()["Rect", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Rect\"")
        @Expect(viewPort, "\"Rect\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Id_6100
     * @tc.name： Test_EmptyAttrs_Shape_Id_6100
     * @tc.desic：Empty_Shape_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Shape_6100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Shape")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Shape")
        let viewPort = getInspector()["Shape", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Shape\"")
        @Expect(viewPort, "\"Shape\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Id_6300
     * @tc.name： Test_EmptyAttrs_Path_Id_6300
     * @tc.desic：Empty_Path_Id
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Id_Path_6300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: FindEnd Path")
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckId: Path")
        let viewPort = getInspector()["Path", "id"]
        Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
        Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: \"Path\"")
        @Expect(viewPort, "\"Path\"")
        Hilog.info(0, "cangjietest", "test", "CheckCheckId:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
