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
import ohos.arkui.component.common.*
@Test
class Test_EmptyAttrs_Direction {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("Direction")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Menu_Direction_0200
     * @tc.name： Test_EmptyAttrs_Menu_Direction_0200
     * @tc.desic：Empty_Menu_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Menu_0200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Menu")
        enterPage(scrollerId: "scroll", buttonId: "Menu")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Menu")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Menu" + Direction_Prop[0]}")
                let viewPort = getInspector()["Menu" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Refresh_Direction_0300
     * @tc.name： Test_EmptyAttrs_Refresh_Direction_0300
     * @tc.desic：Empty_Refresh_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Refresh_0300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Refresh")
        enterPage(scrollerId: "scroll", buttonId: "Refresh")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Refresh")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Refresh" + Direction_Prop[0]}")
                let viewPort = getInspector()["Refresh" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_RowSplit_Direction_0400
     * @tc.name： Test_EmptyAttrs_RowSplit_Direction_0400
     * @tc.desic：Empty_RowSplit_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_RowSplit_0400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin RowSplit")
        enterPage(scrollerId: "scroll", buttonId: "RowSplit")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd RowSplit")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"RowSplit" + Direction_Prop[0]}")
                let viewPort = getInspector()["RowSplit" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stepper_Direction_0500
     * @tc.name： Test_EmptyAttrs_Stepper_Direction_0500
     * @tc.desic：Empty_Stepper_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Stepper_0500() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Stepper")
        enterPage(scrollerId: "scroll", buttonId: "Stepper")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Stepper")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Stepper" + Direction_Prop[0]}")
                let viewPort = getInspector()["Stepper" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Badge_Direction_0600
     * @tc.name： Test_EmptyAttrs_Badge_Direction_0600
     * @tc.desic：Empty_Badge_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Badge_0600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Badge")
        enterPage(scrollerId: "scroll", buttonId: "Badge")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Badge")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Badge" + Direction_Prop[0]}")
                let viewPort = getInspector()["Badge" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Grid_Direction_0700
     * @tc.name： Test_EmptyAttrs_Grid_Direction_0700
     * @tc.desic：Empty_Grid_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Grid_0700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Grid")
        enterPage(scrollerId: "scroll", buttonId: "Grid")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Grid")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Grid" + Direction_Prop[0]}")
                let viewPort = getInspector()["Grid" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridItem_Direction_0800
     * @tc.name： Test_EmptyAttrs_GridItem_Direction_0800
     * @tc.desic：Empty_GridItem_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_GridItem_0800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin GridItem")
        enterPage(scrollerId: "scroll", buttonId: "GridItem")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd GridItem")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"GridItem" + Direction_Prop[0]}")
                let viewPort = getInspector()["GridItem" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_GridCol_Direction_1000
     * @tc.name： Test_EmptyAttrs_GridCol_Direction_1000
     * @tc.desic：Empty_GridCol_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_GridCol_1000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin GridCol")
        enterPage(scrollerId: "scroll", buttonId: "GridCol")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd GridCol")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"GridCol" + Direction_Prop[0]}")
                let viewPort = getInspector()["GridCol" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Flex_Direction_1100
     * @tc.name： Test_EmptyAttrs_Flex_Direction_1100
     * @tc.desic：Empty_Flex_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Flex_1100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Flex")
        enterPage(scrollerId: "scroll", buttonId: "Flex")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Flex")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Flex" + Direction_Prop[0]}")
                let viewPort = getInspector()["Flex" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_List_Direction_1200
     * @tc.name： Test_EmptyAttrs_List_Direction_1200
     * @tc.desic：Empty_List_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_List_1200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin List")
        enterPage(scrollerId: "scroll", buttonId: "List")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd List")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"List" + Direction_Prop[0]}")
                let viewPort = getInspector()["List" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItem_Direction_1300
     * @tc.name： Test_EmptyAttrs_ListItem_Direction_1300
     * @tc.desic：Empty_ListItem_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_ListItem_1300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin ListItem")
        enterPage(scrollerId: "scroll", buttonId: "ListItem")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd ListItem")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"ListItem" + Direction_Prop[0]}")
                let viewPort = getInspector()["ListItem" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_Direction_1400
     * @tc.name： Test_EmptyAttrs_ListItemGroup_Direction_1400
     * @tc.desic：Empty_ListItemGroup_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_ListItemGroup_1400() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin ListItemGroup")
        enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd ListItemGroup")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"ListItemGroup" + Direction_Prop[0]}")
                let viewPort = getInspector()["ListItemGroup" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }



    /*
     * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_Direction_1600
     * @tc.name： Test_EmptyAttrs_RelativeContainer_Direction_1600
     * @tc.desic：Empty_RelativeContainer_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_RelativeContainer_1600() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin RelativeContainer")
        enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd RelativeContainer")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"RelativeContainer" + Direction_Prop[0]}")
                let viewPort = getInspector()["RelativeContainer" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Row_Direction_1700
     * @tc.name： Test_EmptyAttrs_Row_Direction_1700
     * @tc.desic：Empty_Row_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Row_1700() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Row")
        enterPage(scrollerId: "scroll", buttonId: "Row")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Row")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Row" + Direction_Prop[0]}")
                let viewPort = getInspector()["Row" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Scroll_Direction_1800
     * @tc.name： Test_EmptyAttrs_Scroll_Direction_1800
     * @tc.desic：Empty_Scroll_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Scroll_1800() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Scroll")
        enterPage(scrollerId: "scroll", buttonId: "Scroll")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Scroll")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Scroll" + Direction_Prop[0]}")
                let viewPort = getInspector()["Scroll" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Stack_Direction_1900
     * @tc.name： Test_EmptyAttrs_Stack_Direction_1900
     * @tc.desic：Empty_Stack_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Stack_1900() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Stack")
        enterPage(scrollerId: "scroll", buttonId: "Stack")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Stack")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Stack" + Direction_Prop[0]}")
                let viewPort = getInspector()["Stack" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Swiper_Direction_2000
     * @tc.name： Test_EmptyAttrs_Swiper_Direction_2000
     * @tc.desic：Empty_Swiper_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Swiper_2000() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Swiper")
        enterPage(scrollerId: "scroll", buttonId: "Swiper")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Swiper")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Swiper" + Direction_Prop[0]}")
                let viewPort = getInspector()["Swiper" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Tabs_Direction_2100
     * @tc.name： Test_EmptyAttrs_Tabs_Direction_2100
     * @tc.desic：Empty_Tabs_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Tabs_2100() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Tabs")
        enterPage(scrollerId: "scroll", buttonId: "Tabs")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Tabs")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Tabs" + Direction_Prop[0]}")
                let viewPort = getInspector()["Tabs" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_TabContent_Direction_2200
     * @tc.name： Test_EmptyAttrs_TabContent_Direction_2200
     * @tc.desic：Empty_TabContent_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_TabContent_2200() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin TabContent")
        enterPage(scrollerId: "scroll", buttonId: "TabContent")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd TabContent")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"TabContent" + Direction_Prop[0]}")
                let viewPort = getInspector()["TabContent" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_Shape_Direction_2300
     * @tc.name： Test_EmptyAttrs_Shape_Direction_2300
     * @tc.desic：Empty_Shape_Direction
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_EmptyAttrs_Direction_Shape_2300() {
        sleepFor(1.second)
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindBegin Shape")
        enterPage(scrollerId: "scroll", buttonId: "Shape")
        Hilog.info(0, "cangjietest", "CheckCheckDirection: FindEnd Shape")
        sleepFor(1.second)

        for (Direction_Prop in Direction_Prop_List) {
            if (Direction_Prop[1] is Direction) {
                Hilog.info(0, "cangjietest", "CheckCheckAttrs_Prop: ${"Shape" + Direction_Prop[0]}")
                let viewPort = getInspector()["Shape" + Direction_Prop[0], "direction"]
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}ViewPort: ${viewPort}")
                Hilog.info(0, "cangjietest", "CheckCheck${Direction_Prop[0]}Expect: ${Direction_Prop[2]}")
                @Expect(viewPort, Direction_Prop[2])
            }
        }
        Hilog.info(0, "cangjietest", "CheckCheckDirection:-----------------------------------------------")
        sleepFor(2.second)
        pressBack()
    }
}
