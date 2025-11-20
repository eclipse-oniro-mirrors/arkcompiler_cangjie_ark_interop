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
class Test_Flex_Backgroundcolor {

        protected override func beforeAll() {
        enterPage(scrollerId: "scroller", buttonId: "View_Flex_Backgroundcolor")
    }

        protected override func afterAll() {
        pressBack()
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Flex_0100
    * @tc.name      : Test_Flex_Backgroundcolor_0100
    * @tc.desc      : Flex_backgroundColor_#FFAFEEEE
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Flex_Backgroundcolor_0100() {
        Hilog.info(0, "cangjietest", "Test_Flex_Backgroundcolor_01 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flexBasis")
        @Expect(starticon["backgroundColor"], "\"#FFAFEEEE\"")
        @Expect(starticon["padding"], "\"10.00vp\"")
        @Expect(starticon["width"], "\"90.00%\"")
        @Expect(starticon["height"], "\"120.00vp\"")
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Flex_0200
    * @tc.name      : Test_Flex_Backgroundcolor_0200
    * @tc.desc      : Flex_backgroundColor_#FFAFEEEE
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Flex_Backgroundcolor_0200() {
        Hilog.info(0, "cangjietest", "Test_Flex_Backgroundcolor_02 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flexGrow")
        @Expect(starticon["backgroundColor"], "\"#FFAFEEEE\"")
        @Expect(starticon["padding"], "\"10.00vp\"")
        @Expect(starticon["width"], "\"90.00%\"")
        @Expect(starticon["height"], "\"120.00vp\"")
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Flex_0300
    * @tc.name      : Test_Flex_Backgroundcolor_0300
    * @tc.desc      : Flex_backgroundColor_#FFAFEEEE
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Flex_Backgroundcolor_0300() {
        Hilog.info(0, "cangjietest", "Test_Flex_Backgroundcolor_03 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flexShrink")
        @Expect(starticon["backgroundColor"], "\"#FFAFEEEE\"")
        @Expect(starticon["padding"], "\"10.00vp\"")
        @Expect(starticon["width"], "\"90.00%\"")
        @Expect(starticon["height"], "\"120.00vp\"")
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Flex_0400
    * @tc.name      : Test_Flex_Backgroundcolor_0400
    * @tc.desc      : Flex_backgroundColor_#FFAFEEEE
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Flex_Backgroundcolor_04() {
        Hilog.info(0, "cangjietest", "Test_Flex_Backgroundcolor_04 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("alignSelf")
        @Expect(starticon["backgroundColor"], "\"#FFAFEEEE\"")
        @Expect(starticon["padding"], "\"10.00vp\"")
        @Expect(starticon["width"], "\"90.00%\"")
        @Expect(starticon["height"], "\"120.00vp\"")
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Flex_0500
    * @tc.name      : Test_Flex_Backgroundcolor_0500
    * @tc.desc      : Flex_backgroundColor_#FFF5DEB3 & Flex_flexBasis_100.00vp
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Flex_Backgroundcolor_0500() {
        Hilog.info(0, "cangjietest", "Test_Flex_Backgroundcolor_05 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("text_1")
        @Expect(starticon["backgroundColor"], "\"#FFF5DEB3\"")
        @Expect(starticon["flexBasis"], "\"100.00vp\"")
        @Expect(starticon["height"], "\"100.00vp\"")
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Flex_0600
    * @tc.name      : Test_Flex_Backgroundcolor_0600
    * @tc.desc      : Flex_backgroundColor_#FFD2B48C
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_Flex_Backgroundcolor_0600() {
        Hilog.info(0, "cangjietest", "Test_Flex_Backgroundcolor_06 start")
        sleepFor(1.second)
        let starticon = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("text_2")
        @Expect(starticon["backgroundColor"], "\"#FFD2B48C\"")
        @Expect(starticon["width"], "\"60.00%\"")
        @Expect(starticon["height"], "\"100.00vp\"")
    }
}
