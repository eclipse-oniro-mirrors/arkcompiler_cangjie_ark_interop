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
import std.unittest.*
import std.unittest.common.*

@Test
class Test_EmptyAttrs_FlexGrow {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("FlexGrow")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_FlexGrow_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_FlexGrow_0100
     * @tc.desic：Empty_AlphabetIndexer_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["AlphabetIndexer" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["AlphabetIndexer" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_FlexGrow_0300
     * @tc.name： Test_EmptyAttrs_Button_FlexGrow_0300
     * @tc.desic：Empty_Button_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Button")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Button" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Button" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_FlexGrow_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_FlexGrow_0400
     * @tc.desic：Empty_Checkbox_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Checkbox")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Checkbox" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Checkbox" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_FlexGrow_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_FlexGrow_0500
     * @tc.desic：Empty_CheckboxGroup_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["CheckboxGroup" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["CheckboxGroup" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_FlexGrow_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_FlexGrow_0700
     * @tc.desic：Empty_DataPanel_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd DataPanel")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["DataPanel" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["DataPanel" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_FlexGrow_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_FlexGrow_0800
     * @tc.desic：Empty_DatePicker_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd DatePicker")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["DatePicker" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["DatePicker" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_FlexGrow_0900
     * @tc.name： Test_EmptyAttrs_Divider_FlexGrow_0900
     * @tc.desic：Empty_Divider_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Divider")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Divider" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Divider" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_FlexGrow_1000
     * @tc.name： Test_EmptyAttrs_Gauge_FlexGrow_1000
     * @tc.desic：Empty_Gauge_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Gauge")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Gauge" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Gauge" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_FlexGrow_1100
     * @tc.name： Test_EmptyAttrs_Image_FlexGrow_1100
     * @tc.desic：Empty_Image_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Image")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Image" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Image" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_FlexGrow_1200
     * @tc.name： Test_EmptyAttrs_LoadingProgress_FlexGrow_1200
     * @tc.desic：Empty_LoadingProgress_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_LoadingProgress_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["LoadingProgress" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["LoadingProgress" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_FlexGrow_1300
     * @tc.name： Test_EmptyAttrs_Menu_FlexGrow_1300
     * @tc.desic：Empty_Menu_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Menu_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Menu")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Menu" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Menu" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_FlexGrow_1400
     * @tc.name： Test_EmptyAttrs_Progress_FlexGrow_1400
     * @tc.desic：Empty_Progress_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Progress_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Progress")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Progress" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Progress" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_FlexGrow_1500
     * @tc.name： Test_EmptyAttrs_QRCode_FlexGrow_1500
     * @tc.desic：Empty_QRCode_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_QRCode_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd QRCode")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["QRCode" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["QRCode" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_FlexGrow_1600
     * @tc.name： Test_EmptyAttrs_Radio_FlexGrow_1600
     * @tc.desic：Empty_Radio_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Radio_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Radio")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Radio" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Radio" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_FlexGrow_1700
     * @tc.name： Test_EmptyAttrs_Rating_FlexGrow_1700
     * @tc.desic：Empty_Rating_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Rating_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Rating")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Rating" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Rating" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_FlexGrow_1800
     * @tc.name： Test_EmptyAttrs_Refresh_FlexGrow_1800
     * @tc.desic：Empty_Refresh_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Refresh_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Refresh")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Refresh" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Refresh" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_FlexGrow_1900
     * @tc.name： Test_EmptyAttrs_RichEditor_FlexGrow_1900
     * @tc.desic：Empty_RichEditor_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_RichEditor_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd RichEditor")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["RichEditor" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["RichEditor" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_FlexGrow_2000
     * @tc.name： Test_EmptyAttrs_RichText_FlexGrow_2000
     * @tc.desic：Empty_RichText_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_RichText_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd RichText")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["RichText" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["RichText" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_FlexGrow_2100
     * @tc.name： Test_EmptyAttrs_RowSplit_FlexGrow_2100
     * @tc.desic：Empty_RowSplit_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_RowSplit_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd RowSplit")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["RowSplit" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["RowSplit" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_FlexGrow_2200
     * @tc.name： Test_EmptyAttrs_ScrollBar_FlexGrow_2200
     * @tc.desic：Empty_ScrollBar_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_ScrollBar_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd ScrollBar")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["ScrollBar" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["ScrollBar" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_FlexGrow_2300
     * @tc.name： Test_EmptyAttrs_Search_FlexGrow_2300
     * @tc.desic：Empty_Search_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Search_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Search")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Search" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Search" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_FlexGrow_2400
     * @tc.name： Test_EmptyAttrs_Slider_FlexGrow_2400
     * @tc.desic：Empty_Slider_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Slider_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Slider")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Slider" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Slider" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_FlexGrow_2500
     * @tc.name： Test_EmptyAttrs_Stepper_FlexGrow_2500
     * @tc.desic：Empty_Stepper_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Stepper_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Stepper")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Stepper" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Stepper" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_FlexGrow_2600
     * @tc.name： Test_EmptyAttrs_Text_FlexGrow_2600
     * @tc.desic：Empty_Text_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Text_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Text")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Text" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Text" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_FlexGrow_2700
     * @tc.name： Test_EmptyAttrs_TextArea_FlexGrow_2700
     * @tc.desic：Empty_TextArea_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_TextArea_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd TextArea")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["TextArea" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["TextArea" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_FlexGrow_2800
     * @tc.name： Test_EmptyAttrs_TextClock_FlexGrow_2800
     * @tc.desic：Empty_TextClock_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_TextClock_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd TextClock")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["TextClock" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["TextClock" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_FlexGrow_2900
     * @tc.name： Test_EmptyAttrs_TextInput_FlexGrow_2900
     * @tc.desic：Empty_TextInput_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_TextInput_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd TextInput")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["TextInput" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["TextInput" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_FlexGrow_3000
     * @tc.name： Test_EmptyAttrs_TextPicker_FlexGrow_3000
     * @tc.desic：Empty_TextPicker_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_TextPicker_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd TextPicker")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["TextPicker" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["TextPicker" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_FlexGrow_3100
     * @tc.name： Test_EmptyAttrs_TextTimer_FlexGrow_3100
     * @tc.desic：Empty_TextTimer_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_TextTimer_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd TextTimer")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["TextTimer" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["TextTimer" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_FlexGrow_3200
     * @tc.name： Test_EmptyAttrs_Toggle_FlexGrow_3200
     * @tc.desic：Empty_Toggle_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Toggle_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Toggle")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Toggle" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Toggle" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_FlexGrow_3300
     * @tc.name： Test_EmptyAttrs_Web_FlexGrow_3300
     * @tc.desic：Empty_Web_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Web_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Web")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Web" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Web" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_FlexGrow_3400
     * @tc.name： Test_EmptyAttrs_Select_FlexGrow_3400
     * @tc.desic：Empty_Select_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Select_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Select")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Select" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Select" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_FlexGrow_3500
     * @tc.name： Test_EmptyAttrs_Badge_FlexGrow_3500
     * @tc.desic：Empty_Badge_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Badge_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Badge")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Badge" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Badge" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_FlexGrow_3600
     * @tc.name： Test_EmptyAttrs_Column_FlexGrow_3600
     * @tc.desic：Empty_Column_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Column_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Column")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Column" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Column" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_FlexGrow_3700
     * @tc.name： Test_EmptyAttrs_Grid_FlexGrow_3700
     * @tc.desic：Empty_Grid_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Grid_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Grid")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Grid" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Grid" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_FlexGrow_3800
     * @tc.name： Test_EmptyAttrs_GridRow_FlexGrow_3800
     * @tc.desic：Empty_GridRow_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_GridRow_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd GridRow")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["GridRow" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["GridRow" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_FlexGrow_3900
     * @tc.name： Test_EmptyAttrs_Flex_FlexGrow_3900
     * @tc.desic：Empty_Flex_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Flex_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Flex")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Flex" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Flex" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_FlexGrow_4000
     * @tc.name： Test_EmptyAttrs_List_FlexGrow_4000
     * @tc.desic：Empty_List_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_List_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd List")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["List" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["List" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_FlexGrow_4200
     * @tc.name： Test_EmptyAttrs_RelativeContainer_FlexGrow_4200
     * @tc.desic：Empty_RelativeContainer_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_RelativeContainer_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["RelativeContainer" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["RelativeContainer" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_FlexGrow_4300
     * @tc.name： Test_EmptyAttrs_Row_FlexGrow_4300
     * @tc.desic：Empty_Row_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Row_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Row")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Row" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Row" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_FlexGrow_4400
     * @tc.name： Test_EmptyAttrs_Scroll_FlexGrow_4400
     * @tc.desic：Empty_Scroll_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Scroll_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Scroll")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Scroll" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Scroll" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_FlexGrow_4500
     * @tc.name： Test_EmptyAttrs_Stack_FlexGrow_4500
     * @tc.desic：Empty_Stack_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Stack_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Stack")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Stack" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Stack" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_FlexGrow_4600
     * @tc.name： Test_EmptyAttrs_Swiper_FlexGrow_4600
     * @tc.desic：Empty_Swiper_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Swiper_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Swiper")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Swiper" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Swiper" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_FlexGrow_4700
     * @tc.name： Test_EmptyAttrs_Tabs_FlexGrow_4700
     * @tc.desic：Empty_Tabs_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Tabs_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Tabs")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Tabs" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Tabs" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_FlexGrow_4800
     * @tc.name： Test_EmptyAttrs_Circle_FlexGrow_4800
     * @tc.desic：Empty_Circle_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Circle_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Circle")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Circle" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Circle" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_FlexGrow_4900
     * @tc.name： Test_EmptyAttrs_Line_FlexGrow_4900
     * @tc.desic：Empty_Line_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Line_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Line")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Line" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Line" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_FlexGrow_5000
     * @tc.name： Test_EmptyAttrs_Rect_FlexGrow_5000
     * @tc.desic：Empty_Rect_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Rect_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Rect")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Rect" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Rect" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_FlexGrow_5100
     * @tc.name： Test_EmptyAttrs_Shape_FlexGrow_5100
     * @tc.desic：Empty_Shape_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Shape_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Shape")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Shape" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Shape" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_FlexGrow_5300
     * @tc.name： Test_EmptyAttrs_Path_FlexGrow_5300
     * @tc.desic：Empty_Path_FlexGrow
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexGrow_Path_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow: FindEnd Path")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Path" + FlexGrowShrink_Prop[0] + "1", "flexGrow"]
            let viewPort2 = getInspector()["Path" + FlexGrowShrink_Prop[0] + "2", "flexGrow"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexGrow:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
