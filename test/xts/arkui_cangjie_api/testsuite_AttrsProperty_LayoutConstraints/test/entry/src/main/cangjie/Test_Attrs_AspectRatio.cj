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
class Test_EmptyAttrs_AspectRatio {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("AspectRatio")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_AspectRatio_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_AspectRatio_0100
     * @tc.desic：Empty_AlphabetIndexer_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd AlphabetIndexer")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"AlphabetIndexer" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["AlphabetIndexer" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["AlphabetIndexer" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["AlphabetIndexer" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_AspectRatio_0200
     * @tc.name： Test_EmptyAttrs_Blank_AspectRatio_0200
     * @tc.desic：Empty_Blank_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Blank")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Blank" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Blank" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Blank" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Blank" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_AspectRatio_0300
     * @tc.name： Test_EmptyAttrs_Button_AspectRatio_0300
     * @tc.desic：Empty_Button_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Button")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Button" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Button" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Button" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Button" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_AspectRatio_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_AspectRatio_0400
     * @tc.desic：Empty_Checkbox_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Checkbox")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Checkbox" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Checkbox" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Checkbox" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Checkbox" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_AspectRatio_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_AspectRatio_0500
     * @tc.desic：Empty_CheckboxGroup_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd CheckboxGroup")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"CheckboxGroup" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["CheckboxGroup" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["CheckboxGroup" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["CheckboxGroup" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_AspectRatio_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_AspectRatio_0700
     * @tc.desic：Empty_DataPanel_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd DataPanel")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"DataPanel" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["DataPanel" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["DataPanel" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["DataPanel" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_AspectRatio_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_AspectRatio_0800
     * @tc.desic：Empty_DatePicker_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd DatePicker")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"DatePicker" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["DatePicker" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["DatePicker" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["DatePicker" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_AspectRatio_0900
     * @tc.name： Test_EmptyAttrs_Divider_AspectRatio_0900
     * @tc.desic：Empty_Divider_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Divider")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Divider" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Divider" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Divider" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Divider" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_AspectRatio_1000
     * @tc.name： Test_EmptyAttrs_Gauge_AspectRatio_1000
     * @tc.desic：Empty_Gauge_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Gauge")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Gauge" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Gauge" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Gauge" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Gauge" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_AspectRatio_1100
     * @tc.name： Test_EmptyAttrs_Image_AspectRatio_1100
     * @tc.desic：Empty_Image_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Image")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Image" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Image" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Image" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Image" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_AspectRatio_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_AspectRatio_1200
     * @tc.desic：Empty_ImageSpan_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd ImageSpan")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"ImageSpan" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["ImageSpan" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["ImageSpan" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["ImageSpan" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_AspectRatio_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_AspectRatio_1300
     * @tc.desic：Empty_LoadingProgress_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd LoadingProgress")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"LoadingProgress" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["LoadingProgress" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["LoadingProgress" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["LoadingProgress" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_AspectRatio_1400
     * @tc.name： Test_EmptyAttrs_Menu_AspectRatio_1400
     * @tc.desic：Empty_Menu_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Menu")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Menu" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Menu" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Menu" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Menu" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_AspectRatio_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_AspectRatio_1500
     * @tc.desic：Empty_MenuItem_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd MenuItem")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"MenuItem" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["MenuItem" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["MenuItem" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["MenuItem" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_AspectRatio_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_AspectRatio_1600
     * @tc.desic：Empty_MenuItemGroup_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd MenuItemGroup")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"MenuItemGroup" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["MenuItemGroup" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["MenuItemGroup" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["MenuItemGroup" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"208.00vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"156.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_AspectRatio_1700
     * @tc.name： Test_EmptyAttrs_Progress_AspectRatio_1700
     * @tc.desic：Empty_Progress_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Progress")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Progress" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Progress" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Progress" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Progress" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_AspectRatio_1800
     * @tc.name： Test_EmptyAttrs_QRCode_AspectRatio_1800
     * @tc.desic：Empty_QRCode_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd QRCode")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"QRCode" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["QRCode" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["QRCode" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["QRCode" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_AspectRatio_1900
     * @tc.name： Test_EmptyAttrs_Radio_AspectRatio_1900
     * @tc.desic：Empty_Radio_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Radio")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Radio" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Radio" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Radio" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Radio" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_AspectRatio_2000
     * @tc.name： Test_EmptyAttrs_Rating_AspectRatio_2000
     * @tc.desic：Empty_Rating_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Rating")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Rating" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Rating" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Rating" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Rating" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_AspectRatio_2100
     * @tc.name： Test_EmptyAttrs_Refresh_AspectRatio_2100
     * @tc.desic：Empty_Refresh_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Refresh")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Refresh" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Refresh" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Refresh" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Refresh" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_AspectRatio_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_AspectRatio_2200
     * @tc.desic：Empty_RichEditor_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd RichEditor")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"RichEditor" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["RichEditor" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["RichEditor" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["RichEditor" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_AspectRatio_2300
     * @tc.name： Test_EmptyAttrs_RichText_AspectRatio_2300
     * @tc.desic：Empty_RichText_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd RichText")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"RichText" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["RichText" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["RichText" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["RichText" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_AspectRatio_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_AspectRatio_2400
     * @tc.desic：Empty_RowSplit_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd RowSplit")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"RowSplit" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["RowSplit" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["RowSplit" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["RowSplit" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_AspectRatio_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_AspectRatio_2500
     * @tc.desic：Empty_ScrollBar_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd ScrollBar")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"ScrollBar" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["ScrollBar" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["ScrollBar" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["ScrollBar" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_AspectRatio_2600
     * @tc.name： Test_EmptyAttrs_Search_AspectRatio_2600
     * @tc.desic：Empty_Search_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Search")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Search" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Search" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Search" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Search" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_AspectRatio_2700
     * @tc.name： Test_EmptyAttrs_Slider_AspectRatio_2700
     * @tc.desic：Empty_Slider_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Slider")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Slider" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Slider" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Slider" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Slider" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_AspectRatio_2800
     * @tc.name： Test_EmptyAttrs_Stepper_AspectRatio_2800
     * @tc.desic：Empty_Stepper_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Stepper")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Stepper" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Stepper" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Stepper" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Stepper" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_AspectRatio_2900
     * @tc.name： Test_EmptyAttrs_Text_AspectRatio_2900
     * @tc.desic：Empty_Text_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Text_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Text")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Text" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Text" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Text" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Text" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_AspectRatio_3000
     * @tc.name： Test_EmptyAttrs_TextArea_AspectRatio_3000
     * @tc.desic：Empty_TextArea_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_TextArea_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd TextArea")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"TextArea" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["TextArea" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["TextArea" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["TextArea" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_AspectRatio_3100
     * @tc.name： Test_EmptyAttrs_TextClock_AspectRatio_3100
     * @tc.desic：Empty_TextClock_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_TextClock_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd TextClock")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"TextClock" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["TextClock" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["TextClock" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["TextClock" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_AspectRatio_3200
     * @tc.name： Test_EmptyAttrs_TextInput_AspectRatio_3200
     * @tc.desic：Empty_TextInput_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_TextInput_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd TextInput")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"TextInput" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["TextInput" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["TextInput" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["TextInput" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_AspectRatio_3300
     * @tc.name： Test_EmptyAttrs_TextPicker_AspectRatio_3300
     * @tc.desic：Empty_TextPicker_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_TextPicker_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd TextPicker")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"TextPicker" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["TextPicker" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["TextPicker" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["TextPicker" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_AspectRatio_3400
     * @tc.name： Test_EmptyAttrs_TextTimer_AspectRatio_3400
     * @tc.desic：Empty_TextTimer_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_TextTimer_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd TextTimer")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"TextTimer" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["TextTimer" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["TextTimer" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["TextTimer" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_AspectRatio_3500
     * @tc.name： Test_EmptyAttrs_Toggle_AspectRatio_3500
     * @tc.desic：Empty_Toggle_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Toggle_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Toggle")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Toggle" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Toggle" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Toggle" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Toggle" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_AspectRatio_3600
     * @tc.name： Test_EmptyAttrs_Web_AspectRatio_3600
     * @tc.desic：Empty_Web_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Web_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Web")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Web" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Web" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Web" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Web" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_AspectRatio_3700
     * @tc.name： Test_EmptyAttrs_Select_AspectRatio_3700
     * @tc.desic：Empty_Select_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Select_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Select")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Select" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Select" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Select" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Select" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_AspectRatio_3800
     * @tc.name： Test_EmptyAttrs_Badge_AspectRatio_3800
     * @tc.desic：Empty_Badge_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Badge_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Badge")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Badge" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Badge" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Badge" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Badge" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_AspectRatio_3900
     * @tc.name： Test_EmptyAttrs_Column_AspectRatio_3900
     * @tc.desic：Empty_Column_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Column_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Column")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Column" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Column" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Column" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Column" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_AspectRatio_4000
     * @tc.name： Test_EmptyAttrs_Grid_AspectRatio_4000
     * @tc.desic：Empty_Grid_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Grid_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Grid")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Grid" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Grid" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Grid" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Grid" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_AspectRatio_4100
     * @tc.name： Test_EmptyAttrs_GridItem_AspectRatio_4100
     * @tc.desic：Empty_GridItem_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_GridItem_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd GridItem")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"GridItem" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["GridItem" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["GridItem" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["GridItem" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_AspectRatio_4200
     * @tc.name： Test_EmptyAttrs_GridRow_AspectRatio_4200
     * @tc.desic：Empty_GridRow_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_GridRow_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd GridRow")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"GridRow" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["GridRow" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["GridRow" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["GridRow" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_AspectRatio_4300
     * @tc.name： Test_EmptyAttrs_Flex_AspectRatio_4300
     * @tc.desic：Empty_Flex_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Flex_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Flex")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Flex" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Flex" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Flex" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Flex" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_AspectRatio_4400
     * @tc.name： Test_EmptyAttrs_List_AspectRatio_4400
     * @tc.desic：Empty_List_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_List_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd List")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"List" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["List" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["List" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["List" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_AspectRatio_4500
     * @tc.name： Test_EmptyAttrs_ListItem_AspectRatio_4500
     * @tc.desic：Empty_ListItem_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_ListItem_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd ListItem")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"ListItem" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["ListItem" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["ListItem" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["ListItem" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_AspectRatio_4600
     * @tc.name： Test_EmptyAttrs_ListItemGroup_AspectRatio_4600
     * @tc.desic：Empty_ListItemGroup_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_ListItemGroup_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd ListItemGroup")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"ListItemGroup" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["ListItemGroup" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["ListItemGroup" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["ListItemGroup" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_AspectRatio_4800
     * @tc.name： Test_EmptyAttrs_RelativeContainer_AspectRatio_4800
     * @tc.desic：Empty_RelativeContainer_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_RelativeContainer_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd RelativeContainer")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"RelativeContainer" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["RelativeContainer" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["RelativeContainer" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["RelativeContainer" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_AspectRatio_4900
     * @tc.name： Test_EmptyAttrs_Row_AspectRatio_4900
     * @tc.desic：Empty_Row_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Row_4900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Row")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Row" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Row" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Row" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Row" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_AspectRatio_5000
     * @tc.name： Test_EmptyAttrs_Scroll_AspectRatio_5000
     * @tc.desic：Empty_Scroll_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Scroll_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Scroll")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Scroll" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Scroll" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Scroll" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Scroll" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_AspectRatio_5100
     * @tc.name： Test_EmptyAttrs_Stack_AspectRatio_5100
     * @tc.desic：Empty_Stack_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Stack_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Stack")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Stack" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Stack" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Stack" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Stack" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_AspectRatio_5200
     * @tc.name： Test_EmptyAttrs_Swiper_AspectRatio_5200
     * @tc.desic：Empty_Swiper_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Swiper_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Swiper")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Swiper" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Swiper" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Swiper" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Swiper" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_AspectRatio_5300
     * @tc.name： Test_EmptyAttrs_Tabs_AspectRatio_5300
     * @tc.desic：Empty_Tabs_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Tabs_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Tabs")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Tabs" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Tabs" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Tabs" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Tabs" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_AspectRatio_5400
     * @tc.name： Test_EmptyAttrs_Circle_AspectRatio_5400
     * @tc.desic：Empty_Circle_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Circle_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Circle")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Circle" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Circle" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Circle" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Circle" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_AspectRatio_5500
     * @tc.name： Test_EmptyAttrs_Line_AspectRatio_5500
     * @tc.desic：Empty_Line_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Line_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Line")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Line" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Line" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Line" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Line" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_AspectRatio_5600
     * @tc.name： Test_EmptyAttrs_Rect_AspectRatio_5600
     * @tc.desic：Empty_Rect_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Rect_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Rect")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Rect" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Rect" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Rect" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Rect" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_AspectRatio_5700
     * @tc.name： Test_EmptyAttrs_Shape_AspectRatio_5700
     * @tc.desic：Empty_Shape_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Shape_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Shape")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Shape" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Shape" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Shape" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Shape" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_AspectRatio_5900
     * @tc.name： Test_EmptyAttrs_Path_AspectRatio_5900
     * @tc.desic：Empty_Path_AspectRatio
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_AspectRatio_Path_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio: FindEnd Path")
        sleepFor(1.second)

        var flag = true
        for (AspectRatio_Prop in AspectRatio_Prop_List) {
            Hilog.info(0, "cangjietest", "test", "CheckCheckAttrs_Prop: ${"Path" + AspectRatio_Prop[0]}")
            let viewPort = getInspector()["Path" + AspectRatio_Prop[0], "aspectRatio"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPort: ${viewPort}")
            let viewPortWidth = getInspector()["Path" + AspectRatio_Prop[0], "width"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortWidth: ${viewPortWidth}")
            let viewPortHeight = getInspector()["Path" + AspectRatio_Prop[0], "height"]
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}ViewPortHeight: ${viewPortHeight}")
            Hilog.info(0, "cangjietest", "test", "CheckCheck${AspectRatio_Prop[0]}Expect: ${AspectRatio_Prop[2]}")
            @Expect(viewPort, AspectRatio_Prop[2])
            @Expect(viewPortWidth,"\"200.00vp\"")
            if (flag) {
                @Expect(viewPortHeight,"\"133.33vp\"")
                flag = false
            } else {
                @Expect(viewPortHeight,"\"100.00vp\"")
            }
        }
        Hilog.info(0, "cangjietest", "test", "CheckCheckAspectRatio:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
