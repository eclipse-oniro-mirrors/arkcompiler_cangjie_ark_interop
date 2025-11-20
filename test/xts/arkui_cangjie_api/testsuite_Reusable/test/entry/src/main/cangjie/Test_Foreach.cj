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

internal import ohos.hilog.*
import std.unittest.testmacro.*
import ohos.arkui.state_macro_manage.*
import std.unittest.*
import std.unittest.common.*
import ohos.base.*

@Test
class Test_Foreach_Reuse {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage(scrollerId: "scroller", buttonId: "View_Foreach")
    }

    protected override func afterAll() {
        pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Foreach_Reuse_0100
    * @tc.name      : Test_Foreach_Reuse_0100
    * @tc.desc      : test UIKit Foreach Reuse
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Foreach_Reuse_0100() {
        Hilog.info(0, "cangjietest", "Test_Foreach_Reuse_0100 start")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("update").centerPoint)
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("List")
        @Expect(text["cachedCount"], "\"0\"")
        let text1 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_2")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Foreach_Reuse_0200
    * @tc.name      : Test_Foreach_Reuse_0200
    * @tc.desc      : test UIKit Foreach Reuse
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Foreach_Reuse_0200() {
        Hilog.info(0, "cangjietest", "Test_Foreach_Reuse_0200 start")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("clear").centerPoint)
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("List")
        @Expect(text["cachedCount"], "\"0\"")
        let text1 = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text").text
        @Expect(text1, "出现")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Foreach_Reuse_0300
    * @tc.name      : Test_Foreach_Reuse_0300
    * @tc.desc      : test UIKit Foreach Reuse
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Foreach_Reuse_0300() {
        Hilog.info(0, "cangjietest", "Test_Foreach_Reuse_0300 start")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("update").centerPoint)
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("List")
        @Expect(text["cachedCount"], "\"0\"")
        let text1 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_2")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Foreach_Reuse_0400
    * @tc.name      : Test_Foreach_Reuse_0400
    * @tc.desc      : test UIKit Foreach Reuse
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Foreach_Reuse_0400() {
        Hilog.info(0, "cangjietest", "Test_Foreach_Reuse_0400 start")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("clear").centerPoint)
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("List")
        @Expect(text["cachedCount"], "\"0\"")
        let text1 = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text").text
        @Expect(text1, "出现")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Foreach_Reuse_0500
    * @tc.name      : Test_Foreach_Reuse_0500
    * @tc.desc      : test UIKit Foreach Reuse
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Foreach_Reuse_0500() {
        Hilog.info(0, "cangjietest", "Test_Foreach_Reuse_0500 start")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("update").centerPoint)
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("List")
        @Expect(text["cachedCount"], "\"0\"")
        let text1 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_2")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Foreach_Reuse_0600
    * @tc.name      : Test_Foreach_Reuse_0600
    * @tc.desc      : test UIKit Foreach Reuse
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Foreach_Reuse_0600() {
        Hilog.info(0, "cangjietest", "Test_Foreach_Reuse_0600 start")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("clear").centerPoint)
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("List")
        @Expect(text["cachedCount"], "\"0\"")
        let text1 = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text").text
        @Expect(text1, "出现")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Foreach_Reuse_0700
    * @tc.name      : Test_Foreach_Reuse_0700
    * @tc.desc      : test UIKit Foreach Reuse
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Foreach_Reuse_0700() {
        Hilog.info(0, "cangjietest", "Test_Foreach_Reuse_0700 start")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("update").centerPoint)
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("List")
        @Expect(text["cachedCount"], "\"0\"")
        let text1 = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_2")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Foreach_Reuse_0800
    * @tc.name      : Test_Foreach_Reuse_0800
    * @tc.desc      : test UIKit Foreach Reuse
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Foreach_Reuse_0800() {
        Hilog.info(0, "cangjietest", "Test_Foreach_Reuse_0800 start")
        sleepFor(1.second)
        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("clear").centerPoint)
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("List")
        @Expect(text["cachedCount"], "\"0\"")
        let text1 = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text").text
        @Expect(text1, "出现")
    }
}
