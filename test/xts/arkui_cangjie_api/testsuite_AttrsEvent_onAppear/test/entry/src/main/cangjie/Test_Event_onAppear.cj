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
class Test_EmptyEvent_onAppear {
    protected override func beforeAll() {
        Hilog.info(0,"", "cangjietest", "Check Event: onAppearTest Begin")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
        Hilog.info(0,"", "cangjietest", "Check Event: onAppearTest End")
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_onAppear_0100
     * @tc.name： Test_EmptyEvent_AlphabetIndexer_onAppear_0100
     * @tc.desic：Empty_AlphabetIndexer_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexeronAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexeronAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_onAppear_0200
     * @tc.name： Test_EmptyEvent_Blank_onAppear_0200
     * @tc.desic：Empty_Blank_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Blank")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("BlankonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("BlankonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_onAppear_0300
     * @tc.name： Test_EmptyEvent_Button_onAppear_0300
     * @tc.desic：Empty_Button_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Button")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ButtononAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ButtononAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_onAppear_0400
     * @tc.name： Test_EmptyEvent_Checkbox_onAppear_0400
     * @tc.desic：Empty_Checkbox_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Checkbox")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_onAppear_0500
     * @tc.name： Test_EmptyEvent_CheckboxGroup_onAppear_0500
     * @tc.desic：Empty_CheckboxGroup_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd CheckboxGroup")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGrouponAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGrouponAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_onAppear_0700
     * @tc.name： Test_EmptyEvent_DataPanel_onAppear_0700
     * @tc.desic：Empty_DataPanel_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd DataPanel")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DataPanelonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DataPanelonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_onAppear_0800
     * @tc.name： Test_EmptyEvent_DatePicker_onAppear_0800
     * @tc.desic：Empty_DatePicker_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd DatePicker")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DatePickeronAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DatePickeronAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_onAppear_0900
     * @tc.name： Test_EmptyEvent_Divider_onAppear_0900
     * @tc.desic：Empty_Divider_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Divider")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DivideronAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("DivideronAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_onAppear_1000
     * @tc.name： Test_EmptyEvent_Gauge_onAppear_1000
     * @tc.desic：Empty_Gauge_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Gauge")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GaugeonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GaugeonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_onAppear_1100
     * @tc.name： Test_EmptyEvent_Image_onAppear_1100
     * @tc.desic：Empty_Image_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Image")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_onAppear_1200
     * @tc.name： Test_EmptyEvent_ImageSpan_onAppear_1200
     * @tc.desic：Empty_ImageSpan_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd ImageSpan")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpanonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ImageSpanonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_onAppear_1300
     * @tc.name： Test_EmptyEvent_LoadingProgress_onAppear_1300
     * @tc.desic：Empty_LoadingProgress_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd LoadingProgress")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("LoadingProgressonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("LoadingProgressonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_onAppear_1400
     * @tc.name： Test_EmptyEvent_Menu_onAppear_1400
     * @tc.desic：Empty_Menu_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Menu")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_onAppear_1500
     * @tc.name： Test_EmptyEvent_MenuItem_onAppear_1500
     * @tc.desic：Empty_MenuItem_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd MenuItem")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuItemonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuItemonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_onAppear_1600
     * @tc.name： Test_EmptyEvent_MenuItemGroup_onAppear_1600
     * @tc.desic：Empty_MenuItemGroup_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd MenuItemGroup")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuItemGrouponAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuItemGrouponAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_onAppear_1700
     * @tc.name： Test_EmptyEvent_Progress_onAppear_1700
     * @tc.desic：Empty_Progress_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Progress")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ProgressonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ProgressonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_onAppear_1800
     * @tc.name： Test_EmptyEvent_QRCode_onAppear_1800
     * @tc.desic：Empty_QRCode_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd QRCode")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("QRCodeonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("QRCodeonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_onAppear_1900
     * @tc.name： Test_EmptyEvent_Radio_onAppear_1900
     * @tc.desic：Empty_Radio_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Radio")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RadioonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RadioonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_onAppear_2000
     * @tc.name： Test_EmptyEvent_Rating_onAppear_2000
     * @tc.desic：Empty_Rating_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Rating")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RatingonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RatingonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_onAppear_2100
     * @tc.name： Test_EmptyEvent_Refresh_onAppear_2100
     * @tc.desic：Empty_Refresh_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Refresh")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RefreshonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RefreshonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_onAppear_2200
     * @tc.name： Test_EmptyEvent_RichEditor_onAppear_2200
     * @tc.desic：Empty_RichEditor_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd RichEditor")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RichEditoronAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RichEditoronAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_onAppear_2300
     * @tc.name： Test_EmptyEvent_RichText_onAppear_2300
     * @tc.desic：Empty_RichText_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd RichText")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RichTextonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RichTextonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_onAppear_2400
     * @tc.name： Test_EmptyEvent_RowSplit_onAppear_2400
     * @tc.desic：Empty_RowSplit_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd RowSplit")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplitonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplitonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_onAppear_2500
     * @tc.name： Test_EmptyEvent_ScrollBar_onAppear_2500
     * @tc.desic：Empty_ScrollBar_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd ScrollBar")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ScrollBaronAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ScrollBaronAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_onAppear_2600
     * @tc.name： Test_EmptyEvent_Search_onAppear_2600
     * @tc.desic：Empty_Search_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Search")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SearchonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SearchonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_onAppear_2700
     * @tc.name： Test_EmptyEvent_Slider_onAppear_2700
     * @tc.desic：Empty_Slider_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Slider")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SlideronAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SlideronAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }



    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_onAppear_2900
     * @tc.name： Test_EmptyEvent_Stepper_onAppear_2900
     * @tc.desic：Empty_Stepper_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Stepper_2900() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Stepper")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StepperonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StepperonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_onAppear_3000
     * @tc.name： Test_EmptyEvent_StepperItem_onAppear_3000
     * @tc.desic：Empty_StepperItem_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_StepperItem_3000() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd StepperItem")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StepperItemonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StepperItemonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_onAppear_3100
     * @tc.name： Test_EmptyEvent_Text_onAppear_3100
     * @tc.desic：Empty_Text_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Text_3100() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Text")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_onAppear_3200
     * @tc.name： Test_EmptyEvent_TextArea_onAppear_3200
     * @tc.desic：Empty_TextArea_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_TextArea_3200() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd TextArea")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextAreaonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextAreaonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_onAppear_3300
     * @tc.name： Test_EmptyEvent_TextClock_onAppear_3300
     * @tc.desic：Empty_TextClock_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_TextClock_3300() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd TextClock")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextClockonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextClockonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_onAppear_3400
     * @tc.name： Test_EmptyEvent_TextInput_onAppear_3400
     * @tc.desic：Empty_TextInput_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_TextInput_3400() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd TextInput")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInputonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInputonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_onAppear_3500
     * @tc.name： Test_EmptyEvent_TextPicker_onAppear_3500
     * @tc.desic：Empty_TextPicker_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_TextPicker_3500() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd TextPicker")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextPickeronAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextPickeronAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_onAppear_3600
     * @tc.name： Test_EmptyEvent_TextTimer_onAppear_3600
     * @tc.desic：Empty_TextTimer_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_TextTimer_3600() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd TextTimer")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimeronAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextTimeronAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_onAppear_3700
     * @tc.name： Test_EmptyEvent_Toggle_onAppear_3700
     * @tc.desic：Empty_Toggle_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Toggle_3700() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Toggle")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ToggleonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ToggleonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_onAppear_3800
     * @tc.name： Test_EmptyEvent_Web_onAppear_3800
     * @tc.desic：Empty_Web_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Web_3800() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Web")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("WebonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("WebonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_onAppear_3900
     * @tc.name： Test_EmptyEvent_Select_onAppear_3900
     * @tc.desic：Empty_Select_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Select_3900() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Select")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SelectonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SelectonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_onAppear_4000
     * @tc.name： Test_EmptyEvent_Badge_onAppear_4000
     * @tc.desic：Empty_Badge_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Badge_4000() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Badge")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("BadgeonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("BadgeonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_onAppear_4100
     * @tc.name： Test_EmptyEvent_Column_onAppear_4100
     * @tc.desic：Empty_Column_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Column_4100() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Column")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ColumnonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ColumnonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_onAppear_4200
     * @tc.name： Test_EmptyEvent_Grid_onAppear_4200
     * @tc.desic：Empty_Grid_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Grid_4200() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Grid")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_onAppear_4300
     * @tc.name： Test_EmptyEvent_GridItem_onAppear_4300
     * @tc.desic：Empty_GridItem_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_GridItem_4300() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd GridItem")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItemonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridItemonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_onAppear_4400
     * @tc.name： Test_EmptyEvent_GridRow_onAppear_4400
     * @tc.desic：Empty_GridRow_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_GridRow_4400() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd GridRow")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRowonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRowonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_onAppear_4500
     * @tc.name： Test_EmptyEvent_GridCol_onAppear_4500
     * @tc.desic：Empty_GridCol_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_GridCol_4500() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd GridCol")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridColonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridColonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_onAppear_4600
     * @tc.name： Test_EmptyEvent_Flex_onAppear_4600
     * @tc.desic：Empty_Flex_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Flex_4600() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Flex")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("FlexonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("FlexonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_onAppear_4700
     * @tc.name： Test_EmptyEvent_List_onAppear_4700
     * @tc.desic：Empty_List_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_List_4700() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd List")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_onAppear_4800
     * @tc.name： Test_EmptyEvent_ListItem_onAppear_4800
     * @tc.desic：Empty_ListItem_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_ListItem_4800() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd ListItem")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItemonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItemonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_onAppear_4900
     * @tc.name： Test_EmptyEvent_ListItemGroup_onAppear_4900
     * @tc.desic：Empty_ListItemGroup_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_ListItemGroup_4900() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd ListItemGroup")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItemGrouponAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItemGrouponAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_onAppear_5100
     * @tc.name： Test_EmptyEvent_RelativeContainer_onAppear_5100
     * @tc.desic：Empty_RelativeContainer_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_RelativeContainer_5100() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd RelativeContainer")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelativeContaineronAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RelativeContaineronAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_onAppear_5200
     * @tc.name： Test_EmptyEvent_Row_onAppear_5200
     * @tc.desic：Empty_Row_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Row_5200() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Row")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_onAppear_5300
     * @tc.name： Test_EmptyEvent_Scroll_onAppear_5300
     * @tc.desic：Empty_Scroll_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Scroll_5300() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Scroll")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ScrollonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ScrollonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_onAppear_5400
     * @tc.name： Test_EmptyEvent_Stack_onAppear_5400
     * @tc.desic：Empty_Stack_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Stack_5400() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Stack")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StackonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("StackonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_onAppear_5500
     * @tc.name： Test_EmptyEvent_Swiper_onAppear_5500
     * @tc.desic：Empty_Swiper_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Swiper_5500() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Swiper")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SwiperonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("SwiperonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_onAppear_5600
     * @tc.name： Test_EmptyEvent_Tabs_onAppear_5600
     * @tc.desic：Empty_Tabs_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Tabs_5600() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Tabs")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabsonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabsonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_onAppear_5700
     * @tc.name： Test_EmptyEvent_TabContent_onAppear_5700
     * @tc.desic：Empty_TabContent_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_TabContent_5700() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd TabContent")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContentonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TabContentonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_onAppear_5800
     * @tc.name： Test_EmptyEvent_Circle_onAppear_5800
     * @tc.desic：Empty_Circle_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Circle_5800() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Circle")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CircleonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CircleonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_onAppear_5900
     * @tc.name： Test_EmptyEvent_Line_onAppear_5900
     * @tc.desic：Empty_Line_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Line_5900() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Line")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("LineonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("LineonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_onAppear_6000
     * @tc.name： Test_EmptyEvent_Rect_onAppear_6000
     * @tc.desic：Empty_Rect_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Rect_6000() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Rect")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RectonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RectonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_onAppear_6100
     * @tc.name： Test_EmptyEvent_Shape_onAppear_6100
     * @tc.desic：Empty_Shape_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Shape_6100() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Shape")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ShapeonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ShapeonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_onAppear_6300
     * @tc.name： Test_EmptyEvent_Path_onAppear_6300
     * @tc.desic：Empty_Path_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Path_6300() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Path")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("PathonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("PathonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Canvas_onAppear_6400
     * @tc.name： Test_EmptyEvent_Canvas_onAppear_6400
     * @tc.desic：Empty_Canvas_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Canvas_6400() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Canvas")
        enterPage(scrollerId: "scroll", buttonId: "Canvas")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Canvas")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CanvasonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CanvasonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Video_onAppear_6500
     * @tc.name： Test_EmptyEvent_Video_onAppear_6500
     * @tc.desic：Empty_Video_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Video_6500() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Video")
        enterPage(scrollerId: "scroll", buttonId: "Video")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Video")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("VideoonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("VideoonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Counter_onAppear_7000
     * @tc.name： Test_EmptyEvent_Counter_onAppear_7000
     * @tc.desic：Empty_Counter_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Counter_7000() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Counter")
        enterPage(scrollerId: "scroll", buttonId: "Counter")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Counter")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CounteronAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CounteronAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_PatternLock_onAppear_7100
     * @tc.name： Test_EmptyEvent_PatternLock_onAppear_7100
     * @tc.desic：Empty_PatternLock_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_PatternLock_7100() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin PatternLock")
        enterPage(scrollerId: "scroll", buttonId: "PatternLock")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd PatternLock")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("PatternLockonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("PatternLockonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Ellipse_onAppear_7200
     * @tc.name： Test_EmptyEvent_Ellipse_onAppear_7200
     * @tc.desic：Empty_Ellipse_onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyEvent_onAppear_Ellipse_7200() {
        sleepFor(1.second)
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindBegin Ellipse")
        enterPage(scrollerId: "scroll", buttonId: "Ellipse")
        Hilog.info(0,"", "cangjietest", "Check onAppear: FindEnd Ellipse")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger onDisAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("EllipseonAppear")
            @Expect("Expect component not exists", "Actually component exists")
        } catch (e: Exception) {
            @Expect(true)
        }
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("changeAppear").centerPoint)
        sleepFor(1.second)
        @Expect(getInspector()["appearStatus", "content"], "\"Trigger OnAppear Success\"")
        try {
            Screen.getTheOnlyUiComponentWhoseIdEqualsTo("EllipseonAppear")
            @Expect(true)
        } catch (e: Exception) {
            @Expect("Expect component exists", "Actually component not exists")
        }
        Hilog.info(0,"", "cangjietest", "Check onAppear: Finished -----------------------------------------------")
        sleepFor(1.second)
        pressBack()
    }
}
