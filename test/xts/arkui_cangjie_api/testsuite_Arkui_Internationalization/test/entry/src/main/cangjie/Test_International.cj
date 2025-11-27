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
import ohos.arkui.state_macro_manage.r
import ohos.base.*
import ohos.ui_test.*
import kit.LocalizationKit.{AppResource}

@Test
class Test_International {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage(scrollerId: "scroller", buttonId: "View_International")
    }

        protected override func afterAll() {
        pressBack()
    }

    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Text_0100
    * @tc.name      : Test_International_0100
    * @tc.desc      : Text_fontColor_#FF0000FF & Text_content_Hello_cn
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_International_0100() {
        Hilog.info(0, "cangjietest", "Test_International_01 start")
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("string_hello")
        @Expect(text["fontColor"], "\"#FF0000FF\"")
        @Expect(text["content"], "\"Hello_cn\"")
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Text_0200
    * @tc.name      : Test_International_0200
    * @tc.desc      : Text_fontColor_#FFFF0000 & Text_content_Hello_cn
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_International_0200() {
        Hilog.info(0, "cangjietest", "Test_International_02 start")
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("string_world")
        @Expect(text["fontColor"], "\"#FFFF0000\"")
        @Expect(text["content"], "\"World_cn\"")
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Text_0300
    * @tc.name      : Test_International_0300
    * @tc.desc      : Text_fontColor_#FFFF0000 & Text_content_Arkui_base
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_International_0300() {
        Hilog.info(0, "cangjietest", "Test_International_03 start")
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("string_arkui")
        @Expect(text["fontColor"], "\"#FF000000\"")
        @Expect(text["content"], "\"Arkui_base\"")
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Text_0400
    * @tc.name      : Test_International_0400
    * @tc.desc      : Text_fontColor_#FFF00000 & Text_content_common
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_International_0400() {
        Hilog.info(0, "cangjietest", "Test_International_04 start")
        sleepFor(1.second)
        let text = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("string_commom")
        @Expect(text["fontColor"], "\"#FFF00000\"")
        @Expect(text["content"], "\"common\"")
    }
    
    @TestCase
    @Tag[APILevel22, TestLevel0]
/* 
    * @tc.number    : Sub_Cangjie_UIKit_Image_0500
    * @tc.name      : Test_International_0500
    * @tc.desc      : Image_width_110.00vp & Image_src_gif_common
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
        func Test_International_0500() {
        Hilog.info(0, "cangjietest", "Test_International_05 start")
        sleepFor(1.second)
        let starticon = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("gif_common")
        @Expect(starticon["width"], "\"110.00vp\"")
        @Expect(starticon["src"].contains("${@r(app.media.gif_common).id}"))
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Image_0600
    * @tc.name      : Test_International_0600
    * @tc.desc      : Image_borderStyle_BorderStyle.Dashed & Image_src_background
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_International_0600() {
        Hilog.info(0, "cangjietest", "Test_International_06 start")
        sleepFor(1.second)
        let starticon = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("png")
        @Expect(starticon["width"], "\"100.00vp\"")
        @Expect(starticon["borderStyle"], "\"BorderStyle.Dashed\"")
        @Expect(starticon["src"].contains("${@r(app.media.background).id}"))
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Image_0700
    * @tc.name      : Test_International_0700
    * @tc.desc      : Image_borderStyle_BorderStyle.Dashed & Image_src_webp1_common
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_International_0700() {
        Hilog.info(0, "cangjietest", "Test_International_07 start")
        sleepFor(1.second)
        let starticon = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("gif1")
        @Expect(starticon["width"], "\"120.00vp\"")
        @Expect(starticon["borderStyle"], "\"BorderStyle.Dashed\"")
        @Expect(starticon["src"].contains("${@r(app.media.webp1_common).id}"))
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Image_0800
    * @tc.name      : Test_International_0800
    * @tc.desc      : Image_borderStyle_BorderStyle.Dashed & Image_src_bmp1.bmp
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_International_0800() {
        Hilog.info(0, "cangjietest", "Test_International_08 start")
        sleepFor(1.second)
        let starticon = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("bmp")
        @Expect(starticon["width"], "\"130.00vp\"")
        @Expect(starticon["borderStyle"], "\"BorderStyle.Dashed\"")
        @Expect(starticon["src"].contains("bmp1.bmp"))
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Image_0900
    * @tc.name      : Test_International_0900
    * @tc.desc      : Image_borderStyle_BorderStyle.Dashed & Image_src_image_path/gif2.gif
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_International_0900() {
        Hilog.info(0, "cangjietest", "Test_International_09 start")
        sleepFor(1.second)
        let starticon = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("gif")
        @Expect(starticon["width"], "\"80.00vp\"")
        @Expect(starticon["borderStyle"], "\"BorderStyle.Dashed\"")
        @Expect(starticon["src"].contains("image_path/gif2.gif"))
    }
    
    /* 
    * @tc.number    : Sub_Cangjie_UIKit_Image_1000
    * @tc.name      : Test_International_1000
    * @tc.desc      : Image_borderStyle_BorderStyle.Dashed & Image_src_starticon.png
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
        func Test_International_1000() {
        Hilog.info(0, "cangjietest", "Test_International_10 start")
        sleepFor(1.second)
        let starticon = UiComponentTree.getTheOnlyUiComponentWhoseIdEqualsTo("startIcon_png")
        @Expect(starticon["width"], "\"90.00vp\"")
        @Expect(starticon["borderStyle"], "\"BorderStyle.Dashed\"")
        @Expect(starticon["src"].contains("starticon.png"))
    }

}
