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
import std.convert.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*

@Test
class Test_Measure {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage(scrollerId: "scroller", buttonId: "View_Measure")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Measure_0100
    * @tc.name      : Test_Measure_01
    * @tc.desc      : test UIKit Measure
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Measure_01() {
        Hilog.info(0, "cangjietest", "test", "Test_Measure_01 start")
        sleepFor(1.second)

        let t = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textSize").text
        Hilog.info(0, "cangjietest", "test", "t = |${t}|")
        @Expect(Float64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("textSize")
            .text) >= 0.0)
    }
}
