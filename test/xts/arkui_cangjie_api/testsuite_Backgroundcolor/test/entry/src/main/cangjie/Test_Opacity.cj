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
class Test_Opacity {
        protected override func beforeAll() {
        enterPage(scrollerId: "scroller", buttonId: "View_Opacity")
    }

        protected override func afterAll() {
        pressBack()
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Text_0100
    * @tc.name      : Test_Opacity_Backgroundcolor_0100
    * @tc.desc      : Text_backgroundColor_#FFAFEEEE & Text_opacity_1
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Opacity_Backgroundcolor_0100() {
        Hilog.info(0, "cangjietest", "Test_Opacity_Backgroundcolor_01 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text1")
        @Expect(starticon["backgroundColor"], "\"#FFAFEEEE\"")
        @Expect(starticon["opacity"], "1")
        @Expect(starticon["width"], "\"90.00%\"")
        @Expect(starticon["height"], "\"50.00vp\"")
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Text_0200
    * @tc.name      : Test_Opacity_Backgroundcolor_0200
    * @tc.desc      : Text_backgroundColor_#FFAFEEEE & Text_opacity_0.700000
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */   
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Opacity_Backgroundcolor_0200() {
        Hilog.info(0, "cangjietest", "Test_Opacit_Backgroundcolor_02 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text2")
        @Expect(starticon["backgroundColor"], "\"#FFAFEEEE\"")
        @Expect(starticon["opacity"], "0.700000")
        @Expect(starticon["width"], "\"90.00%\"")
        @Expect(starticon["height"], "\"50.00vp\"")
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Text_0300
    * @tc.name      : Test_Opacity_Backgroundcolor_0300
    * @tc.desc      : Text_backgroundColor_#FFAFEEEE & Text_opacity_0.400000
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Opacity_Backgroundcolor_0300() {
        Hilog.info(0, "cangjietest", "Test_Opacit_Backgroundcolor_03 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text3")
        @Expect(starticon["backgroundColor"], "\"#FFAFEEEE\"")
        @Expect(starticon["opacity"], "0.400000")
        @Expect(starticon["width"], "\"90.00%\"")
        @Expect(starticon["height"], "\"50.00vp\"")
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Text_0400
    * @tc.name      : Test_Opacity_Backgroundcolor_0400
    * @tc.desc      : Text_backgroundColor_#FFAFEEEE & Text_opacity_0.100000
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Opacity_Backgroundcolor_0400() {
        Hilog.info(0, "cangjietest", "Test_Opacit_Backgroundcolor_04 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text4")
        @Expect(starticon["backgroundColor"], "\"#FFAFEEEE\"")
        @Expect(starticon["opacity"], "0.100000")
        @Expect(starticon["width"], "\"90.00%\"")
        @Expect(starticon["height"], "\"50.00vp\"")
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Text_0500
    * @tc.name      : Test_Opacity_Backgroundcolor_0500
    * @tc.desc      : Text_backgroundColor_#FFAFEEEE & Text_opacity_0
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Opacity_Backgroundcolor_0500() {
        Hilog.info(0, "cangjietest", "Test_Opacit_Backgroundcolor_05 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text5")
        @Expect(starticon["backgroundColor"], "\"#FFAFEEEE\"")
        @Expect(starticon["opacity"], "0")
        @Expect(starticon["width"], "\"90.00%\"")
        @Expect(starticon["height"], "\"50.00vp\"")
    }
}
