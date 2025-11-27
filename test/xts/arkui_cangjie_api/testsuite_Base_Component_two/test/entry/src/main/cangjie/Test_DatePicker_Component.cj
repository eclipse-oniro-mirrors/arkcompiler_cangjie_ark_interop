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
import ohos.ui_test.*

@Test
class Test_DatePicker_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_DatePicker")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_0100
    * @tc.name      : Test_DatePicker_Component_001
    * @tc.desc      : test UIKit DatePicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_001() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        for (i in aar) {
            Hilog.info(0, "","cangjietest", "[Test_DatePicker_Component_0001] Inspector value:  ${i}")
        }
        let obj_borderStyle = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("constructor")
            .getOrThrow()
            .asObject()
            .get("start")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle, "\"2000-1-1\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_0200
    * @tc.name      : Test_DatePicker_Component_002
    * @tc.desc      : test UIKit DatePicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_002() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("constructor")
            .getOrThrow()
            .asObject()
            .get("end")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle, "\"2024-12-31\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_0300
    * @tc.name      : Test_DatePicker_Component_003
    * @tc.desc      : test UIKit DatePicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_003() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("constructor")
            .getOrThrow()
            .asObject()
            .get("selected")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle, "\"2000-7-25\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_0400
    * @tc.name      : Test_DatePicker_Component_004
    * @tc.desc      : test UIKit DatePicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_004() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle = obj.get("$attrs").getOrThrow().asObject().get("lunar").getOrThrow().toString()
        @Expect(obj_borderStyle, "\"false\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_0500
    * @tc.name      : Test_DatePicker_Component_005
    * @tc.desc      : test UIKit DatePicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_005() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF808080\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"16.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Bold\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_0600
    * @tc.name      : Test_DatePicker_Component_006
    * @tc.desc      : test UIKit DatePicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_006() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF0000FF\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"26.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Regular\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_0700
    * @tc.name      : Test_DatePicker_Component_007
    * @tc.desc      : test UIKit DatePicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_007() {
        let driver1 = Driver.create()
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        driver1.swipe(201, 571, 201, 392)
        driver1.delayMs(5000)
        let Inspector = getInspectorByKey("DatePickerBasic")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("constructor")
            .getOrThrow()
            .asObject()
            .get("selected")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle, "\"2000-7-25\"")

        let Inspector1 = getInspectorByKey("change")
        let aar1 = Inspector1.split("useShadowBatching")
        for (i in aar1) {
            Hilog.info(0, "","cangjietest", "[Test_change_Component_0001] Inspector value:  ${i}")
        }
        let obj1 = JsonValue.fromStr(Inspector1).asObject()
        let obj_borderStyle1 = obj1.get("$attrs").getOrThrow().asObject().get("content").getOrThrow().toString()
        @Expect(obj_borderStyle1 != "\"2000\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_0800
    * @tc.name      : Test_DatePicker_Component_008
    * @tc.desc      : test UIKit DatePicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_008() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic2")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF808080\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"16.00vp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Bold\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_0900
    * @tc.name      : Test_DatePicker_Component_009
    * @tc.desc      : test UIKit DatePicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_009() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic3")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF929A9F\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"16.00vp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Bold\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_1000
    * @tc.name      : Test_DatePicker_Component_0010
    * @tc.desc      : test UIKit DatePicker0
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0010() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic4")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF929A9F\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"16.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Bold\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_1100
    * @tc.name      : Test_DatePicker_Component_0011
    * @tc.desc      : test UIKit DatePicker1
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0011() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic5")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF929A9F\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"16.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Bold\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_1200
    * @tc.name      : Test_DatePicker_Component_0012
    * @tc.desc      : test UIKit DatePicker2
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0012() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic6")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF929A9F\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"16.00vp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("disappearTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Bold\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_1300
    * @tc.name      : Test_DatePicker_Component_0013
    * @tc.desc      : test UIKit DatePicker3
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0013() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic")
        let aar = Inspector.split("useShadowBatching")
        for (i in aar) {
            Hilog.info(0, "","cangjietest", "[Test_DatePicker_Component_0013] Inspector value:  ${i}")
        }
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF182431\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"18.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_1400
    * @tc.name      : Test_DatePicker_Component_0014
    * @tc.desc      : test UIKit DatePicker4
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0014() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic2")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF182431\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"18.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_1500
    * @tc.name      : Test_DatePicker_Component_0015
    * @tc.desc      : test UIKit DatePicker5
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0015() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic3")
        let aar = Inspector.split("useShadowBatching3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FFFF0000\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"18.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_1600
    * @tc.name      : Test_DatePicker_Component_0016
    * @tc.desc      : test UIKit DatePicker6
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0016() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic4")
        let aar = Inspector.split("useShadowBatching4")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FFFF0000\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"18.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_1700
    * @tc.name      : Test_DatePicker_Component_0017
    * @tc.desc      : test UIKit DatePicker7
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0017() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic5")
        let aar = Inspector.split("useShadowBatching4")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF0099FF\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"18.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_1800
    * @tc.name      : Test_DatePicker_Component_0018
    * @tc.desc      : test UIKit DatePicker8
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0018() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic6")
        let aar = Inspector.split("useShadowBatching4")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF0099FF\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"18.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("textStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Normal\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_1900
    * @tc.name      : Test_DatePicker_Component_0019
    * @tc.desc      : test UIKit DatePicker9
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0019() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic2")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF0000FF\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"26.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Regular\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_2000
    * @tc.name      : Test_DatePicker_Component_0020
    * @tc.desc      : test UIKit DatePicker0
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0020() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic3")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF0000FF\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"26.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Regular\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_2100
    * @tc.name      : Test_DatePicker_Component_0021
    * @tc.desc      : test UIKit DatePicker1
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0021() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic4")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF0000FF\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"26.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Regular\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_2200
    * @tc.name      : Test_DatePicker_Component_0022
    * @tc.desc      : test UIKit DatePicker2
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0022() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic5")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF0099FF\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"26.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Regular\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_DatePicker_Component_2300
    * @tc.name      : Test_DatePicker_Component_0023
    * @tc.desc      : test UIKit DatePicker3
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_DatePicker_Component_0023() {
        Hilog.info(0, "","cangjietest", "Test_DatePicker_Component start")
        let Inspector = getInspectorByKey("DatePickerBasic6")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_borderStyle_color = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("color")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_color, "\"#FF0099FF\"")
        let obj_borderStyle_fontsize = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("size")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontsize, "\"26.00fp\"")
        let obj_borderStyle_fontweight = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("selectedTextStyle")
            .getOrThrow()
            .asObject()
            .get("font")
            .getOrThrow()
            .asObject()
            .get("weight")
            .getOrThrow()
            .toString()
        @Expect(obj_borderStyle_fontweight, "\"FontWeight.Regular\"")
    }
}
