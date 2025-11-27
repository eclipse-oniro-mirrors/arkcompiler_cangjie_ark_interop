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
import ohos.arkui.state_macro_manage.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.arkui.state_macro_manage.r
import ohos.base.*

import kit.LocalizationKit.{AppResource}

import ohos.arkui.component.*
import kit.TestKit.On as TestKit_On
import std.collection.skip
import std.collection.contains

@Test
class Test_RichEditor04 {
    protected override func beforeAll() {
        sleep(3.second)
        enterPage(scrollerId: "scroller", buttonId: "View_RichEditor")
    }

    protected override func afterAll() {
        pressBack()
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_0100
    * @tc.name      : Test_RichEditor04_01
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor04_01() {
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_getCaretOffset").centerPoint)
        sleep(2.second)
        let text1 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Text_CaretOffset")
        @Expect(text1["content"], "\"position: 0\"")
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_addTextSpan").centerPoint)
        sleep(2.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_getCaretOffset").centerPoint)
        sleep(2.second)
        let text2 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Text_CaretOffset")
        @Expect(text2["content"], "\"position: 4\"")
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_addTextSpan").centerPoint)
        sleep(2.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_getCaretOffset").centerPoint)
        sleep(2.second)
        let text3 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Text_CaretOffset")
        @Expect(text3["content"], "\"position: 8\"")
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_addImageSpan").centerPoint)
        sleep(2.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_getCaretOffset").centerPoint)
        sleep(2.second)
        let text4 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Text_CaretOffset")
        @Expect(text4["content"], "\"position: 9\"")
    }

}
