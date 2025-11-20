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
class Test_QRCode_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_QRCode")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_QRCode_Component_0100
    * @tc.name      : Test_QRCode_Component_001
    * @tc.desc      : test UIKit QRCode
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_QRCode_Component_001() {
        Hilog.info(0, "","cangjietest", "[Test_QRCode_Component_001] start")
        // 1、获取页面中id为QRCodeBasis的组件信息
        let Inspector = getInspectorByKey("QRCodeBasis")
        Hilog.info(0, "","cangjietest", "[Test_QRCode_Component_001] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "[Test_QRCode_Component_001]: ${a}")
        }
        //3、读取组件信息json中的value
        let obj_value = obj.get("$attrs").getOrThrow().asObject().get("value").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_QRCode_Component_001] value value: ${obj_value}")
        @Expect(obj_value, "\"hello world\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_QRCode_Component_0200
    * @tc.name      : Test_QRCode_Component_002
    * @tc.desc      : test UIKit QRCode
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_QRCode_Component_002() {
        Hilog.info(0, "","cangjietest", "[Test_QRCode_Component_002] start")
        // 1、获取页面中id为QRCodeBasis的组件信息
        let Inspector = getInspectorByKey("QRCodeBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的color
        let obj_color = obj.get("$attrs").getOrThrow().asObject().get("color").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_QRCode_Component_002] color value: ${obj_color}")
        @Expect(obj_color, "\"#FFB2C2D4\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_QRCode_Component_0300
    * @tc.name      : Test_QRCode_Component_003
    * @tc.desc      : test UIKit QRCode
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_QRCode_Component_003() {
        Hilog.info(0, "","cangjietest", "[Test_QRCode_Component_003] start")
        // 1、获取页面中id为QRCodeBasis的组件信息
        let Inspector = getInspectorByKey("QRCodeBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的backgroundColor
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_QRCode_Component_003] backgroundColor value: ${obj_backgroundColor}")
        @Expect(obj_backgroundColor, "\"#FF9370DB\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_QRCode_Component_0400
    * @tc.name      : Test_QRCode_Component_004
    * @tc.desc      : test UIKit QRCode
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_QRCode_Component_004() {
        Hilog.info(0, "","cangjietest", "[Test_QRCode_Component_004] start")
        // 1、获取页面中id为QRCodeBasis的组件信息
        let Inspector = getInspectorByKey("QRCodeBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的opacity
        let obj_opacity = obj.get("$attrs").getOrThrow().asObject().get("opacity").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_QRCode_Component_004] opacity value: ${obj_opacity}")
        @Expect(obj_opacity, "0.500000")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_QRCode_Component_0500
    * @tc.name      : Test_QRCode_Component_005
    * @tc.desc      : test UIKit QRCode
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_QRCode_Component_005() {
        // 1、获取页面中id为QRCodeBasis的组件信息
        let Inspector = getInspectorByKey("QRCodeBasis2")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的color
        let obj_color = obj.get("$attrs").getOrThrow().asObject().get("color").getOrThrow().toString()
        @Expect(obj_color, "\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_QRCode_Component_0600
    * @tc.name      : Test_QRCode_Component_006
    * @tc.desc      : test UIKit QRCode
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_QRCode_Component_006() {
        // 1、获取页面中id为QRCodeBasis的组件信息
        let Inspector = getInspectorByKey("QRCodeBasis3")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的color
        let obj_color = obj.get("$attrs").getOrThrow().asObject().get("color").getOrThrow().toString()
        @Expect(obj_color, "\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_QRCode_Component_0700
    * @tc.name      : Test_QRCode_Component_007
    * @tc.desc      : test UIKit QRCode
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_QRCode_Component_007() {
        // 1、获取页面中id为QRCodeBasis的组件信息
        let Inspector = getInspectorByKey("QRCodeBasis2")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的backgroundColor
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundColor, "\"#FF0000FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_QRCode_Component_0800
    * @tc.name      : Test_QRCode_Component_008
    * @tc.desc      : test UIKit QRCode
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_QRCode_Component_008() {
        // 1、获取页面中id为QRCodeBasis的组件信息
        let Inspector = getInspectorByKey("QRCodeBasis3")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的backgroundColor
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundColor, "\"#FF0099FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_QRCode_Component_0900
    * @tc.name      : Test_QRCode_Component_009
    * @tc.desc      : test UIKit QRCode
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_QRCode_Component_009() {
        // 1、获取页面中id为QRCodeBasis的组件信息
        let Inspector = getInspectorByKey("QRCodeBasis2")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的opacity
        let obj_opacity = obj.get("$attrs").getOrThrow().asObject().get("opacity").getOrThrow().toString()
        @Expect(obj_opacity, "1")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_QRCode_Component_1000
    * @tc.name      : Test_QRCode_Component_0010
    * @tc.desc      : test UIKit QRCode0
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_QRCode_Component_0010() {
        // 1、获取页面中id为QRCodeBasis的组件信息
        let Inspector = getInspectorByKey("QRCodeBasis3")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的opacity
        let obj_opacity = obj.get("$attrs").getOrThrow().asObject().get("opacity").getOrThrow().toString()
        @Expect(obj_opacity, "0.200000")
    }
}
