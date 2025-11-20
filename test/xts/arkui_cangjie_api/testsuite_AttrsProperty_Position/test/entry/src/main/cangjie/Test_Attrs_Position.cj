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
import ohos.base.*
import ohos.arkui.component.badge.BadgePosition
@Test
class Test_EmptyAttrs_Position {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Position")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_Position_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_Position_0100
     * @tc.desic：Empty_AlphabetIndexer_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_AlphabetIndexer_0100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin AlphabetIndexer")
        enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd AlphabetIndexer")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"AlphabetIndexer" + Position_Prop[0]}")
                let viewPort = getInspector()["AlphabetIndexer" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Blank_Position_0200
     * @tc.name： Test_EmptyAttrs_Blank_Position_0200
     * @tc.desic：Empty_Blank_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Blank_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Blank")
        enterPage(scrollerId: "scroll", buttonId: "Blank")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Blank")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Blank" + Position_Prop[0]}")
                let viewPort = getInspector()["Blank" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Button_Position_0300
     * @tc.name： Test_EmptyAttrs_Button_Position_0300
     * @tc.desic：Empty_Button_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Button_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Button")
        enterPage(scrollerId: "scroll", buttonId: "Button")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Button")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Button" + Position_Prop[0]}")
                let viewPort = getInspector()["Button" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Checkbox_Position_0400
     * @tc.name： Test_EmptyAttrs_Checkbox_Position_0400
     * @tc.desic：Empty_Checkbox_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Checkbox_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Checkbox")
        enterPage(scrollerId: "scroll", buttonId: "Checkbox")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Checkbox")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Checkbox" + Position_Prop[0]}")
                let viewPort = getInspector()["Checkbox" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_Position_0500
     * @tc.name： Test_EmptyAttrs_CheckboxGroup_Position_0500
     * @tc.desic：Empty_CheckboxGroup_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_CheckboxGroup_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin CheckboxGroup")
        enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd CheckboxGroup")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"CheckboxGroup" + Position_Prop[0]}")
                let viewPort = getInspector()["CheckboxGroup" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DataPanel_Position_0700
     * @tc.name： Test_EmptyAttrs_DataPanel_Position_0700
     * @tc.desic：Empty_DataPanel_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_DataPanel_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin DataPanel")
        enterPage(scrollerId: "scroll", buttonId: "DataPanel")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd DataPanel")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"DataPanel" + Position_Prop[0]}")
                let viewPort = getInspector()["DataPanel" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_DatePicker_Position_0800
     * @tc.name： Test_EmptyAttrs_DatePicker_Position_0800
     * @tc.desic：Empty_DatePicker_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_DatePicker_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin DatePicker")
        enterPage(scrollerId: "scroll", buttonId: "DatePicker")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd DatePicker")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"DatePicker" + Position_Prop[0]}")
                let viewPort = getInspector()["DatePicker" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Divider_Position_0900
     * @tc.name： Test_EmptyAttrs_Divider_Position_0900
     * @tc.desic：Empty_Divider_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Divider_0900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Divider")
        enterPage(scrollerId: "scroll", buttonId: "Divider")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Divider")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Divider" + Position_Prop[0]}")
                let viewPort = getInspector()["Divider" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Gauge_Position_1000
     * @tc.name： Test_EmptyAttrs_Gauge_Position_1000
     * @tc.desic：Empty_Gauge_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Gauge_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Gauge")
        enterPage(scrollerId: "scroll", buttonId: "Gauge")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Gauge")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Gauge" + Position_Prop[0]}")
                let viewPort = getInspector()["Gauge" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Image_Position_1100
     * @tc.name： Test_EmptyAttrs_Image_Position_1100
     * @tc.desic：Empty_Image_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Image_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Image")
        enterPage(scrollerId: "scroll", buttonId: "Image")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Image")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Image" + Position_Prop[0]}")
                let viewPort = getInspector()["Image" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_Position_1200
     * @tc.name： Test_EmptyAttrs_ImageSpan_Position_1200
     * @tc.desic：Empty_ImageSpan_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_ImageSpan_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin ImageSpan")
        enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd ImageSpan")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"ImageSpan" + Position_Prop[0]}")
                let viewPort = getInspector()["ImageSpan" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_Position_1300
     * @tc.name： Test_EmptyAttrs_LoadingProgress_Position_1300
     * @tc.desic：Empty_LoadingProgress_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_LoadingProgress_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin LoadingProgress")
        enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd LoadingProgress")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"LoadingProgress" + Position_Prop[0]}")
                let viewPort = getInspector()["LoadingProgress" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Position_1400
     * @tc.name： Test_EmptyAttrs_Menu_Position_1400
     * @tc.desic：Empty_Menu_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Menu_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Menu")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Menu" + Position_Prop[0]}")
                let viewPort = getInspector()["Menu" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItem_Position_1500
     * @tc.name： Test_EmptyAttrs_MenuItem_Position_1500
     * @tc.desic：Empty_MenuItem_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_MenuItem_1500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin MenuItem")
        enterPage(scrollerId: "scroll", buttonId: "MenuItem")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd MenuItem")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"MenuItem" + Position_Prop[0]}")
                let viewPort = getInspector()["MenuItem" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_Position_1600
     * @tc.name： Test_EmptyAttrs_MenuItemGroup_Position_1600
     * @tc.desic：Empty_MenuItemGroup_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_MenuItemGroup_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin MenuItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd MenuItemGroup")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"MenuItemGroup" + Position_Prop[0]}")
                let viewPort = getInspector()["MenuItemGroup" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Progress_Position_1700
     * @tc.name： Test_EmptyAttrs_Progress_Position_1700
     * @tc.desic：Empty_Progress_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Progress_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Progress")
        enterPage(scrollerId: "scroll", buttonId: "Progress")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Progress")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Progress" + Position_Prop[0]}")
                let viewPort = getInspector()["Progress" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_QRCode_Position_1800
     * @tc.name： Test_EmptyAttrs_QRCode_Position_1800
     * @tc.desic：Empty_QRCode_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_QRCode_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin QRCode")
        enterPage(scrollerId: "scroll", buttonId: "QRCode")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd QRCode")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"QRCode" + Position_Prop[0]}")
                let viewPort = getInspector()["QRCode" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Radio_Position_1900
     * @tc.name： Test_EmptyAttrs_Radio_Position_1900
     * @tc.desic：Empty_Radio_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Radio_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Radio")
        enterPage(scrollerId: "scroll", buttonId: "Radio")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Radio")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Radio" + Position_Prop[0]}")
                let viewPort = getInspector()["Radio" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rating_Position_2000
     * @tc.name： Test_EmptyAttrs_Rating_Position_2000
     * @tc.desic：Empty_Rating_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Rating_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Rating")
        enterPage(scrollerId: "scroll", buttonId: "Rating")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Rating")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Rating" + Position_Prop[0]}")
                let viewPort = getInspector()["Rating" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Position_2100
     * @tc.name： Test_EmptyAttrs_Refresh_Position_2100
     * @tc.desic：Empty_Refresh_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Refresh_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Refresh")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Refresh" + Position_Prop[0]}")
                let viewPort = getInspector()["Refresh" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichEditor_Position_2200
     * @tc.name： Test_EmptyAttrs_RichEditor_Position_2200
     * @tc.desic：Empty_RichEditor_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_RichEditor_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin RichEditor")
        enterPage(scrollerId: "scroll", buttonId: "RichEditor")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd RichEditor")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"RichEditor" + Position_Prop[0]}")
                let viewPort = getInspector()["RichEditor" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RichText_Position_2300
     * @tc.name： Test_EmptyAttrs_RichText_Position_2300
     * @tc.desic：Empty_RichText_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_RichText_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin RichText")
        enterPage(scrollerId: "scroll", buttonId: "RichText")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd RichText")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"RichText" + Position_Prop[0]}")
                let viewPort = getInspector()["RichText" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Position_2400
     * @tc.name： Test_EmptyAttrs_RowSplit_Position_2400
     * @tc.desic：Empty_RowSplit_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_RowSplit_2400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd RowSplit")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"RowSplit" + Position_Prop[0]}")
                let viewPort = getInspector()["RowSplit" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_Position_2500
     * @tc.name： Test_EmptyAttrs_ScrollBar_Position_2500
     * @tc.desic：Empty_ScrollBar_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_ScrollBar_2500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin ScrollBar")
        enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd ScrollBar")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"ScrollBar" + Position_Prop[0]}")
                let viewPort = getInspector()["ScrollBar" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Search_Position_2600
     * @tc.name： Test_EmptyAttrs_Search_Position_2600
     * @tc.desic：Empty_Search_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Search_2600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Search")
        enterPage(scrollerId: "scroll", buttonId: "Search")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Search")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Search" + Position_Prop[0]}")
                let viewPort = getInspector()["Search" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Slider_Position_2700
     * @tc.name： Test_EmptyAttrs_Slider_Position_2700
     * @tc.desic：Empty_Slider_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Slider_2700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Slider")
        enterPage(scrollerId: "scroll", buttonId: "Slider")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Slider")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Slider" + Position_Prop[0]}")
                let viewPort = getInspector()["Slider" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Position_2800
     * @tc.name： Test_EmptyAttrs_Stepper_Position_2800
     * @tc.desic：Empty_Stepper_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Stepper_2800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Stepper")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Stepper" + Position_Prop[0]}")
                let viewPort = getInspector()["Stepper" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_StepperItem_Position_2900
     * @tc.name： Test_EmptyAttrs_StepperItem_Position_2900
     * @tc.desic：Empty_StepperItem_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_StepperItem_2900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin StepperItem")
        enterPage(scrollerId: "scroll", buttonId: "StepperItem")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd StepperItem")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"StepperItem" + Position_Prop[0]}")
                let viewPort = getInspector()["StepperItem" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Text_Position_3000
     * @tc.name： Test_EmptyAttrs_Text_Position_3000
     * @tc.desic：Empty_Text_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Text_3000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Text")
        enterPage(scrollerId: "scroll", buttonId: "Text")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Text")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Text" + Position_Prop[0]}")
                let viewPort = getInspector()["Text" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextArea_Position_3100
     * @tc.name： Test_EmptyAttrs_TextArea_Position_3100
     * @tc.desic：Empty_TextArea_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_TextArea_3100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin TextArea")
        enterPage(scrollerId: "scroll", buttonId: "TextArea")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd TextArea")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"TextArea" + Position_Prop[0]}")
                let viewPort = getInspector()["TextArea" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextClock_Position_3200
     * @tc.name： Test_EmptyAttrs_TextClock_Position_3200
     * @tc.desic：Empty_TextClock_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_TextClock_3200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin TextClock")
        enterPage(scrollerId: "scroll", buttonId: "TextClock")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd TextClock")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"TextClock" + Position_Prop[0]}")
                let viewPort = getInspector()["TextClock" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextInput_Position_3300
     * @tc.name： Test_EmptyAttrs_TextInput_Position_3300
     * @tc.desic：Empty_TextInput_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_TextInput_3300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin TextInput")
        enterPage(scrollerId: "scroll", buttonId: "TextInput")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd TextInput")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"TextInput" + Position_Prop[0]}")
                let viewPort = getInspector()["TextInput" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextPicker_Position_3400
     * @tc.name： Test_EmptyAttrs_TextPicker_Position_3400
     * @tc.desic：Empty_TextPicker_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_TextPicker_3400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin TextPicker")
        enterPage(scrollerId: "scroll", buttonId: "TextPicker")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd TextPicker")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"TextPicker" + Position_Prop[0]}")
                let viewPort = getInspector()["TextPicker" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TextTimer_Position_3500
     * @tc.name： Test_EmptyAttrs_TextTimer_Position_3500
     * @tc.desic：Empty_TextTimer_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_TextTimer_3500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin TextTimer")
        enterPage(scrollerId: "scroll", buttonId: "TextTimer")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd TextTimer")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"TextTimer" + Position_Prop[0]}")
                let viewPort = getInspector()["TextTimer" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Toggle_Position_3600
     * @tc.name： Test_EmptyAttrs_Toggle_Position_3600
     * @tc.desic：Empty_Toggle_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Toggle_3600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Toggle")
        enterPage(scrollerId: "scroll", buttonId: "Toggle")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Toggle")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Toggle" + Position_Prop[0]}")
                let viewPort = getInspector()["Toggle" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Web_Position_3700
     * @tc.name： Test_EmptyAttrs_Web_Position_3700
     * @tc.desic：Empty_Web_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Web_3700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Web")
        enterPage(scrollerId: "scroll", buttonId: "Web")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Web")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Web" + Position_Prop[0]}")
                let viewPort = getInspector()["Web" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Select_Position_3800
     * @tc.name： Test_EmptyAttrs_Select_Position_3800
     * @tc.desic：Empty_Select_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Select_3800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Select")
        enterPage(scrollerId: "scroll", buttonId: "Select")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Select")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Select" + Position_Prop[0]}")
                let viewPort = getInspector()["Select" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Position_3900
     * @tc.name： Test_EmptyAttrs_Badge_Position_3900
     * @tc.desic：Empty_Badge_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Badge_3900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Badge")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if (Position_Prop[1] is BadgePosition) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Badge" + Position_Prop[0]}")
                let viewPort = getInspector()["Badge" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Column_Position_4000
     * @tc.name： Test_EmptyAttrs_Column_Position_4000
     * @tc.desic：Empty_Column_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Column_4000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Column")
        enterPage(scrollerId: "scroll", buttonId: "Column")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Column")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Column" + Position_Prop[0]}")
                let viewPort = getInspector()["Column" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Position_4100
     * @tc.name： Test_EmptyAttrs_Grid_Position_4100
     * @tc.desic：Empty_Grid_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Grid_4100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Grid")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Grid" + Position_Prop[0]}")
                let viewPort = getInspector()["Grid" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Position_4200
     * @tc.name： Test_EmptyAttrs_GridItem_Position_4200
     * @tc.desic：Empty_GridItem_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_GridItem_4200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd GridItem")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"GridItem" + Position_Prop[0]}")
                let viewPort = getInspector()["GridItem" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridRow_Position_4300
     * @tc.name： Test_EmptyAttrs_GridRow_Position_4300
     * @tc.desic：Empty_GridRow_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_GridRow_4300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin GridRow")
        enterPage(scrollerId: "scroll", buttonId: "GridRow")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd GridRow")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"GridRow" + Position_Prop[0]}")
                let viewPort = getInspector()["GridRow" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Position_4400
     * @tc.name： Test_EmptyAttrs_GridCol_Position_4400
     * @tc.desic：Empty_GridCol_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_GridCol_4400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd GridCol")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"GridCol" + Position_Prop[0]}")
                let viewPort = getInspector()["GridCol" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Position_4500
     * @tc.name： Test_EmptyAttrs_Flex_Position_4500
     * @tc.desic：Empty_Flex_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Flex_4500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Flex")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Flex" + Position_Prop[0]}")
                let viewPort = getInspector()["Flex" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Position_4600
     * @tc.name： Test_EmptyAttrs_List_Position_4600
     * @tc.desic：Empty_List_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_List_4600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd List")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"List" + Position_Prop[0]}")
                let viewPort = getInspector()["List" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Position_4700
     * @tc.name： Test_EmptyAttrs_ListItem_Position_4700
     * @tc.desic：Empty_ListItem_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_ListItem_4700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd ListItem")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"ListItem" + Position_Prop[0]}")
                let viewPort = getInspector()["ListItem" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Position_4800
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Position_4800
     * @tc.desic：Empty_ListItemGroup_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_ListItemGroup_4800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd ListItemGroup")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"ListItemGroup" + Position_Prop[0]}")
                let viewPort = getInspector()["ListItemGroup" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Position_5000
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Position_5000
     * @tc.desic：Empty_RelativeContainer_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_RelativeContainer_5000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd RelativeContainer")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"RelativeContainer" + Position_Prop[0]}")
                let viewPort = getInspector()["RelativeContainer" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Position_5100
     * @tc.name： Test_EmptyAttrs_Row_Position_5100
     * @tc.desic：Empty_Row_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Row_5100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Row")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Row" + Position_Prop[0]}")
                let viewPort = getInspector()["Row" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Position_5200
     * @tc.name： Test_EmptyAttrs_Scroll_Position_5200
     * @tc.desic：Empty_Scroll_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Scroll_5200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Scroll")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Scroll" + Position_Prop[0]}")
                let viewPort = getInspector()["Scroll" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Position_5300
     * @tc.name： Test_EmptyAttrs_Stack_Position_5300
     * @tc.desic：Empty_Stack_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Stack_5300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Stack")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Stack" + Position_Prop[0]}")
                let viewPort = getInspector()["Stack" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Position_5400
     * @tc.name： Test_EmptyAttrs_Swiper_Position_5400
     * @tc.desic：Empty_Swiper_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Swiper_5400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Swiper")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Swiper" + Position_Prop[0]}")
                let viewPort = getInspector()["Swiper" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Position_5500
     * @tc.name： Test_EmptyAttrs_Tabs_Position_5500
     * @tc.desic：Empty_Tabs_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Tabs_5500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Tabs")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Tabs" + Position_Prop[0]}")
                let viewPort = getInspector()["Tabs" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Position_5600
     * @tc.name： Test_EmptyAttrs_TabContent_Position_5600
     * @tc.desic：Empty_TabContent_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_TabContent_5600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd TabContent")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"TabContent" + Position_Prop[0]}")
                let viewPort = getInspector()["TabContent" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Circle_Position_5700
     * @tc.name： Test_EmptyAttrs_Circle_Position_5700
     * @tc.desic：Empty_Circle_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Circle_5700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Circle")
        enterPage(scrollerId: "scroll", buttonId: "Circle")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Circle")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Circle" + Position_Prop[0]}")
                let viewPort = getInspector()["Circle" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Line_Position_5800
     * @tc.name： Test_EmptyAttrs_Line_Position_5800
     * @tc.desic：Empty_Line_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Line_5800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Line")
        enterPage(scrollerId: "scroll", buttonId: "Line")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Line")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Line" + Position_Prop[0]}")
                let viewPort = getInspector()["Line" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Rect_Position_5900
     * @tc.name： Test_EmptyAttrs_Rect_Position_5900
     * @tc.desic：Empty_Rect_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Rect_5900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Rect")
        enterPage(scrollerId: "scroll", buttonId: "Rect")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Rect")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Rect" + Position_Prop[0]}")
                let viewPort = getInspector()["Rect" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Position_6000
     * @tc.name： Test_EmptyAttrs_Shape_Position_6000
     * @tc.desic：Empty_Shape_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Shape_6000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Shape")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Shape" + Position_Prop[0]}")
                let viewPort = getInspector()["Shape" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
    
    /*
     * @tc.number：Sub_Cangjie_ArkUI_Path_Position_6200
     * @tc.name： Test_EmptyAttrs_Path_Position_6200
     * @tc.desic：Empty_Path_Position
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Position_Path_6200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindBegin Path")
        enterPage(scrollerId: "scroll", buttonId: "Path")
        Hilog.info(0, "cangjietest", "CheckCheckPosition: FindEnd Path")
        sleepFor(1.second)

        for (Position_Prop in Position_Prop_List) {
            if ((Position_Prop[1] is (Length, Length)) || (Position_Prop[1] is (Float64, Float64)) || (Position_Prop[1] is (Int64, 
                Int64)) || (Position_Prop[1] is (AppResource, AppResource))) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Path" + Position_Prop[0]}")
                let viewPort = getInspector()["Path" + Position_Prop[0], "position"]
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Position_Prop[0]}Expect: ${Position_Prop[2]}")
                @Expect(viewPort, Position_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckPosition:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
