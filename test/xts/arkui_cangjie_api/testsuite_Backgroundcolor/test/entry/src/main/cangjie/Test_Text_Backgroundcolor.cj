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


import std.unittest.testmacro.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*

@Test
class Test_Text_Backgroundcolor {
        protected override func beforeAll() {
        enterPage(scrollerId: "scroller", buttonId: "View_Text_Backgroundcolor")
    }

        protected override func afterAll() {
        pressBack()
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Text_0100
    * @tc.name      : Test_Text_Backgroundcolor_0100
    * @tc.desc      : Text_backgroundColor_#FF008000
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Text_Backgroundcolor_0100() {
        Hilog.info(0, "cangjietest", "Test_Text_Backgroundcolor_01 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text")
        @Expect(starticon["backgroundColor"], "\"#FF008000\"")
        @Expect(starticon["margin"], "\"30.00vp\"")
        @Expect(starticon["fontSize"], "\"30.00fp\"")
    }
}
