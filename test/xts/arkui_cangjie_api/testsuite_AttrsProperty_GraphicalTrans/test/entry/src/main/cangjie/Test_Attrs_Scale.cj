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
import ohos.arkui.component.*

@Test
class Test_EmptyAttrs_Scale {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Scale")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Scale_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Scale_0100
     * @tc.desic：Empty_AlphabetIndexer_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "CheckCheckScale_Prop: ${"AlphabetIndexer" + Scale_Prop[0]}", "test")
            let Inspector = getInspectorByKey("AlphabetIndexer" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Scale_0200
     * @tc.name： Test_EmptyAttrs_Blank_Scale_0200
     * @tc.desic：Empty_Blank_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Blank")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Blank" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Blank" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Scale_0300
     * @tc.name： Test_EmptyAttrs_Button_Scale_0300
     * @tc.desic：Empty_Button_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Button")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Button" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Button" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Scale_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Scale_0400
     * @tc.desic：Empty_Checkbox_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Checkbox")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Checkbox" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Checkbox" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Scale_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Scale_0500
     * @tc.desic：Empty_CheckboxGroup_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"CheckboxGroup" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("CheckboxGroup" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Scale_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Scale_0700
     * @tc.desic：Empty_DataPanel_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd DataPanel")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"DataPanel" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("DataPanel" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Scale_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Scale_0800
     * @tc.desic：Empty_DatePicker_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd DatePicker")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"DatePicker" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("DatePicker" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Scale_0900
     * @tc.name： Test_EmptyAttrs_Divider_Scale_0900
     * @tc.desic：Empty_Divider_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Divider")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Divider" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Divider" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Scale_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Scale_1000
     * @tc.desic：Empty_Gauge_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Gauge")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Gauge" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Gauge" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Scale_1100
     * @tc.name： Test_EmptyAttrs_Image_Scale_1100
     * @tc.desic：Empty_Image_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Image")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Image" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Image" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Scale_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Scale_1200
     * @tc.desic：Empty_ImageSpan_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"ImageSpan" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("ImageSpan" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Scale_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Scale_1300
     * @tc.desic：Empty_LoadingProgress_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"LoadingProgress" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("LoadingProgress" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Scale_1400
     * @tc.name： Test_EmptyAttrs_Menu_Scale_1400
     * @tc.desic：Empty_Menu_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Menu")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Menu" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Menu" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Scale_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Scale_1500
     * @tc.desic：Empty_MenuItem_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd MenuItem")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"MenuItem" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("MenuItem" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Scale_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Scale_1600
     * @tc.desic：Empty_MenuItemGroup_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"MenuItemGroup" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("MenuItemGroup" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Scale_1700
     * @tc.name： Test_EmptyAttrs_Progress_Scale_1700
     * @tc.desic：Empty_Progress_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Progress")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Progress" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Progress" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Scale_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Scale_1800
     * @tc.desic：Empty_QRCode_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd QRCode")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"QRCode" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("QRCode" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Scale_1900
     * @tc.name： Test_EmptyAttrs_Radio_Scale_1900
     * @tc.desic：Empty_Radio_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Radio")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Radio" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Radio" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Scale_2000
     * @tc.name： Test_EmptyAttrs_Rating_Scale_2000
     * @tc.desic：Empty_Rating_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Rating")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Rating" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Rating" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Scale_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Scale_2100
     * @tc.desic：Empty_Refresh_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Refresh")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Refresh" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Refresh" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Scale_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Scale_2200
     * @tc.desic：Empty_RichEditor_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd RichEditor")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"RichEditor" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("RichEditor" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Scale_2300
     * @tc.name： Test_EmptyAttrs_RichText_Scale_2300
     * @tc.desic：Empty_RichText_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd RichText")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"RichText" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("RichText" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Scale_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Scale_2400
     * @tc.desic：Empty_RowSplit_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd RowSplit")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"RowSplit" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("RowSplit" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Scale_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Scale_2500
     * @tc.desic：Empty_ScrollBar_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd ScrollBar")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"ScrollBar" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("ScrollBar" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Scale_2600
     * @tc.name： Test_EmptyAttrs_Search_Scale_2600
     * @tc.desic：Empty_Search_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Search")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Search" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Search" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Scale_2700
     * @tc.name： Test_EmptyAttrs_Slider_Scale_2700
     * @tc.desic：Empty_Slider_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Slider")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Slider" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Slider" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Scale_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Scale_2800
     * @tc.desic：Empty_Stepper_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Stepper")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Stepper" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Stepper" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Scale_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Scale_2900
     * @tc.desic：Empty_StepperItem_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd StepperItem")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"StepperItem" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("StepperItem" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Scale_3000
     * @tc.name： Test_EmptyAttrs_Text_Scale_3000
     * @tc.desic：Empty_Text_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Text")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Text" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Text" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Scale_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Scale_3100
     * @tc.desic：Empty_TextArea_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd TextArea")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"TextArea" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("TextArea" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Scale_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Scale_3200
     * @tc.desic：Empty_TextClock_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd TextClock")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"TextClock" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("TextClock" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Scale_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Scale_3300
     * @tc.desic：Empty_TextInput_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd TextInput")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"TextInput" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("TextInput" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Scale_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Scale_3400
     * @tc.desic：Empty_TextPicker_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd TextPicker")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"TextPicker" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("TextPicker" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Scale_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Scale_3500
     * @tc.desic：Empty_TextTimer_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd TextTimer")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"TextTimer" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("TextTimer" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Scale_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Scale_3600
     * @tc.desic：Empty_Toggle_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Toggle")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Toggle" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Toggle" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Scale_3700
     * @tc.name： Test_EmptyAttrs_Web_Scale_3700
     * @tc.desic：Empty_Web_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Web")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Web" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Web" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Scale_3800
     * @tc.name： Test_EmptyAttrs_Select_Scale_3800
     * @tc.desic：Empty_Select_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Select")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Select" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Select" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Scale_3900
     * @tc.name： Test_EmptyAttrs_Badge_Scale_3900
     * @tc.desic：Empty_Badge_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Badge")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Badge" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Badge" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Scale_4000
     * @tc.name： Test_EmptyAttrs_Column_Scale_4000
     * @tc.desic：Empty_Column_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Column")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Column" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Column" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Scale_4100
     * @tc.name： Test_EmptyAttrs_Grid_Scale_4100
     * @tc.desic：Empty_Grid_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Grid")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Grid" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Grid" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Scale_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Scale_4200
     * @tc.desic：Empty_GridItem_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd GridItem")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"GridItem" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("GridItem" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Scale_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Scale_4300
     * @tc.desic：Empty_GridRow_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd GridRow")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"GridRow" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("GridRow" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Scale_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Scale_4400
     * @tc.desic：Empty_GridCol_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd GridCol")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"GridCol" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("GridCol" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Scale_4500
     * @tc.name： Test_EmptyAttrs_Flex_Scale_4500
     * @tc.desic：Empty_Flex_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Flex")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Flex" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Flex" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Scale_4600
     * @tc.name： Test_EmptyAttrs_List_Scale_4600
     * @tc.desic：Empty_List_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd List")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"List" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("List" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Scale_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Scale_4700
     * @tc.desic：Empty_ListItem_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd ListItem")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"ListItem" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("ListItem" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Scale_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Scale_4800
     * @tc.desic：Empty_ListItemGroup_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"ListItemGroup" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("ListItemGroup" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Scale_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Scale_5000
     * @tc.desic：Empty_RelativeContainer_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"RelativeContainer" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("RelativeContainer" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Scale_5100
     * @tc.name： Test_EmptyAttrs_Row_Scale_5100
     * @tc.desic：Empty_Row_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Row")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Row" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Row" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Scale_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Scale_5200
     * @tc.desic：Empty_Scroll_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Scroll")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Scroll" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Scroll" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Scale_5300
     * @tc.name： Test_EmptyAttrs_Stack_Scale_5300
     * @tc.desic：Empty_Stack_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Stack")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Stack" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Stack" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Scale_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Scale_5400
     * @tc.desic：Empty_Swiper_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Swiper")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Swiper" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Swiper" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Scale_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Scale_5500
     * @tc.desic：Empty_Tabs_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Tabs")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Tabs" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Tabs" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Scale_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Scale_5600
     * @tc.desic：Empty_TabContent_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd TabContent")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"TabContent" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("TabContent" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Scale_5700
     * @tc.name： Test_EmptyAttrs_Circle_Scale_5700
     * @tc.desic：Empty_Circle_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Circle")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Circle" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Circle" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Scale_5800
     * @tc.name： Test_EmptyAttrs_Line_Scale_5800
     * @tc.desic：Empty_Line_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Line")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Line" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Line" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Scale_5900
     * @tc.name： Test_EmptyAttrs_Rect_Scale_5900
     * @tc.desic：Empty_Rect_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Rect")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Rect" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Rect" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Scale_6000
     * @tc.name： Test_EmptyAttrs_Shape_Scale_6000
     * @tc.desic：Empty_Shape_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Shape")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Shape" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Shape" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

   

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Scale_6200
     * @tc.name： Test_EmptyAttrs_Path_Scale_6200
     * @tc.desic：Empty_Path_Scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Scale_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale: FindEnd Path")
        sleepFor(1.second)
        for (Scale_Prop in Scale_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckScale_Prop: ${"Path" + Scale_Prop[0]}")
            let Inspector = getInspectorByKey("Path" + Scale_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "CheckCheckViewPort: ${viewPort}", "test")
            Hilog.info(0, "cangjietest", "CheckCheckExpect: ${Scale_Prop[2]}", "test")
            @Expect(viewPort, Scale_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckScale:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
