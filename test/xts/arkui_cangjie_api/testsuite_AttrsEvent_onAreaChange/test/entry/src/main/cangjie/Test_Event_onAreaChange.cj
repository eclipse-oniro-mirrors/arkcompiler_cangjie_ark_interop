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
import std.convert.*
import std.unittest.*
import std.collection.ArrayList

import ohos.ui_test.{Driver, On}
import std.unittest.testmacro.*
import ohos.arkui.state_macro_manage.*

@Test
class Test_EmptyEvent_onAreaChange {
    protected func getTextById(id: String) {
        return Float64.tryParse(getInspector()[id, "content"].split(" ")[1].split(".")[0]) ?? -1.0
    }

    protected func checkExpect_areaChanges() {
        @Expect(getTextById("areaEvent_old.width"), 200.000000)
        @Expect(getTextById("areaEvent_old.height"), 100.000000)
        @Expect(getTextById("areaEvent_old.position.x") >= 0.0, getTextById("areaEvent_old.position.x") < 400.0)
        @Expect(getTextById("areaEvent_old.position.y") >= 0.0, getTextById("areaEvent_old.position.y") < 800.0)
        @Expect(getTextById("areaEvent_old.globalPosition.x") > 0.0, getTextById("areaEvent_old.globalPosition.x") < 400.0)
        @Expect(getTextById("areaEvent_old.globalPosition.y") > 0.0, getTextById("areaEvent_old.globalPosition.y") < 800.0)
        @Expect(getTextById("areaEvent_new.width"), 210.000000)
        @Expect(getTextById("areaEvent_new.height"), 90.000000)
        @Expect(getTextById("areaEvent_new.position.x") >= 0.0, getTextById("areaEvent_new.position.x") < 400.0)
        @Expect(getTextById("areaEvent_new.position.y") >= 0.0, getTextById("areaEvent_new.position.y") < 800.0)
        @Expect(getTextById("areaEvent_new.globalPosition.x") > 0.0, getTextById("areaEvent_new.globalPosition.x") < 400.0)
        @Expect(getTextById("areaEvent_new.globalPosition.y") > 0.0, getTextById("areaEvent_new.globalPosition.y") < 800.0)
    }

    protected override func beforeAll() {
        Hilog.info(0, "cangjietest", "Check Event: onAreaChangeTest Begin")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
        Hilog.info(0, "cangjietest", "Check Event: onAreaChangeTest End")
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_onAreaChange_0100
     * @tc.name： Test_EmptyEvent_AlphabetIndexer_onAreaChange_0100
     * @tc.desic：Empty_AlphabetIndexer_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_onAreaChange_0200
     * @tc.name： Test_EmptyEvent_Blank_onAreaChange_0200
     * @tc.desic：Empty_Blank_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Blank")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_onAreaChange_0300
     * @tc.name： Test_EmptyEvent_Button_onAreaChange_0300
     * @tc.desic：Empty_Button_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Button")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_onAreaChange_0400
     * @tc.name： Test_EmptyEvent_Checkbox_onAreaChange_0400
     * @tc.desic：Empty_Checkbox_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Checkbox")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_onAreaChange_0500
     * @tc.name： Test_EmptyEvent_CheckboxGroup_onAreaChange_0500
     * @tc.desic：Empty_CheckboxGroup_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd CheckboxGroup")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_onAreaChange_0700
     * @tc.name： Test_EmptyEvent_DataPanel_onAreaChange_0700
     * @tc.desic：Empty_DataPanel_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd DataPanel")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_onAreaChange_0800
     * @tc.name： Test_EmptyEvent_DatePicker_onAreaChange_0800
     * @tc.desic：Empty_DatePicker_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd DatePicker")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_onAreaChange_0900
     * @tc.name： Test_EmptyEvent_Divider_onAreaChange_0900
     * @tc.desic：Empty_Divider_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Divider")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_onAreaChange_1000
     * @tc.name： Test_EmptyEvent_Gauge_onAreaChange_1000
     * @tc.desic：Empty_Gauge_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Gauge")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_onAreaChange_1100
     * @tc.name： Test_EmptyEvent_Image_onAreaChange_1100
     * @tc.desic：Empty_Image_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Image")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_onAreaChange_1200
     * @tc.name： Test_EmptyEvent_ImageSpan_onAreaChange_1200
     * @tc.desic：Empty_ImageSpan_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd ImageSpan")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_onAreaChange_1300
     * @tc.name： Test_EmptyEvent_LoadingProgress_onAreaChange_1300
     * @tc.desic：Empty_LoadingProgress_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd LoadingProgress")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_onAreaChange_1400
     * @tc.name： Test_EmptyEvent_Menu_onAreaChange_1400
     * @tc.desic：Empty_Menu_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Menu")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_onAreaChange_1500
     * @tc.name： Test_EmptyEvent_MenuItem_onAreaChange_1500
     * @tc.desic：Empty_MenuItem_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd MenuItem")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_onAreaChange_1600
     * @tc.name： Test_EmptyEvent_MenuItemGroup_onAreaChange_1600
     * @tc.desic：Empty_MenuItemGroup_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd MenuItemGroup")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_onAreaChange_1700
     * @tc.name： Test_EmptyEvent_Progress_onAreaChange_1700
     * @tc.desic：Empty_Progress_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Progress")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_onAreaChange_1800
     * @tc.name： Test_EmptyEvent_QRCode_onAreaChange_1800
     * @tc.desic：Empty_QRCode_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd QRCode")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_onAreaChange_1900
     * @tc.name： Test_EmptyEvent_Radio_onAreaChange_1900
     * @tc.desic：Empty_Radio_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Radio")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_onAreaChange_2000
     * @tc.name： Test_EmptyEvent_Rating_onAreaChange_2000
     * @tc.desic：Empty_Rating_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Rating")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_onAreaChange_2100
     * @tc.name： Test_EmptyEvent_Refresh_onAreaChange_2100
     * @tc.desic：Empty_Refresh_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Refresh")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_onAreaChange_2200
     * @tc.name： Test_EmptyEvent_RichEditor_onAreaChange_2200
     * @tc.desic：Empty_RichEditor_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd RichEditor")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_onAreaChange_2300
     * @tc.name： Test_EmptyEvent_RichText_onAreaChange_2300
     * @tc.desic：Empty_RichText_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd RichText")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_onAreaChange_2400
     * @tc.name： Test_EmptyEvent_RowSplit_onAreaChange_2400
     * @tc.desic：Empty_RowSplit_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd RowSplit")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_onAreaChange_2500
     * @tc.name： Test_EmptyEvent_ScrollBar_onAreaChange_2500
     * @tc.desic：Empty_ScrollBar_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd ScrollBar")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_onAreaChange_2600
     * @tc.name： Test_EmptyEvent_Search_onAreaChange_2600
     * @tc.desic：Empty_Search_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Search")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_onAreaChange_2700
     * @tc.name： Test_EmptyEvent_Slider_onAreaChange_2700
     * @tc.desic：Empty_Slider_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Slider")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }



    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_onAreaChange_2900
     * @tc.name： Test_EmptyEvent_Stepper_onAreaChange_2900
     * @tc.desic：Empty_Stepper_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Stepper_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Stepper")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_onAreaChange_3000
     * @tc.name： Test_EmptyEvent_StepperItem_onAreaChange_3000
     * @tc.desic：Empty_StepperItem_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_StepperItem_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd StepperItem")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_onAreaChange_3100
     * @tc.name： Test_EmptyEvent_Text_onAreaChange_3100
     * @tc.desic：Empty_Text_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Text_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Text")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_onAreaChange_3300
     * @tc.name： Test_EmptyEvent_TextClock_onAreaChange_3300
     * @tc.desic：Empty_TextClock_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_TextClock_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd TextClock")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_onAreaChange_3400
     * @tc.name： Test_EmptyEvent_TextInput_onAreaChange_3400
     * @tc.desic：Empty_TextInput_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_TextInput_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd TextInput")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_onAreaChange_3500
     * @tc.name： Test_EmptyEvent_TextPicker_onAreaChange_3500
     * @tc.desic：Empty_TextPicker_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_TextPicker_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd TextPicker")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_onAreaChange_3600
     * @tc.name： Test_EmptyEvent_TextTimer_onAreaChange_3600
     * @tc.desic：Empty_TextTimer_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_TextTimer_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd TextTimer")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_onAreaChange_3700
     * @tc.name： Test_EmptyEvent_Toggle_onAreaChange_3700
     * @tc.desic：Empty_Toggle_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Toggle_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Toggle")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_onAreaChange_3800
     * @tc.name： Test_EmptyEvent_Web_onAreaChange_3800
     * @tc.desic：Empty_Web_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Web_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Web")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_onAreaChange_3900
     * @tc.name： Test_EmptyEvent_Select_onAreaChange_3900
     * @tc.desic：Empty_Select_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Select_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Select")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_onAreaChange_4000
     * @tc.name： Test_EmptyEvent_Badge_onAreaChange_4000
     * @tc.desic：Empty_Badge_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Badge_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Badge")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_onAreaChange_4100
     * @tc.name： Test_EmptyEvent_Column_onAreaChange_4100
     * @tc.desic：Empty_Column_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Column_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Column")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_onAreaChange_4200
     * @tc.name： Test_EmptyEvent_Grid_onAreaChange_4200
     * @tc.desic：Empty_Grid_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Grid_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Grid")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_onAreaChange_4300
     * @tc.name： Test_EmptyEvent_GridItem_onAreaChange_4300
     * @tc.desic：Empty_GridItem_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_GridItem_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd GridItem")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_onAreaChange_4400
     * @tc.name： Test_EmptyEvent_GridRow_onAreaChange_4400
     * @tc.desic：Empty_GridRow_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_GridRow_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd GridRow")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_onAreaChange_4500
     * @tc.name： Test_EmptyEvent_GridCol_onAreaChange_4500
     * @tc.desic：Empty_GridCol_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_GridCol_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd GridCol")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_onAreaChange_4600
     * @tc.name： Test_EmptyEvent_Flex_onAreaChange_4600
     * @tc.desic：Empty_Flex_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Flex_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Flex")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_onAreaChange_4700
     * @tc.name： Test_EmptyEvent_List_onAreaChange_4700
     * @tc.desic：Empty_List_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_List_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd List")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_onAreaChange_4800
     * @tc.name： Test_EmptyEvent_ListItem_onAreaChange_4800
     * @tc.desic：Empty_ListItem_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_ListItem_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd ListItem")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_onAreaChange_4900
     * @tc.name： Test_EmptyEvent_ListItemGroup_onAreaChange_4900
     * @tc.desic：Empty_ListItemGroup_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_ListItemGroup_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd ListItemGroup")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_onAreaChange_5100
     * @tc.name： Test_EmptyEvent_RelativeContainer_onAreaChange_5100
     * @tc.desic：Empty_RelativeContainer_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_RelativeContainer_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd RelativeContainer")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_onAreaChange_5200
     * @tc.name： Test_EmptyEvent_Row_onAreaChange_5200
     * @tc.desic：Empty_Row_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Row_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Row")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_onAreaChange_5300
     * @tc.name： Test_EmptyEvent_Scroll_onAreaChange_5300
     * @tc.desic：Empty_Scroll_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Scroll_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Scroll")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_onAreaChange_5400
     * @tc.name： Test_EmptyEvent_Stack_onAreaChange_5400
     * @tc.desic：Empty_Stack_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Stack_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Stack")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_onAreaChange_5500
     * @tc.name： Test_EmptyEvent_Swiper_onAreaChange_5500
     * @tc.desic：Empty_Swiper_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Swiper_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Swiper")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_onAreaChange_5600
     * @tc.name： Test_EmptyEvent_Tabs_onAreaChange_5600
     * @tc.desic：Empty_Tabs_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Tabs_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Tabs")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_onAreaChange_5700
     * @tc.name： Test_EmptyEvent_TabContent_onAreaChange_5700
     * @tc.desic：Empty_TabContent_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_TabContent_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd TabContent")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_onAreaChange_5800
     * @tc.name： Test_EmptyEvent_Circle_onAreaChange_5800
     * @tc.desic：Empty_Circle_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Circle_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Circle")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_onAreaChange_5900
     * @tc.name： Test_EmptyEvent_Line_onAreaChange_5900
     * @tc.desic：Empty_Line_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Line_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Line")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_onAreaChange_6000
     * @tc.name： Test_EmptyEvent_Rect_onAreaChange_6000
     * @tc.desic：Empty_Rect_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Rect_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Rect")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_onAreaChange_6100
     * @tc.name： Test_EmptyEvent_Shape_onAreaChange_6100
     * @tc.desic：Empty_Shape_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Shape_6100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Shape")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

   

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_onAreaChange_6300
     * @tc.name： Test_EmptyEvent_Path_onAreaChange_6300
     * @tc.desic：Empty_Path_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Path_6300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Path")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Canvas_onAreaChange_6400
     * @tc.name： Test_EmptyEvent_Canvas_onAreaChange_6400
     * @tc.desic：Empty_Canvas_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Canvas_6400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Canvas")
        enterPage(scrollerId: "scroll", buttonId: "Canvas")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Canvas")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Video_onAreaChange_6500
     * @tc.name： Test_EmptyEvent_Video_onAreaChange_6500
     * @tc.desic：Empty_Video_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Video_6500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Video")
        enterPage(scrollerId: "scroll", buttonId: "Video")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Video")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Counter_onAreaChange_7000
     * @tc.name： Test_EmptyEvent_Counter_onAreaChange_7000
     * @tc.desic：Empty_Counter_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Counter_7000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Counter")
        enterPage(scrollerId: "scroll", buttonId: "Counter")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Counter")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_PatternLock_onAreaChange_7100
     * @tc.name： Test_EmptyEvent_PatternLock_onAreaChange_7100
     * @tc.desic：Empty_PatternLock_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_PatternLock_7100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin PatternLock")
        enterPage(scrollerId: "scroll", buttonId: "PatternLock")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd PatternLock")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Ellipse_onAreaChange_7200
     * @tc.name： Test_EmptyEvent_Ellipse_onAreaChange_7200
     * @tc.desic：Empty_Ellipse_onAreaChange
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAreaChange_Ellipse_7200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindBegin Ellipse")
        enterPage(scrollerId: "scroll", buttonId: "Ellipse")
        Hilog.info(0, "cangjietest", "Check onAreaChange: FindEnd Ellipse")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeArea").centerPoint)
        sleepFor(1.second)
        this.checkExpect_areaChanges()
        Hilog.info(0, "cangjietest", "Check onAreaChange: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }
}
