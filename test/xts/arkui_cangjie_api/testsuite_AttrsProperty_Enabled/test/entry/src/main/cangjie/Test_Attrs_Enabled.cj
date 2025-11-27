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
class Test_EmptyAttrs_Enabled {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Enabled")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Enabled_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Enabled_0100
     * @tc.desic：Empty_AlphabetIndexer_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"AlphabetIndexer" + Enabled_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Enabled_0200
     * @tc.name： Test_EmptyAttrs_Blank_Enabled_0200
     * @tc.desic：Empty_Blank_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Blank")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Blank" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Blank" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Enabled_0300
     * @tc.name： Test_EmptyAttrs_Button_Enabled_0300
     * @tc.desic：Empty_Button_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Button")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Button" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Button" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Enabled_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Enabled_0400
     * @tc.desic：Empty_Checkbox_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Checkbox")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Checkbox" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Enabled_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Enabled_0500
     * @tc.desic：Empty_CheckboxGroup_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"CheckboxGroup" + Enabled_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Enabled_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Enabled_0700
     * @tc.desic：Empty_DataPanel_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd DataPanel")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"DataPanel" + Enabled_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Enabled_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Enabled_0800
     * @tc.desic：Empty_DatePicker_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd DatePicker")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"DatePicker" + Enabled_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Enabled_0900
     * @tc.name： Test_EmptyAttrs_Divider_Enabled_0900
     * @tc.desic：Empty_Divider_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Divider")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Divider" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Divider" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Enabled_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Enabled_1000
     * @tc.desic：Empty_Gauge_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Gauge")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Gauge" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Gauge" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Enabled_1100
     * @tc.name： Test_EmptyAttrs_Image_Enabled_1100
     * @tc.desic：Empty_Image_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Image")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Image" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Image" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Enabled_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Enabled_1200
     * @tc.desic：Empty_ImageSpan_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"ImageSpan" + Enabled_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Enabled_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Enabled_1300
     * @tc.desic：Empty_LoadingProgress_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"LoadingProgress" + Enabled_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Enabled_1400
     * @tc.name： Test_EmptyAttrs_Menu_Enabled_1400
     * @tc.desic：Empty_Menu_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Menu")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Menu" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Menu" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Enabled_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Enabled_1500
     * @tc.desic：Empty_MenuItem_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd MenuItem")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"MenuItem" + Enabled_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Enabled_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Enabled_1600
     * @tc.desic：Empty_MenuItemGroup_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"MenuItemGroup" + Enabled_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Enabled_1700
     * @tc.name： Test_EmptyAttrs_Progress_Enabled_1700
     * @tc.desic：Empty_Progress_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Progress")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Progress" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Progress" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Enabled_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Enabled_1800
     * @tc.desic：Empty_QRCode_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd QRCode")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"QRCode" + Enabled_Prop[0]}")
            let viewPort = getInspector()["QRCode" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Enabled_1900
     * @tc.name： Test_EmptyAttrs_Radio_Enabled_1900
     * @tc.desic：Empty_Radio_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Radio")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Radio" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Radio" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Enabled_2000
     * @tc.name： Test_EmptyAttrs_Rating_Enabled_2000
     * @tc.desic：Empty_Rating_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Rating")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Rating" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Rating" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Enabled_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Enabled_2100
     * @tc.desic：Empty_Refresh_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Refresh")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Refresh" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Refresh" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Enabled_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Enabled_2200
     * @tc.desic：Empty_RichEditor_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd RichEditor")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"RichEditor" + Enabled_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Enabled_2300
     * @tc.name： Test_EmptyAttrs_RowSplit_Enabled_2300
     * @tc.desic：Empty_RowSplit_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_RowSplit_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd RowSplit")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"RowSplit" + Enabled_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Enabled_2400
     * @tc.name： Test_EmptyAttrs_ScrollBar_Enabled_2400
     * @tc.desic：Empty_ScrollBar_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_ScrollBar_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd ScrollBar")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"ScrollBar" + Enabled_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Enabled_2500
     * @tc.name： Test_EmptyAttrs_Search_Enabled_2500
     * @tc.desic：Empty_Search_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Search_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Search")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Search" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Search" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Enabled_2600
     * @tc.name： Test_EmptyAttrs_Slider_Enabled_2600
     * @tc.desic：Empty_Slider_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Slider_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Slider")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Slider" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Slider" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Enabled_2700
     * @tc.name： Test_EmptyAttrs_Stepper_Enabled_2700
     * @tc.desic：Empty_Stepper_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Stepper_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Stepper")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Stepper" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Stepper" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Enabled_2800
     * @tc.name： Test_EmptyAttrs_StepperItem_Enabled_2800
     * @tc.desic：Empty_StepperItem_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_StepperItem_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd StepperItem")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"StepperItem" + Enabled_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Enabled_2900
     * @tc.name： Test_EmptyAttrs_Text_Enabled_2900
     * @tc.desic：Empty_Text_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Text_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Text")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Text" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Text" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Enabled_3000
     * @tc.name： Test_EmptyAttrs_TextArea_Enabled_3000
     * @tc.desic：Empty_TextArea_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_TextArea_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd TextArea")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"TextArea" + Enabled_Prop[0]}")
            let viewPort = getInspector()["TextArea" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Enabled_3100
     * @tc.name： Test_EmptyAttrs_TextClock_Enabled_3100
     * @tc.desic：Empty_TextClock_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_TextClock_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd TextClock")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"TextClock" + Enabled_Prop[0]}")
            let viewPort = getInspector()["TextClock" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Enabled_3200
     * @tc.name： Test_EmptyAttrs_TextInput_Enabled_3200
     * @tc.desic：Empty_TextInput_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_TextInput_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd TextInput")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"TextInput" + Enabled_Prop[0]}")
            let viewPort = getInspector()["TextInput" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Enabled_3300
     * @tc.name： Test_EmptyAttrs_TextPicker_Enabled_3300
     * @tc.desic：Empty_TextPicker_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_TextPicker_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd TextPicker")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"TextPicker" + Enabled_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Enabled_3400
     * @tc.name： Test_EmptyAttrs_TextTimer_Enabled_3400
     * @tc.desic：Empty_TextTimer_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_TextTimer_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd TextTimer")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"TextTimer" + Enabled_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Enabled_3500
     * @tc.name： Test_EmptyAttrs_Toggle_Enabled_3500
     * @tc.desic：Empty_Toggle_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Toggle_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Toggle")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Toggle" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Toggle" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Enabled_3600
     * @tc.name： Test_EmptyAttrs_Web_Enabled_3600
     * @tc.desic：Empty_Web_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Web_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Web")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Web" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Web" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Enabled_3700
     * @tc.name： Test_EmptyAttrs_Select_Enabled_3700
     * @tc.desic：Empty_Select_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Select_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Select")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Select" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Select" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Enabled_3800
     * @tc.name： Test_EmptyAttrs_Badge_Enabled_3800
     * @tc.desic：Empty_Badge_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Badge_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Badge")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Badge" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Badge" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Enabled_3900
     * @tc.name： Test_EmptyAttrs_Column_Enabled_3900
     * @tc.desic：Empty_Column_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Column_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Column")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Column" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Column" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Enabled_4000
     * @tc.name： Test_EmptyAttrs_Grid_Enabled_4000
     * @tc.desic：Empty_Grid_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Grid_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Grid")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Grid" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Grid" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Enabled_4100
     * @tc.name： Test_EmptyAttrs_GridItem_Enabled_4100
     * @tc.desic：Empty_GridItem_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_GridItem_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd GridItem")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"GridItem" + Enabled_Prop[0]}")
            let viewPort = getInspector()["GridItem" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Enabled_4200
     * @tc.name： Test_EmptyAttrs_GridRow_Enabled_4200
     * @tc.desic：Empty_GridRow_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_GridRow_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd GridRow")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"GridRow" + Enabled_Prop[0]}")
            let viewPort = getInspector()["GridRow" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Enabled_4300
     * @tc.name： Test_EmptyAttrs_GridCol_Enabled_4300
     * @tc.desic：Empty_GridCol_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_GridCol_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd GridCol")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"GridCol" + Enabled_Prop[0]}")
            let viewPort = getInspector()["GridCol" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Enabled_4400
     * @tc.name： Test_EmptyAttrs_Flex_Enabled_4400
     * @tc.desic：Empty_Flex_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Flex_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Flex")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Flex" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Flex" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Enabled_4500
     * @tc.name： Test_EmptyAttrs_List_Enabled_4500
     * @tc.desic：Empty_List_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_List_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd List")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"List" + Enabled_Prop[0]}")
            let viewPort = getInspector()["List" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Enabled_4600
     * @tc.name： Test_EmptyAttrs_ListItem_Enabled_4600
     * @tc.desic：Empty_ListItem_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_ListItem_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd ListItem")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"ListItem" + Enabled_Prop[0]}")
            let viewPort = getInspector()["ListItem" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Enabled_4700
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Enabled_4700
     * @tc.desic：Empty_ListItemGroup_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_ListItemGroup_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"ListItemGroup" + Enabled_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Enabled_4900
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Enabled_4900
     * @tc.desic：Empty_RelativeContainer_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_RelativeContainer_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"RelativeContainer" + Enabled_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Enabled_5000
     * @tc.name： Test_EmptyAttrs_Row_Enabled_5000
     * @tc.desic：Empty_Row_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Row_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Row")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Row" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Row" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Enabled_5100
     * @tc.name： Test_EmptyAttrs_Scroll_Enabled_5100
     * @tc.desic：Empty_Scroll_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Scroll_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Scroll")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Scroll" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Scroll" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Enabled_5200
     * @tc.name： Test_EmptyAttrs_Stack_Enabled_5200
     * @tc.desic：Empty_Stack_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Stack_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Stack")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Stack" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Stack" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Enabled_5300
     * @tc.name： Test_EmptyAttrs_Swiper_Enabled_5300
     * @tc.desic：Empty_Swiper_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Swiper_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Swiper")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Swiper" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Swiper" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Enabled_5400
     * @tc.name： Test_EmptyAttrs_Tabs_Enabled_5400
     * @tc.desic：Empty_Tabs_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Tabs_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Tabs")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Tabs" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Tabs" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Enabled_5500
     * @tc.name： Test_EmptyAttrs_TabContent_Enabled_5500
     * @tc.desic：Empty_TabContent_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_TabContent_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd TabContent")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"TabContent" + Enabled_Prop[0]}")
            let viewPort = getInspector()["TabContent" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Enabled_5600
     * @tc.name： Test_EmptyAttrs_Circle_Enabled_5600
     * @tc.desic：Empty_Circle_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Circle_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Circle")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Circle" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Circle" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Enabled_5700
     * @tc.name： Test_EmptyAttrs_Line_Enabled_5700
     * @tc.desic：Empty_Line_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Line_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Line")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Line" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Line" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Enabled_5800
     * @tc.name： Test_EmptyAttrs_Rect_Enabled_5800
     * @tc.desic：Empty_Rect_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Rect_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Rect")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Rect" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Rect" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Enabled_5900
     * @tc.name： Test_EmptyAttrs_Shape_Enabled_5900
     * @tc.desic：Empty_Shape_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Shape_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Shape")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Shape" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Shape" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Enabled_6100
     * @tc.name： Test_EmptyAttrs_Path_Enabled_6100
     * @tc.desic：Empty_Path_Enabled
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Enabled_Path_6100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled: FindEnd Path")
        sleepFor(1.second)
        for (Enabled_Prop in Enabled_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled_Prop: ${"Path" + Enabled_Prop[0]}")
            let viewPort = getInspector()["Path" + Enabled_Prop[0], "enabled"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Enabled_Prop[2]}")
            @Expect(viewPort, Enabled_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckEnabled:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
