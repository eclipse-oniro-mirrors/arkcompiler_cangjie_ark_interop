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

@Test
class Test_RichEditor {
    protected override func beforeAll() {
        sleep(3.second)
        enterPage(scrollerId: "scroller", buttonId: "View_RichEditor")
    }

    protected override func afterAll() {
        pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_0100
    * @tc.name      : Test_RichEditor_01
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_01() {
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_getSpan").centerPoint)
        sleep(2.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text")
        @Expect(text["content"], "\"0\"")
        let text0 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text01")
        @Expect(text0["content"], "\"[]\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_0200
    * @tc.name      : Test_RichEditor_02
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_02() {
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_addTextSpan").centerPoint)
        sleep(2.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_addTextSpan").centerPoint)
        sleep(2.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_getSpan").centerPoint)
        sleep(2.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text")
        @Expect(text["content"], "\"1\"")
        let text1 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text01")
        @Expect(text1["content"], "\"[Helo]\"")
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_addTextSpan").centerPoint)
        sleep(2.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_getSpan").centerPoint)
        sleep(2.second)
        let text01 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text")
        @Expect(text01["content"], "\"1\"")
        let text1_01 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text01")
        @Expect(text1_01["content"], "\"[Helo]\"")
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_addTextSpan").centerPoint)
        sleep(2.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_getSpan").centerPoint)
        sleep(2.second)
        let text02 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text")
        @Expect(text02["content"], "\"1\"")
        let text1_02 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text01")
        @Expect(text1_02["content"], "\"[Helo]\"")
        Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_RichEditor").perform(clearText())
        sleep(5.second)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_RichEditor_0300
    * @tc.name      : Test_RichEditor_03
    * @tc.desc      : test UIKit RichEditor
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_RichEditor_03() {
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_RichEditor").centerPoint)
        sleep(1.second)
        input(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_RichEditor").centerPoint, text: "你好")
        sleep(1.second)
        click(at: Point(1175, 2483))
        sleep(1.second)
        click(at: Point(864, 2290))
        sleep(1.second)
        click(at: Point(943, 1974))
        sleep(1.second)
        click(at: Point(776, 2136))
        sleep(1.second)
        click(at: Point(162, 2118))
        sleep(1.second)
        click(at: Point(1044, 1947))
        sleep(1.second)
        click(at: Point(136, 1789))

        sleep(1.second)
        click(at: Point(1175, 2483))
        sleep(1.second)
        click(at: Point(864, 2290))
        sleep(1.second)
        click(at: Point(943, 1974))
        sleep(1.second)
        click(at: Point(776, 2136))
        sleep(1.second)
        click(at: Point(162, 2118))
        sleep(1.second)
        click(at: Point(1044, 1947))
        sleep(1.second)
        click(at: Point(136, 1789))
        sleep(1.second)

        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_getSpan").centerPoint)
        sleep(2.second)
        let text01 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text")
        @Expect(text01["content"], "\"1\"")
        let text1_01 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text01")
        @Expect(text1_01["content"], "\"[你几几号]\"")

        sleep(1.second)
        click(at: Point(1175, 2483))
        sleep(1.second)
        click(at: Point(864, 2290))
        sleep(1.second)
        click(at: Point(943, 1974))
        sleep(1.second)
        click(at: Point(776, 2136))
        sleep(1.second)
        click(at: Point(162, 2118))
        sleep(1.second)
        click(at: Point(1044, 1947))
        sleep(1.second)
        click(at: Point(136, 1789))

        sleep(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Test_getSpan").centerPoint)
        sleep(2.second)
        let text02 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text")
        @Expect(text02["content"], "\"1\"")
        let text1_02 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("Test_Text01")
        @Expect(text1_02["content"], "\"[你几几几号]\"")
    }
}
