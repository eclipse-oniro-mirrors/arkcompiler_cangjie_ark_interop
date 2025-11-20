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
import ohos.display.*
import std.convert.*

@Test
class Test_Canvas_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Canvas")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Canvas_Component_0100
    * @tc.name      : Test_Canvas_Component_001
    * @tc.desc      : test UIKit Canvas
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Canvas_Component_001() {
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_001] start")
        // 1、获取页面中id为CanvasBasis的组件信息
        let Inspector = getInspectorByKey("CanvasBasis")
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_001] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_001]: ${a}")
        }
        //3、读取组件信息json中的width
        let obj_width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_001] width value: ${obj_width}")
        @Expect(obj_width, "\"100.00%\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Canvas_Component_0200
    * @tc.name      : Test_Canvas_Component_002
    * @tc.desc      : test UIKit Canvas
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Canvas_Component_002() {
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_002] start")
        // 1、获取页面中id为CanvasBasis的组件信息
        let Inspector = getInspectorByKey("CanvasBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的height
        let obj_height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_002] height value: ${obj_height}")
        @Expect(obj_height, "\"100.00%\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Canvas_Component_0300
    * @tc.name      : Test_Canvas_Component_003
    * @tc.desc      : test UIKit Canvas
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Canvas_Component_003() {
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_003] start")
        // 1、获取页面中id为CanvasBasis的组件信息
        let Inspector = getInspectorByKey("CanvasBasis")
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
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_003] backgroundColor value: ${obj_backgroundColor}")
        @Expect(obj_backgroundColor, "\"#FFDDA0DD\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Canvas_Component_0400
    * @tc.name      : Test_Canvas_Component_004
    * @tc.desc      : test UIKit Canvas
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Canvas_Component_004() {
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_004] start")
        // 1、获取页面中id为CanvasBasis的组件信息
        let Inspector = getInspectorByKey("CanvasBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的position
        let obj_position = obj.get("$attrs").getOrThrow().asObject().get("position").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_004] position value: ${obj_position}")
        @Expect(obj_position, "{\"x\":\"3.00vp\",\"y\":\"5.00vp\"}")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Canvas_Component_0500
    * @tc.name      : Test_Canvas_Component_005
    * @tc.desc      : test UIKit Canvas
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Canvas_Component_005() {
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_005] start")
        // 1、获取页面中id为CanvasBasis的组件信息
        let Inspector = getInspectorByKey("CanvasBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的align
        let obj_align = obj.get("$attrs").getOrThrow().asObject().get("align").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_005] align value: ${obj_align}")
        @Expect(obj_align, "\"Alignment.Center\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Canvas_Component_0600
    * @tc.name      : Test_Canvas_Component_006
    * @tc.desc      : test UIKit Canvas
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Canvas_Component_006() {
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_006] start")
        // 1、获取页面中id为CanvasBasis的组件信息
        let Inspector = getInspectorByKey("CanvasBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的$type
        let obj_type = obj.get("$type").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "[Test_Canvas_Component_006] type value: ${obj_type}")
        @Expect(obj_type, "\"Canvas\"")
    }
}
