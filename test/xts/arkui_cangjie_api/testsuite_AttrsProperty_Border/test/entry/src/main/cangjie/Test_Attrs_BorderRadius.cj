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
import kit.LocalizationKit.{AppResource}

@Test
class Test_EmptyAttrs_BorderRadius {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("BorderRadius")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_BorderRadius_0100
     * @tc.name： Test_EmptyAttrs_Blank_BorderRadius_0100
     * @tc.desic：Empty_Blank_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Blank_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Blank")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Blank" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Blank" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_BorderRadius_0200
     * @tc.name： Test_EmptyAttrs_Button_BorderRadius_0200
     * @tc.desic：Empty_Button_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Button_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Button")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Button" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Button" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            if ((BorderRadius_Prop[1] is Length) || (BorderRadius_Prop[1] is AppResource)) {
                Hilog.info(0, "cangjietest",
                    "CheckCheckExpect: {\"topLeft\":\"${BorderRadius_Prop[2]}\",\"topRight\":\"${BorderRadius_Prop[2]}\",\"bottomLeft\":\"${BorderRadius_Prop[2]}\",\"bottomRight\":\"${BorderRadius_Prop[2]}\"}"
                )
                @Expect(viewPort, "{\"topLeft\":${ BorderRadius_Prop[2] },\"topRight\":${ BorderRadius_Prop[2] },\"bottomLeft\":${ BorderRadius_Prop[2] },\"bottomRight\":${ BorderRadius_Prop[2] }}")
            } else {
                Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
                @Expect(viewPort, BorderRadius_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_BorderRadius_0300
     * @tc.name： Test_EmptyAttrs_Checkbox_BorderRadius_0300
     * @tc.desic：Empty_Checkbox_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Checkbox_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Checkbox")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Checkbox" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_BorderRadius_0400
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_BorderRadius_0400
     * @tc.desic：Empty_CheckboxGroup_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_CheckboxGroup_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd CheckboxGroup")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"CheckboxGroup" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_BorderRadius_0600
     * @tc.name： Test_EmptyAttrs_DataPanel_BorderRadius_0600
     * @tc.desic：Empty_DataPanel_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_DataPanel_0600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd DataPanel")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"DataPanel" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_BorderRadius_0700
     * @tc.name： Test_EmptyAttrs_DatePicker_BorderRadius_0700
     * @tc.desic：Empty_DatePicker_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_DatePicker_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd DatePicker")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"DatePicker" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_BorderRadius_0800
     * @tc.name： Test_EmptyAttrs_Divider_BorderRadius_0800
     * @tc.desic：Empty_Divider_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Divider_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Divider")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Divider" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Divider" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_BorderRadius_0900
     * @tc.name： Test_EmptyAttrs_Gauge_BorderRadius_0900
     * @tc.desic：Empty_Gauge_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Gauge_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Gauge")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Gauge" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Gauge" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_BorderRadius_1000
     * @tc.name： Test_EmptyAttrs_Image_BorderRadius_1000
     * @tc.desic：Empty_Image_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Image_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Image")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Image" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Image" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_BorderRadius_1100
     * @tc.name： Test_EmptyAttrs_ImageSpan_BorderRadius_1100
     * @tc.desic：Empty_ImageSpan_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_ImageSpan_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd ImageSpan")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"ImageSpan" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_BorderRadius_1200
     * @tc.name： Test_EmptyAttrs_LoadingProgress_BorderRadius_1200
     * @tc.desic：Empty_LoadingProgress_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_LoadingProgress_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd LoadingProgress")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"LoadingProgress" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_BorderRadius_1300
     * @tc.name： Test_EmptyAttrs_Menu_BorderRadius_1300
     * @tc.desic：Empty_Menu_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Menu_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Menu")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Menu" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Menu" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_BorderRadius_1400
     * @tc.name： Test_EmptyAttrs_MenuItem_BorderRadius_1400
     * @tc.desic：Empty_MenuItem_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_MenuItem_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd MenuItem")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"MenuItem" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_BorderRadius_1500
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_BorderRadius_1500
     * @tc.desic：Empty_MenuItemGroup_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_MenuItemGroup_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd MenuItemGroup")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"MenuItemGroup" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_BorderRadius_1600
     * @tc.name： Test_EmptyAttrs_Progress_BorderRadius_1600
     * @tc.desic：Empty_Progress_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Progress_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Progress")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Progress" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Progress" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_BorderRadius_1700
     * @tc.name： Test_EmptyAttrs_QRCode_BorderRadius_1700
     * @tc.desic：Empty_QRCode_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_QRCode_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd QRCode")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"QRCode" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["QRCode" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_BorderRadius_1800
     * @tc.name： Test_EmptyAttrs_Radio_BorderRadius_1800
     * @tc.desic：Empty_Radio_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Radio_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Radio")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Radio" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Radio" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_BorderRadius_1900
     * @tc.name： Test_EmptyAttrs_Rating_BorderRadius_1900
     * @tc.desic：Empty_Rating_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Rating_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Rating")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Rating" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Rating" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_BorderRadius_2000
     * @tc.name： Test_EmptyAttrs_Refresh_BorderRadius_2000
     * @tc.desic：Empty_Refresh_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Refresh_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Refresh")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Refresh" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Refresh" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_BorderRadius_2100
     * @tc.name： Test_EmptyAttrs_RichEditor_BorderRadius_2100
     * @tc.desic：Empty_RichEditor_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_RichEditor_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd RichEditor")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"RichEditor" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_BorderRadius_2200
     * @tc.name： Test_EmptyAttrs_RichText_BorderRadius_2200
     * @tc.desic：Empty_RichText_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_RichText_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd RichText")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"RichText" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["RichText" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_BorderRadius_2300
     * @tc.name： Test_EmptyAttrs_RowSplit_BorderRadius_2300
     * @tc.desic：Empty_RowSplit_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_RowSplit_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd RowSplit")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"RowSplit" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_BorderRadius_2400
     * @tc.name： Test_EmptyAttrs_ScrollBar_BorderRadius_2400
     * @tc.desic：Empty_ScrollBar_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_ScrollBar_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd ScrollBar")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"ScrollBar" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_BorderRadius_2500
     * @tc.name： Test_EmptyAttrs_Search_BorderRadius_2500
     * @tc.desic：Empty_Search_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Search_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Search")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Search" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Search" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_BorderRadius_2600
     * @tc.name： Test_EmptyAttrs_Slider_BorderRadius_2600
     * @tc.desic：Empty_Slider_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Slider_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Slider")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Slider" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Slider" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_BorderRadius_2700
     * @tc.name： Test_EmptyAttrs_Stepper_BorderRadius_2700
     * @tc.desic：Empty_Stepper_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Stepper_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Stepper")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Stepper" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Stepper" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_BorderRadius_2800
     * @tc.name： Test_EmptyAttrs_StepperItem_BorderRadius_2800
     * @tc.desic：Empty_StepperItem_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_StepperItem_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd StepperItem")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"StepperItem" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["StepperItem" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_BorderRadius_2900
     * @tc.name： Test_EmptyAttrs_Text_BorderRadius_2900
     * @tc.desic：Empty_Text_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Text_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Text")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Text" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Text" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_BorderRadius_3000
     * @tc.name： Test_EmptyAttrs_TextArea_BorderRadius_3000
     * @tc.desic：Empty_TextArea_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_TextArea_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd TextArea")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"TextArea" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["TextArea" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_BorderRadius_3100
     * @tc.name： Test_EmptyAttrs_TextClock_BorderRadius_3100
     * @tc.desic：Empty_TextClock_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_TextClock_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd TextClock")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"TextClock" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["TextClock" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_BorderRadius_3200
     * @tc.name： Test_EmptyAttrs_TextInput_BorderRadius_3200
     * @tc.desic：Empty_TextInput_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_TextInput_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd TextInput")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"TextInput" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["TextInput" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_BorderRadius_3300
     * @tc.name： Test_EmptyAttrs_TextPicker_BorderRadius_3300
     * @tc.desic：Empty_TextPicker_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_TextPicker_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd TextPicker")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"TextPicker" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_BorderRadius_3400
     * @tc.name： Test_EmptyAttrs_TextTimer_BorderRadius_3400
     * @tc.desic：Empty_TextTimer_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_TextTimer_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd TextTimer")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"TextTimer" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_BorderRadius_3500
     * @tc.name： Test_EmptyAttrs_Toggle_BorderRadius_3500
     * @tc.desic：Empty_Toggle_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Toggle_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Toggle")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Toggle" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Toggle" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_BorderRadius_3600
     * @tc.name： Test_EmptyAttrs_Web_BorderRadius_3600
     * @tc.desic：Empty_Web_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Web_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Web")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Web" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Web" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_BorderRadius_3700
     * @tc.name： Test_EmptyAttrs_Select_BorderRadius_3700
     * @tc.desic：Empty_Select_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Select_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Select")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Select" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Select" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_BorderRadius_3800
     * @tc.name： Test_EmptyAttrs_Badge_BorderRadius_3800
     * @tc.desic：Empty_Badge_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Badge_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Badge")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Badge" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Badge" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_BorderRadius_3900
     * @tc.name： Test_EmptyAttrs_Column_BorderRadius_3900
     * @tc.desic：Empty_Column_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Column_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Column")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Column" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Column" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_BorderRadius_4000
     * @tc.name： Test_EmptyAttrs_Grid_BorderRadius_4000
     * @tc.desic：Empty_Grid_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Grid_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Grid")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Grid" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Grid" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_BorderRadius_4100
     * @tc.name： Test_EmptyAttrs_GridItem_BorderRadius_4100
     * @tc.desic：Empty_GridItem_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_GridItem_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd GridItem")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"GridItem" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["GridItem" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_BorderRadius_4200
     * @tc.name： Test_EmptyAttrs_GridRow_BorderRadius_4200
     * @tc.desic：Empty_GridRow_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_GridRow_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd GridRow")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"GridRow" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["GridRow" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_BorderRadius_4300
     * @tc.name： Test_EmptyAttrs_GridCol_BorderRadius_4300
     * @tc.desic：Empty_GridCol_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_GridCol_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd GridCol")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"GridCol" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["GridCol" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_BorderRadius_4400
     * @tc.name： Test_EmptyAttrs_Flex_BorderRadius_4400
     * @tc.desic：Empty_Flex_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Flex_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Flex")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Flex" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Flex" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_BorderRadius_4500
     * @tc.name： Test_EmptyAttrs_List_BorderRadius_4500
     * @tc.desic：Empty_List_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_List_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd List")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"List" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["List" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_BorderRadius_4600
     * @tc.name： Test_EmptyAttrs_ListItem_BorderRadius_4600
     * @tc.desic：Empty_ListItem_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_ListItem_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd ListItem")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"ListItem" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["ListItem" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_BorderRadius_4700
     * @tc.name： Test_EmptyAttrs_ListItemGroup_BorderRadius_4700
     * @tc.desic：Empty_ListItemGroup_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_ListItemGroup_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd ListItemGroup")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"ListItemGroup" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }


    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_BorderRadius_4900
     * @tc.name： Test_EmptyAttrs_RelativeContainer_BorderRadius_4900
     * @tc.desic：Empty_RelativeContainer_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_RelativeContainer_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd RelativeContainer")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"RelativeContainer" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_BorderRadius_5000
     * @tc.name： Test_EmptyAttrs_Row_BorderRadius_5000
     * @tc.desic：Empty_Row_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Row_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Row")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Row" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Row" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_BorderRadius_5100
     * @tc.name： Test_EmptyAttrs_Scroll_BorderRadius_5100
     * @tc.desic：Empty_Scroll_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Scroll_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Scroll")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Scroll" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Scroll" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_BorderRadius_5200
     * @tc.name： Test_EmptyAttrs_Stack_BorderRadius_5200
     * @tc.desic：Empty_Stack_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Stack_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Stack")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Stack" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Stack" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_BorderRadius_5300
     * @tc.name： Test_EmptyAttrs_Swiper_BorderRadius_5300
     * @tc.desic：Empty_Swiper_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Swiper_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Swiper")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Swiper" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Swiper" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_BorderRadius_5400
     * @tc.name： Test_EmptyAttrs_Tabs_BorderRadius_5400
     * @tc.desic：Empty_Tabs_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Tabs_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Tabs")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Tabs" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Tabs" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_BorderRadius_5500
     * @tc.name： Test_EmptyAttrs_TabContent_BorderRadius_5500
     * @tc.desic：Empty_TabContent_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_TabContent_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd TabContent")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"TabContent" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["TabContent" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_BorderRadius_5600
     * @tc.name： Test_EmptyAttrs_Circle_BorderRadius_5600
     * @tc.desic：Empty_Circle_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Circle_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Circle")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Circle" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Circle" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_BorderRadius_5700
     * @tc.name： Test_EmptyAttrs_Line_BorderRadius_5700
     * @tc.desic：Empty_Line_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Line_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Line")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Line" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Line" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_BorderRadius_5800
     * @tc.name： Test_EmptyAttrs_Rect_BorderRadius_5800
     * @tc.desic：Empty_Rect_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Rect_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Rect")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Rect" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Rect" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_BorderRadius_5900
     * @tc.name： Test_EmptyAttrs_Shape_BorderRadius_5900
     * @tc.desic：Empty_Shape_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Shape_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Shape")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Shape" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Shape" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_BorderRadius_6100
     * @tc.name： Test_EmptyAttrs_Path_BorderRadius_6100
     * @tc.desic：Empty_Path_BorderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_BorderRadius_Path_6100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius: FindEnd Path")
        sleepFor(1.second)
        for (BorderRadius_Prop in BorderRadius_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius_Prop: ${"Path" + BorderRadius_Prop[0]}")
            let viewPort = getInspector()["Path" + BorderRadius_Prop[0], "borderRadius"]
            Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
            Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BorderRadius_Prop[2]}")
            @Expect(viewPort, BorderRadius_Prop[2])
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckBorderRadius:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
