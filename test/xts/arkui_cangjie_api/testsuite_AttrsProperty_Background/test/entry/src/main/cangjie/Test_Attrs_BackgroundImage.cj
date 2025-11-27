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
class Test_EmptyAttrs_BackgroundImage {
    protected override func beforeAll() {
        sleepFor(3.second)
        enterPage("BackgroundImage")
    }

    protected override func afterAll() {
        sleepFor(1.second)
        pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_ArkUI_AlphabetIndexer_BackgroundImage_0100
     * @tc.name： Test_EmptyAttrs_AlphabetIndexer_BackgroundImage_0100
     * @tc.desic：Empty_AlphabetIndexer_BackgroundImage
     */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_AlphabetIndexer_0100() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin AlphabetIndexer")
       enterPage(scrollerId: "scroll", buttonId: "AlphabetIndexer")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd AlphabetIndexer")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"AlphabetIndexer" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["AlphabetIndexer" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Blank_BackgroundImage_0200
    * @tc.name： Test_EmptyAttrs_Blank_BackgroundImage_0200
    * @tc.desic：Empty_Blank_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Blank_0200() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Blank")
       enterPage(scrollerId: "scroll", buttonId: "Blank")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Blank")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Blank" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Blank" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Button_BackgroundImage_0300
    * @tc.name： Test_EmptyAttrs_Button_BackgroundImage_0300
    * @tc.desic：Empty_Button_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Button_0300() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Button")
       enterPage(scrollerId: "scroll", buttonId: "Button")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Button")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Button" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Button" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Checkbox_BackgroundImage_0400
    * @tc.name： Test_EmptyAttrs_Checkbox_BackgroundImage_0400
    * @tc.desic：Empty_Checkbox_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Checkbox_0400() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Checkbox")
       enterPage(scrollerId: "scroll", buttonId: "Checkbox")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Checkbox")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Checkbox" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Checkbox" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_CheckboxGroup_BackgroundImage_0500
    * @tc.name： Test_EmptyAttrs_CheckboxGroup_BackgroundImage_0500
    * @tc.desic：Empty_CheckboxGroup_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_CheckboxGroup_0500() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin CheckboxGroup")
       enterPage(scrollerId: "scroll", buttonId: "CheckboxGroup")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd CheckboxGroup")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"CheckboxGroup" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["CheckboxGroup" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }


   /*
    * @tc.number：Sub_Cangjie_ArkUI_DataPanel_BackgroundImage_0700
    * @tc.name： Test_EmptyAttrs_DataPanel_BackgroundImage_0700
    * @tc.desic：Empty_DataPanel_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_DataPanel_0700() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin DataPanel")
       enterPage(scrollerId: "scroll", buttonId: "DataPanel")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd DataPanel")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"DataPanel" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["DataPanel" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_DatePicker_BackgroundImage_0800
    * @tc.name： Test_EmptyAttrs_DatePicker_BackgroundImage_0800
    * @tc.desic：Empty_DatePicker_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_DatePicker_0800() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin DatePicker")
       enterPage(scrollerId: "scroll", buttonId: "DatePicker")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd DatePicker")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"DatePicker" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["DatePicker" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Divider_BackgroundImage_0900
    * @tc.name： Test_EmptyAttrs_Divider_BackgroundImage_0900
    * @tc.desic：Empty_Divider_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Divider_0900() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Divider")
       enterPage(scrollerId: "scroll", buttonId: "Divider")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Divider")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Divider" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Divider" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Gauge_BackgroundImage_1000
    * @tc.name： Test_EmptyAttrs_Gauge_BackgroundImage_1000
    * @tc.desic：Empty_Gauge_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Gauge_1000() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Gauge")
       enterPage(scrollerId: "scroll", buttonId: "Gauge")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Gauge")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Gauge" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Gauge" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Image_BackgroundImage_1100
    * @tc.name： Test_EmptyAttrs_Image_BackgroundImage_1100
    * @tc.desic：Empty_Image_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Image_1100() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Image")
       enterPage(scrollerId: "scroll", buttonId: "Image")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Image")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Image" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Image" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_ImageSpan_BackgroundImage_1200
    * @tc.name： Test_EmptyAttrs_ImageSpan_BackgroundImage_1200
    * @tc.desic：Empty_ImageSpan_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_ImageSpan_1200() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin ImageSpan")
       enterPage(scrollerId: "scroll", buttonId: "ImageSpan")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd ImageSpan")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"ImageSpan" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["ImageSpan" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_LoadingProgress_BackgroundImage_1300
    * @tc.name： Test_EmptyAttrs_LoadingProgress_BackgroundImage_1300
    * @tc.desic：Empty_LoadingProgress_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_LoadingProgress_1300() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin LoadingProgress")
       enterPage(scrollerId: "scroll", buttonId: "LoadingProgress")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd LoadingProgress")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"LoadingProgress" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["LoadingProgress" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Menu_BackgroundImage_1400
    * @tc.name： Test_EmptyAttrs_Menu_BackgroundImage_1400
    * @tc.desic：Empty_Menu_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Menu_1400() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Menu")
       enterPage(scrollerId: "scroll", buttonId: "Menu")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Menu")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Menu" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Menu" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_MenuItem_BackgroundImage_1500
    * @tc.name： Test_EmptyAttrs_MenuItem_BackgroundImage_1500
    * @tc.desic：Empty_MenuItem_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_MenuItem_1500() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin MenuItem")
       enterPage(scrollerId: "scroll", buttonId: "MenuItem")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd MenuItem")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"MenuItem" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["MenuItem" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_MenuItemGroup_BackgroundImage_1600
    * @tc.name： Test_EmptyAttrs_MenuItemGroup_BackgroundImage_1600
    * @tc.desic：Empty_MenuItemGroup_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_MenuItemGroup_1600() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin MenuItemGroup")
       enterPage(scrollerId: "scroll", buttonId: "MenuItemGroup")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd MenuItemGroup")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"MenuItemGroup" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["MenuItemGroup" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Progress_BackgroundImage_1700
    * @tc.name： Test_EmptyAttrs_Progress_BackgroundImage_1700
    * @tc.desic：Empty_Progress_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Progress_1700() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Progress")
       enterPage(scrollerId: "scroll", buttonId: "Progress")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Progress")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Progress" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Progress" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_QRCode_BackgroundImage_1800
    * @tc.name： Test_EmptyAttrs_QRCode_BackgroundImage_1800
    * @tc.desic：Empty_QRCode_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_QRCode_1800() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin QRCode")
       enterPage(scrollerId: "scroll", buttonId: "QRCode")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd QRCode")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"QRCode" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["QRCode" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Radio_BackgroundImage_1900
    * @tc.name： Test_EmptyAttrs_Radio_BackgroundImage_1900
    * @tc.desic：Empty_Radio_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Radio_1900() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Radio")
       enterPage(scrollerId: "scroll", buttonId: "Radio")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Radio")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Radio" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Radio" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Rating_BackgroundImage_2000
    * @tc.name： Test_EmptyAttrs_Rating_BackgroundImage_2000
    * @tc.desic：Empty_Rating_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Rating_2000() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Rating")
       enterPage(scrollerId: "scroll", buttonId: "Rating")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Rating")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Rating" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Rating" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Refresh_BackgroundImage_2100
    * @tc.name： Test_EmptyAttrs_Refresh_BackgroundImage_2100
    * @tc.desic：Empty_Refresh_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Refresh_2100() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Refresh")
       enterPage(scrollerId: "scroll", buttonId: "Refresh")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Refresh")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Refresh" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Refresh" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_RichEditor_BackgroundImage_2200
    * @tc.name： Test_EmptyAttrs_RichEditor_BackgroundImage_2200
    * @tc.desic：Empty_RichEditor_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_RichEditor_2200() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin RichEditor")
       enterPage(scrollerId: "scroll", buttonId: "RichEditor")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd RichEditor")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"RichEditor" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["RichEditor" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_RowSplit_BackgroundImage_2300
    * @tc.name： Test_EmptyAttrs_RowSplit_BackgroundImage_2300
    * @tc.desic：Empty_RowSplit_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_RowSplit_2300() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin RowSplit")
       enterPage(scrollerId: "scroll", buttonId: "RowSplit")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd RowSplit")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"RowSplit" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["RowSplit" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_ScrollBar_BackgroundImage_2400
    * @tc.name： Test_EmptyAttrs_ScrollBar_BackgroundImage_2400
    * @tc.desic：Empty_ScrollBar_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_ScrollBar_2400() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin ScrollBar")
       enterPage(scrollerId: "scroll", buttonId: "ScrollBar")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd ScrollBar")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"ScrollBar" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["ScrollBar" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Search_BackgroundImage_2500
    * @tc.name： Test_EmptyAttrs_Search_BackgroundImage_2500
    * @tc.desic：Empty_Search_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Search_2500() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Search")
       enterPage(scrollerId: "scroll", buttonId: "Search")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Search")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Search" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Search" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Slider_BackgroundImage_2600
    * @tc.name： Test_EmptyAttrs_Slider_BackgroundImage_2600
    * @tc.desic：Empty_Slider_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Slider_2600() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Slider")
       enterPage(scrollerId: "scroll", buttonId: "Slider")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Slider")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Slider" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Slider" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Stepper_BackgroundImage_2700
    * @tc.name： Test_EmptyAttrs_Stepper_BackgroundImage_2700
    * @tc.desic：Empty_Stepper_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Stepper_2700() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Stepper")
       enterPage(scrollerId: "scroll", buttonId: "Stepper")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Stepper")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Stepper" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Stepper" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_StepperItem_BackgroundImage_2800
    * @tc.name： Test_EmptyAttrs_StepperItem_BackgroundImage_2800
    * @tc.desic：Empty_StepperItem_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_StepperItem_2800() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin StepperItem")
       enterPage(scrollerId: "scroll", buttonId: "StepperItem")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd StepperItem")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"StepperItem" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["StepperItem" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Text_BackgroundImage_2900
    * @tc.name： Test_EmptyAttrs_Text_BackgroundImage_2900
    * @tc.desic：Empty_Text_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Text_2900() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Text")
       enterPage(scrollerId: "scroll", buttonId: "Text")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Text")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Text" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Text" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_TextArea_BackgroundImage_3000
    * @tc.name： Test_EmptyAttrs_TextArea_BackgroundImage_3000
    * @tc.desic：Empty_TextArea_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_TextArea_3000() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin TextArea")
       enterPage(scrollerId: "scroll", buttonId: "TextArea")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd TextArea")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"TextArea" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["TextArea" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_TextClock_BackgroundImage_3100
    * @tc.name： Test_EmptyAttrs_TextClock_BackgroundImage_3100
    * @tc.desic：Empty_TextClock_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_TextClock_3100() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin TextClock")
       enterPage(scrollerId: "scroll", buttonId: "TextClock")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd TextClock")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"TextClock" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["TextClock" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_TextInput_BackgroundImage_3200
    * @tc.name： Test_EmptyAttrs_TextInput_BackgroundImage_3200
    * @tc.desic：Empty_TextInput_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_TextInput_3200() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin TextInput")
       enterPage(scrollerId: "scroll", buttonId: "TextInput")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd TextInput")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"TextInput" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["TextInput" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_TextPicker_BackgroundImage_3300
    * @tc.name： Test_EmptyAttrs_TextPicker_BackgroundImage_3300
    * @tc.desic：Empty_TextPicker_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_TextPicker_3300() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin TextPicker")
       enterPage(scrollerId: "scroll", buttonId: "TextPicker")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd TextPicker")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"TextPicker" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["TextPicker" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_TextTimer_BackgroundImage_3400
    * @tc.name： Test_EmptyAttrs_TextTimer_BackgroundImage_3400
    * @tc.desic：Empty_TextTimer_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_TextTimer_3400() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin TextTimer")
       enterPage(scrollerId: "scroll", buttonId: "TextTimer")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd TextTimer")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"TextTimer" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["TextTimer" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Toggle_BackgroundImage_3500
    * @tc.name： Test_EmptyAttrs_Toggle_BackgroundImage_3500
    * @tc.desic：Empty_Toggle_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Toggle_3500() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Toggle")
       enterPage(scrollerId: "scroll", buttonId: "Toggle")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Toggle")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Toggle" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Toggle" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Web_BackgroundImage_3600
    * @tc.name： Test_EmptyAttrs_Web_BackgroundImage_3600
    * @tc.desic：Empty_Web_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Web_3600() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Web")
       enterPage(scrollerId: "scroll", buttonId: "Web")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Web")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Web" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Web" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Select_BackgroundImage_3700
    * @tc.name： Test_EmptyAttrs_Select_BackgroundImage_3700
    * @tc.desic：Empty_Select_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Select_3700() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Select")
       enterPage(scrollerId: "scroll", buttonId: "Select")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Select")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Select" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Select" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Badge_BackgroundImage_3800
    * @tc.name： Test_EmptyAttrs_Badge_BackgroundImage_3800
    * @tc.desic：Empty_Badge_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Badge_3800() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Badge")
       enterPage(scrollerId: "scroll", buttonId: "Badge")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Badge")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Badge" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Badge" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Column_BackgroundImage_3900
    * @tc.name： Test_EmptyAttrs_Column_BackgroundImage_3900
    * @tc.desic：Empty_Column_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Column_3900() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Column")
       enterPage(scrollerId: "scroll", buttonId: "Column")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Column")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Column" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Column" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Grid_BackgroundImage_4000
    * @tc.name： Test_EmptyAttrs_Grid_BackgroundImage_4000
    * @tc.desic：Empty_Grid_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Grid_4000() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Grid")
       enterPage(scrollerId: "scroll", buttonId: "Grid")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Grid")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Grid" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Grid" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_GridItem_BackgroundImage_4100
    * @tc.name： Test_EmptyAttrs_GridItem_BackgroundImage_4100
    * @tc.desic：Empty_GridItem_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_GridItem_4100() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin GridItem")
       enterPage(scrollerId: "scroll", buttonId: "GridItem")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd GridItem")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"GridItem" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["GridItem" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_GridRow_BackgroundImage_4200
    * @tc.name： Test_EmptyAttrs_GridRow_BackgroundImage_4200
    * @tc.desic：Empty_GridRow_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_GridRow_4200() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin GridRow")
       enterPage(scrollerId: "scroll", buttonId: "GridRow")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd GridRow")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"GridRow" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["GridRow" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_GridCol_BackgroundImage_4300
    * @tc.name： Test_EmptyAttrs_GridCol_BackgroundImage_4300
    * @tc.desic：Empty_GridCol_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_GridCol_4300() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin GridCol")
       enterPage(scrollerId: "scroll", buttonId: "GridCol")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd GridCol")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"GridCol" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["GridCol" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Flex_BackgroundImage_4400
    * @tc.name： Test_EmptyAttrs_Flex_BackgroundImage_4400
    * @tc.desic：Empty_Flex_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Flex_4400() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Flex")
       enterPage(scrollerId: "scroll", buttonId: "Flex")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Flex")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Flex" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Flex" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_List_BackgroundImage_4500
    * @tc.name： Test_EmptyAttrs_List_BackgroundImage_4500
    * @tc.desic：Empty_List_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_List_4500() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin List")
       enterPage(scrollerId: "scroll", buttonId: "List")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd List")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"List" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["List" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_ListItem_BackgroundImage_4600
    * @tc.name： Test_EmptyAttrs_ListItem_BackgroundImage_4600
    * @tc.desic：Empty_ListItem_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_ListItem_4600() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin ListItem")
       enterPage(scrollerId: "scroll", buttonId: "ListItem")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd ListItem")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"ListItem" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["ListItem" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_ListItemGroup_BackgroundImage_4700
    * @tc.name： Test_EmptyAttrs_ListItemGroup_BackgroundImage_4700
    * @tc.desic：Empty_ListItemGroup_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_ListItemGroup_4700() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin ListItemGroup")
       enterPage(scrollerId: "scroll", buttonId: "ListItemGroup")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd ListItemGroup")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"ListItemGroup" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["ListItemGroup" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }


   /*
    * @tc.number：Sub_Cangjie_ArkUI_RelativeContainer_BackgroundImage_4900
    * @tc.name： Test_EmptyAttrs_RelativeContainer_BackgroundImage_4900
    * @tc.desic：Empty_RelativeContainer_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_RelativeContainer_4900() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin RelativeContainer")
       enterPage(scrollerId: "scroll", buttonId: "RelativeContainer")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd RelativeContainer")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"RelativeContainer" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["RelativeContainer" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Row_BackgroundImage_5000
    * @tc.name： Test_EmptyAttrs_Row_BackgroundImage_5000
    * @tc.desic：Empty_Row_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Row_5000() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Row")
       enterPage(scrollerId: "scroll", buttonId: "Row")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Row")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Row" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Row" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Scroll_BackgroundImage_5100
    * @tc.name： Test_EmptyAttrs_Scroll_BackgroundImage_5100
    * @tc.desic：Empty_Scroll_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Scroll_5100() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Scroll")
       enterPage(scrollerId: "scroll", buttonId: "Scroll")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Scroll")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Scroll" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Scroll" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Stack_BackgroundImage_5200
    * @tc.name： Test_EmptyAttrs_Stack_BackgroundImage_5200
    * @tc.desic：Empty_Stack_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Stack_5200() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Stack")
       enterPage(scrollerId: "scroll", buttonId: "Stack")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Stack")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Stack" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Stack" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Swiper_BackgroundImage_5300
    * @tc.name： Test_EmptyAttrs_Swiper_BackgroundImage_5300
    * @tc.desic：Empty_Swiper_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Swiper_5300() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Swiper")
       enterPage(scrollerId: "scroll", buttonId: "Swiper")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Swiper")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Swiper" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Swiper" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Tabs_BackgroundImage_5400
    * @tc.name： Test_EmptyAttrs_Tabs_BackgroundImage_5400
    * @tc.desic：Empty_Tabs_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Tabs_5400() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Tabs")
       enterPage(scrollerId: "scroll", buttonId: "Tabs")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Tabs")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Tabs" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Tabs" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_TabContent_BackgroundImage_5500
    * @tc.name： Test_EmptyAttrs_TabContent_BackgroundImage_5500
    * @tc.desic：Empty_TabContent_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_TabContent_5500() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin TabContent")
       enterPage(scrollerId: "scroll", buttonId: "TabContent")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd TabContent")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"TabContent" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["TabContent" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Circle_BackgroundImage_5600
    * @tc.name： Test_EmptyAttrs_Circle_BackgroundImage_5600
    * @tc.desic：Empty_Circle_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Circle_5600() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Circle")
       enterPage(scrollerId: "scroll", buttonId: "Circle")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Circle")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Circle" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Circle" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Line_BackgroundImage_5700
    * @tc.name： Test_EmptyAttrs_Line_BackgroundImage_5700
    * @tc.desic：Empty_Line_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Line_5700() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Line")
       enterPage(scrollerId: "scroll", buttonId: "Line")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Line")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Line" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Line" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Rect_BackgroundImage_5800
    * @tc.name： Test_EmptyAttrs_Rect_BackgroundImage_5800
    * @tc.desic：Empty_Rect_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Rect_5800() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Rect")
       enterPage(scrollerId: "scroll", buttonId: "Rect")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Rect")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Rect" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Rect" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Shape_BackgroundImage_5900
    * @tc.name： Test_EmptyAttrs_Shape_BackgroundImage_5900
    * @tc.desic：Empty_Shape_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Shape_5900() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Shape")
       enterPage(scrollerId: "scroll", buttonId: "Shape")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Shape")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Shape" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Shape" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }

   /*
    * @tc.number：Sub_Cangjie_ArkUI_Path_BackgroundImage_6100
    * @tc.name： Test_EmptyAttrs_Path_BackgroundImage_6100
    * @tc.desic：Empty_Path_BackgroundImage
    */
   @TestCase
   @Tag[APILevel22, TestLevel0]
   func Test_EmptyAttrs_BackgroundImage_Path_6100() {
       sleepFor(1.second)
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindBegin Path")
       enterPage(scrollerId: "scroll", buttonId: "Path")
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage: FindEnd Path")
       sleepFor(1.second)
       for (BackgroundImage_Prop in BackgroundImage_Prop_List) {
           Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage_Prop: ${"Path" + BackgroundImage_Prop[0]}")
           let viewPort = getInspector()["Path" + BackgroundImage_Prop[0], "backgroundImage"]
           Hilog.info(0, "cangjietest", "test", "CheckCheckViewPort: ${viewPort}")
           Hilog.info(0, "cangjietest", "test", "CheckCheckExpect: ${BackgroundImage_Prop[2]}")
           if (BackgroundImage_Prop[1] is (AppResource, ImageRepeat)) {
               @Expect(viewPort.contains(BackgroundImage_Prop[2]))
           } else if (BackgroundImage_Prop[1] is (String, ImageRepeat)) {
               @Expect(viewPort, BackgroundImage_Prop[2])
           }
       }
       Hilog.info(0, "cangjietest", "test", "CheckCheckBackgroundImage:-----------------------------------------------")
       sleepFor(2.second)
       pressBack()
   }
}
