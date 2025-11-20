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
class Test_EmptyAttrs_AlignSelf {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("AlignSelf")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_AlignSelf_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_AlignSelf_0100
     * @tc.desic：Empty_AlphabetIndexer_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"AlphabetIndexer" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_AlignSelf_0300
     * @tc.name： Test_EmptyAttrs_Button_AlignSelf_0300
     * @tc.desic：Empty_Button_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Button")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Button" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Button" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_AlignSelf_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_AlignSelf_0400
     * @tc.desic：Empty_Checkbox_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Checkbox")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Checkbox" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_AlignSelf_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_AlignSelf_0500
     * @tc.desic：Empty_CheckboxGroup_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"CheckboxGroup" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_AlignSelf_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_AlignSelf_0700
     * @tc.desic：Empty_DataPanel_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd DataPanel")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"DataPanel" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_AlignSelf_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_AlignSelf_0800
     * @tc.desic：Empty_DatePicker_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd DatePicker")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"DatePicker" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_AlignSelf_0900
     * @tc.name： Test_EmptyAttrs_Divider_AlignSelf_0900
     * @tc.desic：Empty_Divider_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Divider")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Divider" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Divider" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_AlignSelf_1000
     * @tc.name： Test_EmptyAttrs_Gauge_AlignSelf_1000
     * @tc.desic：Empty_Gauge_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Gauge")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Gauge" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Gauge" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_AlignSelf_1100
     * @tc.name： Test_EmptyAttrs_Image_AlignSelf_1100
     * @tc.desic：Empty_Image_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Image")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Image" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Image" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_AlignSelf_1200
     * @tc.name： Test_EmptyAttrs_LoadingProgress_AlignSelf_1200
     * @tc.desic：Empty_LoadingProgress_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_LoadingProgress_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"LoadingProgress" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_AlignSelf_1300
     * @tc.name： Test_EmptyAttrs_Menu_AlignSelf_1300
     * @tc.desic：Empty_Menu_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Menu_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Menu")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Menu" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Menu" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_AlignSelf_1400
     * @tc.name： Test_EmptyAttrs_Progress_AlignSelf_1400
     * @tc.desic：Empty_Progress_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Progress_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Progress")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Progress" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Progress" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_AlignSelf_1500
     * @tc.name： Test_EmptyAttrs_QRCode_AlignSelf_1500
     * @tc.desic：Empty_QRCode_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_QRCode_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd QRCode")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"QRCode" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["QRCode" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_AlignSelf_1600
     * @tc.name： Test_EmptyAttrs_Radio_AlignSelf_1600
     * @tc.desic：Empty_Radio_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Radio_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Radio")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Radio" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Radio" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_AlignSelf_1700
     * @tc.name： Test_EmptyAttrs_Rating_AlignSelf_1700
     * @tc.desic：Empty_Rating_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Rating_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Rating")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Rating" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Rating" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_AlignSelf_1800
     * @tc.name： Test_EmptyAttrs_Refresh_AlignSelf_1800
     * @tc.desic：Empty_Refresh_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Refresh_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Refresh")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Refresh" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Refresh" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_AlignSelf_1900
     * @tc.name： Test_EmptyAttrs_RichEditor_AlignSelf_1900
     * @tc.desic：Empty_RichEditor_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_RichEditor_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd RichEditor")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"RichEditor" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_AlignSelf_2000
     * @tc.name： Test_EmptyAttrs_RichText_AlignSelf_2000
     * @tc.desic：Empty_RichText_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_RichText_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd RichText")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"RichText" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["RichText" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_AlignSelf_2100
     * @tc.name： Test_EmptyAttrs_RowSplit_AlignSelf_2100
     * @tc.desic：Empty_RowSplit_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_RowSplit_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd RowSplit")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"RowSplit" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_AlignSelf_2200
     * @tc.name： Test_EmptyAttrs_ScrollBar_AlignSelf_2200
     * @tc.desic：Empty_ScrollBar_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_ScrollBar_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd ScrollBar")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"ScrollBar" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_AlignSelf_2300
     * @tc.name： Test_EmptyAttrs_Search_AlignSelf_2300
     * @tc.desic：Empty_Search_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Search_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Search")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Search" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Search" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_AlignSelf_2400
     * @tc.name： Test_EmptyAttrs_Slider_AlignSelf_2400
     * @tc.desic：Empty_Slider_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Slider_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Slider")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Slider" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Slider" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_AlignSelf_2500
     * @tc.name： Test_EmptyAttrs_Stepper_AlignSelf_2500
     * @tc.desic：Empty_Stepper_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Stepper_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Stepper")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Stepper" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Stepper" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_AlignSelf_2600
     * @tc.name： Test_EmptyAttrs_Text_AlignSelf_2600
     * @tc.desic：Empty_Text_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Text_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Text")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Text" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Text" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_AlignSelf_2700
     * @tc.name： Test_EmptyAttrs_TextArea_AlignSelf_2700
     * @tc.desic：Empty_TextArea_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_TextArea_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd TextArea")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"TextArea" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["TextArea" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_AlignSelf_2800
     * @tc.name： Test_EmptyAttrs_TextClock_AlignSelf_2800
     * @tc.desic：Empty_TextClock_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_TextClock_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd TextClock")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"TextClock" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["TextClock" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_AlignSelf_2900
     * @tc.name： Test_EmptyAttrs_TextInput_AlignSelf_2900
     * @tc.desic：Empty_TextInput_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_TextInput_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd TextInput")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"TextInput" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["TextInput" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_AlignSelf_3000
     * @tc.name： Test_EmptyAttrs_TextPicker_AlignSelf_3000
     * @tc.desic：Empty_TextPicker_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_TextPicker_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd TextPicker")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"TextPicker" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_AlignSelf_3100
     * @tc.name： Test_EmptyAttrs_TextTimer_AlignSelf_3100
     * @tc.desic：Empty_TextTimer_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_TextTimer_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd TextTimer")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"TextTimer" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_AlignSelf_3200
     * @tc.name： Test_EmptyAttrs_Toggle_AlignSelf_3200
     * @tc.desic：Empty_Toggle_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Toggle_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Toggle")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Toggle" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Toggle" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_AlignSelf_3300
     * @tc.name： Test_EmptyAttrs_Web_AlignSelf_3300
     * @tc.desic：Empty_Web_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Web_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Web")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Web" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Web" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_AlignSelf_3400
     * @tc.name： Test_EmptyAttrs_Select_AlignSelf_3400
     * @tc.desic：Empty_Select_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Select_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Select")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Select" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Select" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_AlignSelf_3500
     * @tc.name： Test_EmptyAttrs_Badge_AlignSelf_3500
     * @tc.desic：Empty_Badge_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Badge_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Badge")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Badge" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Badge" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_AlignSelf_3600
     * @tc.name： Test_EmptyAttrs_Column_AlignSelf_3600
     * @tc.desic：Empty_Column_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Column_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Column")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Column" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Column" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_AlignSelf_3700
     * @tc.name： Test_EmptyAttrs_Grid_AlignSelf_3700
     * @tc.desic：Empty_Grid_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Grid_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Grid")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Grid" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Grid" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_AlignSelf_3800
     * @tc.name： Test_EmptyAttrs_GridRow_AlignSelf_3800
     * @tc.desic：Empty_GridRow_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_GridRow_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd GridRow")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"GridRow" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["GridRow" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_AlignSelf_3900
     * @tc.name： Test_EmptyAttrs_Flex_AlignSelf_3900
     * @tc.desic：Empty_Flex_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Flex_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Flex")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Flex" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Flex" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_AlignSelf_4000
     * @tc.name： Test_EmptyAttrs_List_AlignSelf_4000
     * @tc.desic：Empty_List_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_List_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd List")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"List" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["List" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_AlignSelf_4200
     * @tc.name： Test_EmptyAttrs_RelativeContainer_AlignSelf_4200
     * @tc.desic：Empty_RelativeContainer_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_RelativeContainer_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"RelativeContainer" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_AlignSelf_4300
     * @tc.name： Test_EmptyAttrs_Row_AlignSelf_4300
     * @tc.desic：Empty_Row_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Row_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Row")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Row" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Row" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_AlignSelf_4400
     * @tc.name： Test_EmptyAttrs_Scroll_AlignSelf_4400
     * @tc.desic：Empty_Scroll_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Scroll_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Scroll")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Scroll" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Scroll" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_AlignSelf_4500
     * @tc.name： Test_EmptyAttrs_Stack_AlignSelf_4500
     * @tc.desic：Empty_Stack_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Stack_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Stack")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Stack" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Stack" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_AlignSelf_4600
     * @tc.name： Test_EmptyAttrs_Swiper_AlignSelf_4600
     * @tc.desic：Empty_Swiper_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Swiper_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Swiper")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Swiper" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Swiper" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_AlignSelf_4700
     * @tc.name： Test_EmptyAttrs_Tabs_AlignSelf_4700
     * @tc.desic：Empty_Tabs_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Tabs_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Tabs")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Tabs" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Tabs" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_AlignSelf_4800
     * @tc.name： Test_EmptyAttrs_Circle_AlignSelf_4800
     * @tc.desic：Empty_Circle_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Circle_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Circle")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Circle" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Circle" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_AlignSelf_4900
     * @tc.name： Test_EmptyAttrs_Line_AlignSelf_4900
     * @tc.desic：Empty_Line_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Line_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Line")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Line" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Line" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_AlignSelf_5000
     * @tc.name： Test_EmptyAttrs_Rect_AlignSelf_5000
     * @tc.desic：Empty_Rect_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Rect_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Rect")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Rect" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Rect" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_AlignSelf_5100
     * @tc.name： Test_EmptyAttrs_Shape_AlignSelf_5100
     * @tc.desic：Empty_Shape_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Shape_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Shape")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Shape" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Shape" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_AlignSelf_5300
     * @tc.name： Test_EmptyAttrs_Path_AlignSelf_5300
     * @tc.desic：Empty_Path_AlignSelf
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AlignSelf_Path_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf: FindEnd Path")
        sleepFor(1.second)
        for (ItemAlign_Prop in ItemAlign_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckItemAlign_Prop: ${"Path" + ItemAlign_Prop[0]}")
            let viewPort = getInspector()["Path" + ItemAlign_Prop[0], "alignSelf"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${ItemAlign_Prop[2]}")
            @Expect(viewPort, ItemAlign_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAlignSelf:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
