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
class Test_Animator {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage(scrollerId: "scroller", buttonId: "View_Animator")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }
    
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Animator_0100
    * @tc.name      : Test_Animator_02
    * @tc.desc      : test UIKit Animator
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Animator_02() {
        Hilog.info(0, "cangjietest", "test", "Test_Animator_02 start")
        sleepFor(1.second)

        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("play").centerPoint)
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("play")
        @Expect(starticon["fontSize"], "\"30.00fp\"")
    }
    
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Animator_0200
    * @tc.name      : Test_Animator_04
    * @tc.desc      : test UIKit Animator
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Animator_04() {
        Hilog.info(0, "cangjietest", "test", "Test_Animator_04 start")
        sleepFor(1.second)

        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pause").centerPoint)
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("pause")
        @Expect(starticon["fontSize"], "\"30.00fp\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Animator_0300
    * @tc.name      : Test_Animator_05
    * @tc.desc      : test UIKit Animator
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Animator_05() {
        Hilog.info(0, "cangjietest", "test", "Test_Animator_05 start")
        sleepFor(1.second)

        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("cancel").centerPoint)
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("cancel")
        @Expect(starticon["fontSize"], "\"30.00fp\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Animator_0400
    * @tc.name      : Test_Animator_06
    * @tc.desc      : test UIKit Animator
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Animator_06() {
        Hilog.info(0, "cangjietest", "test", "Test_Animator_06 start")
        sleepFor(1.second)

        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("reverse").centerPoint)
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("reverse")
        @Expect(starticon["fontSize"], "\"30.00fp\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Animator_0500
    * @tc.name      : Test_Animator_07
    * @tc.desc      : test UIKit Animator
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Animator_07() {
        Hilog.info(0, "cangjietest", "test", "Test_Animator_07 start")
        sleepFor(1.second)

        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("finish").centerPoint)
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("finish")
        @Expect(starticon["fontSize"], "\"30.00fp\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Animator_0600
    * @tc.name      : Test_Animator_08
    * @tc.desc      : test UIKit Animator
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Animator_08() {
        Hilog.info(0, "cangjietest", "test", "Test_Animator_06 start")
        sleepFor(1.second)

        click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("reset").centerPoint)
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("reset")
        @Expect(starticon["fontSize"], "\"30.00fp\"")
    }
}
