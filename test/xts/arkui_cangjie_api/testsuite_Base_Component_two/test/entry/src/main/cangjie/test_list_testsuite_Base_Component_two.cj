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
let _ = testsuite()

func testsuite(): Unit {
    registerTestSuite("Test_DataPanel_Component", {=> Test_DataPanel_Component()})
    registerTestSuite("Test_MenuItem_Component", {=> Test_MenuItem_Component()})
    registerTestSuite("Test_Checkbox_Component", {=> Test_Checkbox_Component()})
    registerTestSuite("Test_Select_Component", {=> Test_Select_Component()})
    registerTestSuite("Test_Slider_Component", {=> Test_Slider_Component()})
    registerTestSuite("Test_TextPicker_Component", {=> Test_TextPicker_Component()})
    registerTestSuite("Test_CheckboxGroup_Component", {=> Test_CheckboxGroup_Component()})
    registerTestSuite("Test_QRCode_Component", {=> Test_QRCode_Component()})
    registerTestSuite("Test_ImageSpan_Component", {=> Test_ImageSpan_Component()})
    registerTestSuite("Test_Menu_Component", {=> Test_Menu_Component()})
    registerTestSuite("Test_ScrollBar_Component", {=> Test_ScrollBar_Component()})
    registerTestSuite("Test_Blank_Component", {=> Test_Blank_Component()})
    registerTestSuite("Test_AlphabetIndexer_Component", {=> Test_AlphabetIndexer_Component()})
    registerTestSuite("Test_Search_Component", {=> Test_Search_Component()})
    registerTestSuite("Test_Badge_Component", {=> Test_Badge_Component()})
    registerTestSuite("Test_Progress_Component", {=> Test_Progress_Component()})
    registerTestSuite("Test_Text_Component", {=> Test_Text_Component()})
    registerTestSuite("Test_Button_Component", {=> Test_Button_Component()})
    registerTestSuite("Test_TextArea_Component", {=> Test_TextArea_Component()})
    registerTestSuite("Test_Toggle_Component", {=> Test_Toggle_Component()})
    registerTestSuite("Test_DatePicker_Component", {=> Test_DatePicker_Component()})
    registerTestSuite("Test_Divider_Component", {=> Test_Divider_Component()})
    registerTestSuite("Test_TextInput_Component", {=> Test_TextInput_Component()})
    registerTestSuite("Test_Rating_Component", {=> Test_Rating_Component()})
    registerTestSuite("Test_Stepper_Component", {=> Test_Stepper_Component()})
    registerTestSuite("Test_MenuItemGroup_Component", {=> Test_MenuItemGroup_Component()})
    registerTestSuite("Test_Radio_Component", {=> Test_Radio_Component()})
    registerTestSuite("Test_LoadingProgress_Component", {=> Test_LoadingProgress_Component()})
    registerTestSuite("Test_Gauge_Component", {=> Test_Gauge_Component()})
}
