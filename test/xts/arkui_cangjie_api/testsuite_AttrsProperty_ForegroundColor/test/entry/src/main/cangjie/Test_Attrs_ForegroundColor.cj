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
class Test_EmptyAttrs_ForegroundColor {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("ForegroundColor")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_ForegroundColor_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_ForegroundColor_0100
     * @tc.desic：Empty_AlphabetIndexer_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"AlphabetIndexer" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_ForegroundColor_0200
     * @tc.name： Test_EmptyAttrs_Button_ForegroundColor_0200
     * @tc.desic：Empty_Button_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Button_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Button")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Button" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Button" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_ForegroundColor_0300
     * @tc.name： Test_EmptyAttrs_Checkbox_ForegroundColor_0300
     * @tc.desic：Empty_Checkbox_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Checkbox_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Checkbox")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Checkbox" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_ForegroundColor_0400
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_ForegroundColor_0400
     * @tc.desic：Empty_CheckboxGroup_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_CheckboxGroup_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"CheckboxGroup" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_ForegroundColor_0600
     * @tc.name： Test_EmptyAttrs_DataPanel_ForegroundColor_0600
     * @tc.desic：Empty_DataPanel_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_DataPanel_0600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd DataPanel")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"DataPanel" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_ForegroundColor_0700
     * @tc.name： Test_EmptyAttrs_DatePicker_ForegroundColor_0700
     * @tc.desic：Empty_DatePicker_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_DatePicker_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd DatePicker")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"DatePicker" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_ForegroundColor_0800
     * @tc.name： Test_EmptyAttrs_Divider_ForegroundColor_0800
     * @tc.desic：Empty_Divider_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Divider_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Divider")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Divider" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Divider" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_ForegroundColor_0900
     * @tc.name： Test_EmptyAttrs_Gauge_ForegroundColor_0900
     * @tc.desic：Empty_Gauge_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Gauge_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Gauge")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Gauge" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Gauge" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_ForegroundColor_1100
     * @tc.name： Test_EmptyAttrs_Menu_ForegroundColor_1100
     * @tc.desic：Empty_Menu_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Menu_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Menu")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Menu" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Menu" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_ForegroundColor_1200
     * @tc.name： Test_EmptyAttrs_MenuItem_ForegroundColor_1200
     * @tc.desic：Empty_MenuItem_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_MenuItem_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd MenuItem")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"MenuItem" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_ForegroundColor_1300
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_ForegroundColor_1300
     * @tc.desic：Empty_MenuItemGroup_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_MenuItemGroup_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"MenuItemGroup" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_ForegroundColor_1400
     * @tc.name： Test_EmptyAttrs_Progress_ForegroundColor_1400
     * @tc.desic：Empty_Progress_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Progress_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Progress")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Progress" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Progress" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_ForegroundColor_1500
     * @tc.name： Test_EmptyAttrs_QRCode_ForegroundColor_1500
     * @tc.desic：Empty_QRCode_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_QRCode_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd QRCode")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"QRCode" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["QRCode" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_ForegroundColor_1600
     * @tc.name： Test_EmptyAttrs_Radio_ForegroundColor_1600
     * @tc.desic：Empty_Radio_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Radio_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Radio")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Radio" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Radio" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_ForegroundColor_1700
     * @tc.name： Test_EmptyAttrs_Rating_ForegroundColor_1700
     * @tc.desic：Empty_Rating_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Rating_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Rating")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Rating" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Rating" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_ForegroundColor_1800
     * @tc.name： Test_EmptyAttrs_Refresh_ForegroundColor_1800
     * @tc.desic：Empty_Refresh_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Refresh_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Refresh")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Refresh" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Refresh" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_ForegroundColor_1900
     * @tc.name： Test_EmptyAttrs_RichEditor_ForegroundColor_1900
     * @tc.desic：Empty_RichEditor_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_RichEditor_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd RichEditor")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"RichEditor" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_ForegroundColor_2000
     * @tc.name： Test_EmptyAttrs_RowSplit_ForegroundColor_2000
     * @tc.desic：Empty_RowSplit_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_RowSplit_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd RowSplit")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"RowSplit" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_ForegroundColor_2100
     * @tc.name： Test_EmptyAttrs_ScrollBar_ForegroundColor_2100
     * @tc.desic：Empty_ScrollBar_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_ScrollBar_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd ScrollBar")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"ScrollBar" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_ForegroundColor_2200
     * @tc.name： Test_EmptyAttrs_Search_ForegroundColor_2200
     * @tc.desic：Empty_Search_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Search_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Search")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Search" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Search" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_ForegroundColor_2300
     * @tc.name： Test_EmptyAttrs_Slider_ForegroundColor_2300
     * @tc.desic：Empty_Slider_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Slider_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Slider")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Slider" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Slider" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_ForegroundColor_2400
     * @tc.name： Test_EmptyAttrs_Stepper_ForegroundColor_2400
     * @tc.desic：Empty_Stepper_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Stepper_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Stepper")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Stepper" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Stepper" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_ForegroundColor_2500
     * @tc.name： Test_EmptyAttrs_StepperItem_ForegroundColor_2500
     * @tc.desic：Empty_StepperItem_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_StepperItem_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd StepperItem")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"StepperItem" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_ForegroundColor_2600
     * @tc.name： Test_EmptyAttrs_Text_ForegroundColor_2600
     * @tc.desic：Empty_Text_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Text_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Text")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Text" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Text" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_ForegroundColor_2700
     * @tc.name： Test_EmptyAttrs_TextArea_ForegroundColor_2700
     * @tc.desic：Empty_TextArea_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_TextArea_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd TextArea")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"TextArea" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["TextArea" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_ForegroundColor_2800
     * @tc.name： Test_EmptyAttrs_TextClock_ForegroundColor_2800
     * @tc.desic：Empty_TextClock_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_TextClock_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd TextClock")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"TextClock" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["TextClock" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_ForegroundColor_2900
     * @tc.name： Test_EmptyAttrs_TextInput_ForegroundColor_2900
     * @tc.desic：Empty_TextInput_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_TextInput_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd TextInput")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"TextInput" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["TextInput" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_ForegroundColor_3000
     * @tc.name： Test_EmptyAttrs_TextPicker_ForegroundColor_3000
     * @tc.desic：Empty_TextPicker_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_TextPicker_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd TextPicker")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"TextPicker" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_ForegroundColor_3100
     * @tc.name： Test_EmptyAttrs_TextTimer_ForegroundColor_3100
     * @tc.desic：Empty_TextTimer_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_TextTimer_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd TextTimer")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"TextTimer" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_ForegroundColor_3200
     * @tc.name： Test_EmptyAttrs_Toggle_ForegroundColor_3200
     * @tc.desic：Empty_Toggle_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Toggle_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Toggle")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Toggle" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Toggle" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_ForegroundColor_3300
     * @tc.name： Test_EmptyAttrs_Select_ForegroundColor_3300
     * @tc.desic：Empty_Select_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Select_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Select")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Select" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Select" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_ForegroundColor_3400
     * @tc.name： Test_EmptyAttrs_Badge_ForegroundColor_3400
     * @tc.desic：Empty_Badge_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Badge_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Badge")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Badge" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Badge" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_ForegroundColor_3500
     * @tc.name： Test_EmptyAttrs_Column_ForegroundColor_3500
     * @tc.desic：Empty_Column_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Column_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Column")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Column" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Column" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_ForegroundColor_3600
     * @tc.name： Test_EmptyAttrs_Grid_ForegroundColor_3600
     * @tc.desic：Empty_Grid_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Grid_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Grid")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Grid" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Grid" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_ForegroundColor_3700
     * @tc.name： Test_EmptyAttrs_GridItem_ForegroundColor_3700
     * @tc.desic：Empty_GridItem_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_GridItem_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd GridItem")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"GridItem" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["GridItem" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_ForegroundColor_3800
     * @tc.name： Test_EmptyAttrs_GridRow_ForegroundColor_3800
     * @tc.desic：Empty_GridRow_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_GridRow_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd GridRow")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"GridRow" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["GridRow" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_ForegroundColor_3900
     * @tc.name： Test_EmptyAttrs_GridCol_ForegroundColor_3900
     * @tc.desic：Empty_GridCol_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_GridCol_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd GridCol")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"GridCol" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["GridCol" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_ForegroundColor_4000
     * @tc.name： Test_EmptyAttrs_Flex_ForegroundColor_4000
     * @tc.desic：Empty_Flex_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Flex_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Flex")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Flex" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Flex" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_ForegroundColor_4100
     * @tc.name： Test_EmptyAttrs_List_ForegroundColor_4100
     * @tc.desic：Empty_List_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_List_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd List")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"List" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["List" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_ForegroundColor_4200
     * @tc.name： Test_EmptyAttrs_ListItem_ForegroundColor_4200
     * @tc.desic：Empty_ListItem_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_ListItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd ListItem")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"ListItem" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["ListItem" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_ForegroundColor_4300
     * @tc.name： Test_EmptyAttrs_ListItemGroup_ForegroundColor_4300
     * @tc.desic：Empty_ListItemGroup_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_ListItemGroup_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"ListItemGroup" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_ForegroundColor_4500
     * @tc.name： Test_EmptyAttrs_RelativeContainer_ForegroundColor_4500
     * @tc.desic：Empty_RelativeContainer_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_RelativeContainer_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"RelativeContainer" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_ForegroundColor_4600
     * @tc.name： Test_EmptyAttrs_Row_ForegroundColor_4600
     * @tc.desic：Empty_Row_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Row_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Row")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Row" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Row" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_ForegroundColor_4700
     * @tc.name： Test_EmptyAttrs_Scroll_ForegroundColor_4700
     * @tc.desic：Empty_Scroll_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Scroll_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Scroll")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Scroll" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Scroll" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_ForegroundColor_4800
     * @tc.name： Test_EmptyAttrs_Stack_ForegroundColor_4800
     * @tc.desic：Empty_Stack_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Stack_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Stack")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Stack" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Stack" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_ForegroundColor_4900
     * @tc.name： Test_EmptyAttrs_Swiper_ForegroundColor_4900
     * @tc.desic：Empty_Swiper_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Swiper_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Swiper")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Swiper" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Swiper" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_ForegroundColor_5000
     * @tc.name： Test_EmptyAttrs_Tabs_ForegroundColor_5000
     * @tc.desic：Empty_Tabs_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Tabs_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Tabs")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Tabs" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Tabs" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_ForegroundColor_5100
     * @tc.name： Test_EmptyAttrs_TabContent_ForegroundColor_5100
     * @tc.desic：Empty_TabContent_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_TabContent_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd TabContent")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"TabContent" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["TabContent" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_ForegroundColor_5200
     * @tc.name： Test_EmptyAttrs_Circle_ForegroundColor_5200
     * @tc.desic：Empty_Circle_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Circle_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Circle")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Circle" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Circle" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_ForegroundColor_5300
     * @tc.name： Test_EmptyAttrs_Line_ForegroundColor_5300
     * @tc.desic：Empty_Line_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Line_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Line")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Line" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Line" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_ForegroundColor_5400
     * @tc.name： Test_EmptyAttrs_Rect_ForegroundColor_5400
     * @tc.desic：Empty_Rect_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Rect_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Rect")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Rect" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Rect" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_ForegroundColor_5500
     * @tc.name： Test_EmptyAttrs_Shape_ForegroundColor_5500
     * @tc.desic：Empty_Shape_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Shape_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Shape")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Shape" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Shape" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_ForegroundColor_5700
     * @tc.name： Test_EmptyAttrs_Path_ForegroundColor_5700
     * @tc.desic：Empty_Path_ForegroundColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_ForegroundColor_Path_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor: FindEnd Path")
        sleepFor(1.second)
        for (ForegroundColor_Prop in ForegroundColor_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor_Prop: ${"Path" + ForegroundColor_Prop[0]}")
            let viewPort = getInspector()["Path" + ForegroundColor_Prop[0], "foregroundColor"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ForegroundColor_Prop[2]}")
            @Expect(viewPort, ForegroundColor_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckForegroundColor:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
