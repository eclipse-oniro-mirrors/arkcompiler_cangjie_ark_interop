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
class Test_EmptyAttrs_Rotate {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Rotate")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Rotate_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Rotate_0100
     * @tc.desic：Empty_AlphabetIndexer_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd AlphabetIndexer")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"AlphabetIndexer" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("AlphabetIndexer" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Rotate_0200
     * @tc.name： Test_EmptyAttrs_Blank_Rotate_0200
     * @tc.desic：Empty_Blank_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Blank")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Blank" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Blank" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Rotate_0300
     * @tc.name： Test_EmptyAttrs_Button_Rotate_0300
     * @tc.desic：Empty_Button_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Button")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Button" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Button" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Rotate_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Rotate_0400
     * @tc.desic：Empty_Checkbox_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Checkbox")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Checkbox" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Checkbox" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Rotate_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Rotate_0500
     * @tc.desic：Empty_CheckboxGroup_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"CheckboxGroup" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("CheckboxGroup" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Rotate_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Rotate_0700
     * @tc.desic：Empty_DataPanel_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd DataPanel")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"DataPanel" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("DataPanel" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Rotate_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Rotate_0800
     * @tc.desic：Empty_DatePicker_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd DatePicker")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"DatePicker" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("DatePicker" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Rotate_0900
     * @tc.name： Test_EmptyAttrs_Divider_Rotate_0900
     * @tc.desic：Empty_Divider_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Divider")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Divider" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Divider" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Rotate_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Rotate_1000
     * @tc.desic：Empty_Gauge_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Gauge")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Gauge" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Gauge" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Rotate_1100
     * @tc.name： Test_EmptyAttrs_Image_Rotate_1100
     * @tc.desic：Empty_Image_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Image")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Image" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Image" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Rotate_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Rotate_1200
     * @tc.desic：Empty_ImageSpan_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd ImageSpan")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"ImageSpan" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("ImageSpan" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Rotate_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Rotate_1300
     * @tc.desic：Empty_LoadingProgress_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"LoadingProgress" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("LoadingProgress" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Rotate_1400
     * @tc.name： Test_EmptyAttrs_Menu_Rotate_1400
     * @tc.desic：Empty_Menu_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Menu")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Menu" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Menu" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Rotate_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Rotate_1500
     * @tc.desic：Empty_MenuItem_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd MenuItem")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"MenuItem" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("MenuItem" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Rotate_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Rotate_1600
     * @tc.desic：Empty_MenuItemGroup_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"MenuItemGroup" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("MenuItemGroup" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Rotate_1700
     * @tc.name： Test_EmptyAttrs_Progress_Rotate_1700
     * @tc.desic：Empty_Progress_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Progress")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Progress" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Progress" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Rotate_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Rotate_1800
     * @tc.desic：Empty_QRCode_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd QRCode")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"QRCode" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("QRCode" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Rotate_1900
     * @tc.name： Test_EmptyAttrs_Radio_Rotate_1900
     * @tc.desic：Empty_Radio_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Radio")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Radio" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Radio" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Rotate_2000
     * @tc.name： Test_EmptyAttrs_Rating_Rotate_2000
     * @tc.desic：Empty_Rating_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Rating")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Rating" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Rating" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Rotate_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Rotate_2100
     * @tc.desic：Empty_Refresh_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Refresh")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Refresh" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Refresh" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Rotate_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Rotate_2200
     * @tc.desic：Empty_RichEditor_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd RichEditor")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"RichEditor" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("RichEditor" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Rotate_2300
     * @tc.name： Test_EmptyAttrs_RichText_Rotate_2300
     * @tc.desic：Empty_RichText_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd RichText")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"RichText" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("RichText" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Rotate_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Rotate_2400
     * @tc.desic：Empty_RowSplit_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd RowSplit")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"RowSplit" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("RowSplit" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Rotate_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Rotate_2500
     * @tc.desic：Empty_ScrollBar_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd ScrollBar")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"ScrollBar" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("ScrollBar" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Rotate_2600
     * @tc.name： Test_EmptyAttrs_Search_Rotate_2600
     * @tc.desic：Empty_Search_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Search")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Search" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Search" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Rotate_2700
     * @tc.name： Test_EmptyAttrs_Slider_Rotate_2700
     * @tc.desic：Empty_Slider_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Slider")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Slider" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Slider" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Rotate_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Rotate_2800
     * @tc.desic：Empty_Stepper_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Stepper")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Stepper" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Stepper" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Rotate_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Rotate_2900
     * @tc.desic：Empty_StepperItem_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd StepperItem")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"StepperItem" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("StepperItem" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Rotate_3000
     * @tc.name： Test_EmptyAttrs_Text_Rotate_3000
     * @tc.desic：Empty_Text_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Text")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Text" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Text" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Rotate_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Rotate_3100
     * @tc.desic：Empty_TextArea_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd TextArea")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"TextArea" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("TextArea" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Rotate_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Rotate_3200
     * @tc.desic：Empty_TextClock_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd TextClock")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"TextClock" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("TextClock" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Rotate_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Rotate_3300
     * @tc.desic：Empty_TextInput_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd TextInput")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"TextInput" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("TextInput" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Rotate_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Rotate_3400
     * @tc.desic：Empty_TextPicker_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd TextPicker")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"TextPicker" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("TextPicker" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Rotate_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Rotate_3500
     * @tc.desic：Empty_TextTimer_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd TextTimer")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"TextTimer" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("TextTimer" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Rotate_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Rotate_3600
     * @tc.desic：Empty_Toggle_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Toggle")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Toggle" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Toggle" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Rotate_3700
     * @tc.name： Test_EmptyAttrs_Web_Rotate_3700
     * @tc.desic：Empty_Web_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Web")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Web" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Web" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Rotate_3800
     * @tc.name： Test_EmptyAttrs_Select_Rotate_3800
     * @tc.desic：Empty_Select_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Select")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Select" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Select" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Rotate_3900
     * @tc.name： Test_EmptyAttrs_Badge_Rotate_3900
     * @tc.desic：Empty_Badge_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Badge")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Badge" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Badge" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Rotate_4000
     * @tc.name： Test_EmptyAttrs_Column_Rotate_4000
     * @tc.desic：Empty_Column_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Column")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Column" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Column" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Rotate_4100
     * @tc.name： Test_EmptyAttrs_Grid_Rotate_4100
     * @tc.desic：Empty_Grid_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Grid")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Grid" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Grid" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Rotate_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Rotate_4200
     * @tc.desic：Empty_GridItem_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd GridItem")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"GridItem" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("GridItem" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Rotate_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Rotate_4300
     * @tc.desic：Empty_GridRow_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd GridRow")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"GridRow" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("GridRow" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Rotate_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Rotate_4400
     * @tc.desic：Empty_GridCol_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd GridCol")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"GridCol" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("GridCol" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Rotate_4500
     * @tc.name： Test_EmptyAttrs_Flex_Rotate_4500
     * @tc.desic：Empty_Flex_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Flex")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Flex" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Flex" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Rotate_4600
     * @tc.name： Test_EmptyAttrs_List_Rotate_4600
     * @tc.desic：Empty_List_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd List")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"List" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("List" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Rotate_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Rotate_4700
     * @tc.desic：Empty_ListItem_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd ListItem")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"ListItem" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("ListItem" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Rotate_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Rotate_4800
     * @tc.desic：Empty_ListItemGroup_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"ListItemGroup" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("ListItemGroup" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Rotate_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Rotate_5000
     * @tc.desic：Empty_RelativeContainer_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"RelativeContainer" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("RelativeContainer" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Rotate_5100
     * @tc.name： Test_EmptyAttrs_Row_Rotate_5100
     * @tc.desic：Empty_Row_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Row")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Row" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Row" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Rotate_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Rotate_5200
     * @tc.desic：Empty_Scroll_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Scroll")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Scroll" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Scroll" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Rotate_5300
     * @tc.name： Test_EmptyAttrs_Stack_Rotate_5300
     * @tc.desic：Empty_Stack_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Stack")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Stack" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Stack" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Rotate_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Rotate_5400
     * @tc.desic：Empty_Swiper_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Swiper")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Swiper" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Swiper" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Rotate_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Rotate_5500
     * @tc.desic：Empty_Tabs_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Tabs")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Tabs" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Tabs" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Rotate_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Rotate_5600
     * @tc.desic：Empty_TabContent_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd TabContent")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"TabContent" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("TabContent" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Rotate_5700
     * @tc.name： Test_EmptyAttrs_Circle_Rotate_5700
     * @tc.desic：Empty_Circle_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Circle")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Circle" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Circle" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Rotate_5800
     * @tc.name： Test_EmptyAttrs_Line_Rotate_5800
     * @tc.desic：Empty_Line_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Line")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Line" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Line" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Rotate_5900
     * @tc.name： Test_EmptyAttrs_Rect_Rotate_5900
     * @tc.desic：Empty_Rect_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Rect")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Rect" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Rect" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Rotate_6000
     * @tc.name： Test_EmptyAttrs_Shape_Rotate_6000
     * @tc.desic：Empty_Shape_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Shape")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Shape" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Shape" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Rotate_6200
     * @tc.name： Test_EmptyAttrs_Path_Rotate_6200
     * @tc.desic：Empty_Path_Rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Rotate_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate: FindEnd Path")
        sleepFor(1.second)
        for (Rotate_Prop in Rotate_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckRotate_Prop: ${"Path" + Rotate_Prop[0]}")
            let Inspector = getInspectorByKey("Path" + Rotate_Prop[0])
            let obj = JsonValue.fromStr(Inspector).asObject()
            let viewPort = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${Rotate_Prop[2]}")
            @Expect(viewPort, Rotate_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckRotate:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
