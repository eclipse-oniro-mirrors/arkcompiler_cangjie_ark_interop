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
class Test_Enabled {
        protected override func beforeAll() {
        enterPage(scrollerId: "scroller", buttonId: "View_Enabled")
    }

        protected override func afterAll() {
        pressBack()
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Button_0100
    * @tc.name      : Test_Enabled_0100
    * @tc.desc      : Button_opacity_0.400000 & Button_enabled_false
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Enabled_0100() {
        Hilog.info(0, "cangjietest", "Test_Enable_01 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button1")
        @Expect(starticon["backgroundColor"], "\"#FF317AFF\"")
        @Expect(starticon["opacity"], "0.400000")
        @Expect(starticon["enabled"], "false")
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Button_0200
    * @tc.name      : Test_Enabled_0200
    * @tc.desc      : Button_backgroundColor_#FF317AFF
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Enabled_0200() {
        Hilog.info(0, "cangjietest", "Test_Enable_02 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button2")
        @Expect(starticon["backgroundColor"], "\"#FF317AFF\"")
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Button_0300
    * @tc.name      : Test_Enabled_0300
    * @tc.desc      : Button_width_100.00%
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */  
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Enabled_0300() {
        Hilog.info(0, "cangjietest", "Test_Enable_03 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Flex")
        @Expect(starticon["width"], "\"100.00%\"")
    }
}
