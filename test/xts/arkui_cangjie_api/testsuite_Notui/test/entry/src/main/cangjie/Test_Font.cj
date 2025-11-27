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
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*

@Test
class Test_Font {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage(scrollerId: "scroller", buttonId: "View_Font")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Font_0100
    * @tc.name      : Test_Font_01
    * @tc.desc      : test UIKit Font
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Font_01() {
        Hilog.info(0, "cangjietest", "test", "Test_Font_01 start")
        sleepFor(1.second)

        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button1").centerPoint)
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text")
        @Expect(starticon["content"], "\"1\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Font_0200
    * @tc.name      : Test_Font_02
    * @tc.desc      : test UIKit Font
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Font_02() {
        Hilog.info(0, "cangjietest", "test", "Test_Font_02 start")
        sleepFor(1.second)

        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button2").centerPoint)
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button2")
        @Expect(starticon["label"], "\"HelloWorld2\"")
    }
    
}
