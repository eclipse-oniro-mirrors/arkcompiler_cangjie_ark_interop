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
class Test_Button_Backgroundcolor {

    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage(scrollerId: "scroller", buttonId: "View_Button_Backgroundcolor")
    }

        protected override func afterAll() {
        pressBack()
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Button_0100
    * @tc.name      : Test_Button_Backgroundcolor_0100
    * @tc.desc      : Button_backgroundColor_#FF317AFF & Button_fontSize_40.00fp
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Button_Backgroundcolor_0100() {
        Hilog.info(0, "cangjietest", "Test_Button_Backgroundcolor_01 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button")
        @Expect(starticon["backgroundColor"], "\"#FF317AFF\"")
        @Expect(starticon["fontSize"], "\"40.00fp\"")
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Button_0200
    * @tc.name      : Test_Button_Backgroundcolor_0200
    * @tc.desc      : Button_width_210.00vp & Button_height_100.00vp
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Button_Backgroundcolor_0200() {
        Hilog.info(0, "cangjietest", "Test_Button_Backgroundcolor_02 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button")
        @Expect(starticon["width"], "\"210.00vp\"")
        @Expect(starticon["height"], "\"100.00vp\"")
    }
}
