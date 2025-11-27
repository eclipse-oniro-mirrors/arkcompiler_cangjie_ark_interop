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
class Test_EmptyAttrs_FlexShrink {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("FlexShrink")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_FlexShrink_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_FlexShrink_0100
     * @tc.desic：Empty_AlphabetIndexer_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["AlphabetIndexer" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["AlphabetIndexer" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }



    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_FlexShrink_0300
     * @tc.name： Test_EmptyAttrs_Button_FlexShrink_0300
     * @tc.desic：Empty_Button_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Button")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Button" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Button" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_FlexShrink_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_FlexShrink_0400
     * @tc.desic：Empty_Checkbox_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Checkbox")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Checkbox" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Checkbox" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_FlexShrink_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_FlexShrink_0500
     * @tc.desic：Empty_CheckboxGroup_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["CheckboxGroup" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["CheckboxGroup" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_FlexShrink_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_FlexShrink_0700
     * @tc.desic：Empty_DataPanel_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd DataPanel")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["DataPanel" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["DataPanel" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_FlexShrink_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_FlexShrink_0800
     * @tc.desic：Empty_DatePicker_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd DatePicker")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["DatePicker" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["DatePicker" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_FlexShrink_0900
     * @tc.name： Test_EmptyAttrs_Divider_FlexShrink_0900
     * @tc.desic：Empty_Divider_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Divider")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Divider" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Divider" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_FlexShrink_1000
     * @tc.name： Test_EmptyAttrs_Gauge_FlexShrink_1000
     * @tc.desic：Empty_Gauge_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Gauge")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Gauge" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Gauge" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_FlexShrink_1100
     * @tc.name： Test_EmptyAttrs_Image_FlexShrink_1100
     * @tc.desic：Empty_Image_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Image")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Image" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Image" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_FlexShrink_1200
     * @tc.name： Test_EmptyAttrs_LoadingProgress_FlexShrink_1200
     * @tc.desic：Empty_LoadingProgress_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_LoadingProgress_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["LoadingProgress" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["LoadingProgress" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_FlexShrink_1300
     * @tc.name： Test_EmptyAttrs_Menu_FlexShrink_1300
     * @tc.desic：Empty_Menu_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Menu_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Menu")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Menu" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Menu" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_FlexShrink_1400
     * @tc.name： Test_EmptyAttrs_Progress_FlexShrink_1400
     * @tc.desic：Empty_Progress_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Progress_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Progress")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Progress" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Progress" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_FlexShrink_1500
     * @tc.name： Test_EmptyAttrs_QRCode_FlexShrink_1500
     * @tc.desic：Empty_QRCode_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_QRCode_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd QRCode")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["QRCode" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["QRCode" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_FlexShrink_1600
     * @tc.name： Test_EmptyAttrs_Radio_FlexShrink_1600
     * @tc.desic：Empty_Radio_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Radio_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Radio")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Radio" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Radio" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_FlexShrink_1700
     * @tc.name： Test_EmptyAttrs_Rating_FlexShrink_1700
     * @tc.desic：Empty_Rating_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Rating_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Rating")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Rating" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Rating" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_FlexShrink_1800
     * @tc.name： Test_EmptyAttrs_Refresh_FlexShrink_1800
     * @tc.desic：Empty_Refresh_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Refresh_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Refresh")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Refresh" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Refresh" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_FlexShrink_1900
     * @tc.name： Test_EmptyAttrs_RichEditor_FlexShrink_1900
     * @tc.desic：Empty_RichEditor_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_RichEditor_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd RichEditor")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["RichEditor" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["RichEditor" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_FlexShrink_2000
     * @tc.name： Test_EmptyAttrs_RichText_FlexShrink_2000
     * @tc.desic：Empty_RichText_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_RichText_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd RichText")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["RichText" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["RichText" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_FlexShrink_2100
     * @tc.name： Test_EmptyAttrs_RowSplit_FlexShrink_2100
     * @tc.desic：Empty_RowSplit_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_RowSplit_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd RowSplit")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["RowSplit" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["RowSplit" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_FlexShrink_2200
     * @tc.name： Test_EmptyAttrs_ScrollBar_FlexShrink_2200
     * @tc.desic：Empty_ScrollBar_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_ScrollBar_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd ScrollBar")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["ScrollBar" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["ScrollBar" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_FlexShrink_2300
     * @tc.name： Test_EmptyAttrs_Search_FlexShrink_2300
     * @tc.desic：Empty_Search_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Search_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Search")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Search" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Search" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_FlexShrink_2400
     * @tc.name： Test_EmptyAttrs_Slider_FlexShrink_2400
     * @tc.desic：Empty_Slider_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Slider_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Slider")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Slider" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Slider" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_FlexShrink_2500
     * @tc.name： Test_EmptyAttrs_Stepper_FlexShrink_2500
     * @tc.desic：Empty_Stepper_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Stepper_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Stepper")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Stepper" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Stepper" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_FlexShrink_2600
     * @tc.name： Test_EmptyAttrs_Text_FlexShrink_2600
     * @tc.desic：Empty_Text_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Text_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Text")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Text" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Text" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_FlexShrink_2700
     * @tc.name： Test_EmptyAttrs_TextArea_FlexShrink_2700
     * @tc.desic：Empty_TextArea_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_TextArea_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd TextArea")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["TextArea" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["TextArea" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_FlexShrink_2800
     * @tc.name： Test_EmptyAttrs_TextClock_FlexShrink_2800
     * @tc.desic：Empty_TextClock_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_TextClock_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd TextClock")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["TextClock" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["TextClock" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_FlexShrink_2900
     * @tc.name： Test_EmptyAttrs_TextInput_FlexShrink_2900
     * @tc.desic：Empty_TextInput_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_TextInput_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd TextInput")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["TextInput" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["TextInput" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_FlexShrink_3000
     * @tc.name： Test_EmptyAttrs_TextPicker_FlexShrink_3000
     * @tc.desic：Empty_TextPicker_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_TextPicker_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd TextPicker")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["TextPicker" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["TextPicker" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_FlexShrink_3100
     * @tc.name： Test_EmptyAttrs_TextTimer_FlexShrink_3100
     * @tc.desic：Empty_TextTimer_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_TextTimer_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd TextTimer")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["TextTimer" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["TextTimer" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_FlexShrink_3200
     * @tc.name： Test_EmptyAttrs_Toggle_FlexShrink_3200
     * @tc.desic：Empty_Toggle_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Toggle_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Toggle")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Toggle" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Toggle" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_FlexShrink_3300
     * @tc.name： Test_EmptyAttrs_Web_FlexShrink_3300
     * @tc.desic：Empty_Web_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Web_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Web")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Web" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Web" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_FlexShrink_3400
     * @tc.name： Test_EmptyAttrs_Select_FlexShrink_3400
     * @tc.desic：Empty_Select_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Select_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Select")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Select" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Select" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_FlexShrink_3500
     * @tc.name： Test_EmptyAttrs_Badge_FlexShrink_3500
     * @tc.desic：Empty_Badge_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Badge_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Badge")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Badge" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Badge" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_FlexShrink_3600
     * @tc.name： Test_EmptyAttrs_Column_FlexShrink_3600
     * @tc.desic：Empty_Column_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Column_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Column")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Column" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Column" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_FlexShrink_3700
     * @tc.name： Test_EmptyAttrs_Grid_FlexShrink_3700
     * @tc.desic：Empty_Grid_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Grid_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Grid")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Grid" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Grid" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_FlexShrink_3800
     * @tc.name： Test_EmptyAttrs_GridRow_FlexShrink_3800
     * @tc.desic：Empty_GridRow_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_GridRow_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd GridRow")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["GridRow" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["GridRow" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_FlexShrink_3900
     * @tc.name： Test_EmptyAttrs_Flex_FlexShrink_3900
     * @tc.desic：Empty_Flex_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Flex_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Flex")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Flex" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Flex" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_FlexShrink_4000
     * @tc.name： Test_EmptyAttrs_List_FlexShrink_4000
     * @tc.desic：Empty_List_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_List_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd List")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["List" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["List" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_FlexShrink_4200
     * @tc.name： Test_EmptyAttrs_RelativeContainer_FlexShrink_4200
     * @tc.desic：Empty_RelativeContainer_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_RelativeContainer_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["RelativeContainer" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["RelativeContainer" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_FlexShrink_4300
     * @tc.name： Test_EmptyAttrs_Row_FlexShrink_4300
     * @tc.desic：Empty_Row_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Row_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Row")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Row" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Row" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_FlexShrink_4400
     * @tc.name： Test_EmptyAttrs_Scroll_FlexShrink_4400
     * @tc.desic：Empty_Scroll_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Scroll_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Scroll")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Scroll" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Scroll" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_FlexShrink_4500
     * @tc.name： Test_EmptyAttrs_Stack_FlexShrink_4500
     * @tc.desic：Empty_Stack_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Stack_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Stack")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Stack" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Stack" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_FlexShrink_4600
     * @tc.name： Test_EmptyAttrs_Swiper_FlexShrink_4600
     * @tc.desic：Empty_Swiper_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Swiper_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Swiper")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Swiper" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Swiper" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_FlexShrink_4700
     * @tc.name： Test_EmptyAttrs_Tabs_FlexShrink_4700
     * @tc.desic：Empty_Tabs_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Tabs_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Tabs")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Tabs" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Tabs" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_FlexShrink_4800
     * @tc.name： Test_EmptyAttrs_Circle_FlexShrink_4800
     * @tc.desic：Empty_Circle_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Circle_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Circle")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Circle" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Circle" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_FlexShrink_4900
     * @tc.name： Test_EmptyAttrs_Line_FlexShrink_4900
     * @tc.desic：Empty_Line_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Line_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Line")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Line" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Line" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_FlexShrink_5000
     * @tc.name： Test_EmptyAttrs_Rect_FlexShrink_5000
     * @tc.desic：Empty_Rect_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Rect_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Rect")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Rect" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Rect" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_FlexShrink_5100
     * @tc.name： Test_EmptyAttrs_Shape_FlexShrink_5100
     * @tc.desic：Empty_Shape_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Shape_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Shape")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Shape" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Shape" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_FlexShrink_5300
     * @tc.name： Test_EmptyAttrs_Path_FlexShrink_5300
     * @tc.desic：Empty_Path_FlexShrink
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_FlexShrink_Path_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink: FindEnd Path")
        sleepFor(1.second)
        for (FlexGrowShrink_Prop in FlexGrowShrink_Prop_List) {
            let viewPort1 = getInspector()["Path" + FlexGrowShrink_Prop[0] + "1", "flexShrink"]
            let viewPort2 = getInspector()["Path" + FlexGrowShrink_Prop[0] + "2", "flexShrink"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort1: ${viewPort1}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect1: ${FlexGrowShrink_Prop[2]}")
            @Expect(viewPort1, FlexGrowShrink_Prop[2])
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort2: ${viewPort2}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect2: ${FlexGrowShrink_Prop[3]}")
            @Expect(viewPort2, FlexGrowShrink_Prop[3])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckFlexShrink:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
