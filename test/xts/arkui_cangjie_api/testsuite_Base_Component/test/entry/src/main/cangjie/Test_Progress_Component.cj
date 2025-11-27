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
class Test_Progress_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Progress")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Progress_Component_0100
    * @tc.name      : Test_Progress_Component_001
    * @tc.desc      : test UIKit Progress
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Progress_Component_001() {
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_001] start")
        // 1、获取页面中id为LinearProgressBasis1的组件信息
        let Inspector = getInspectorByKey("LinearProgressBasis1")
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_001] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_001]: ${a}")
        }
        //3、读取组件信息json中的value
        let obj_value = obj.get("$attrs").getOrThrow().asObject().get("value").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_001] value value: ${obj_value}")
        @Expect(obj_value, "\"10.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Progress_Component_0200
    * @tc.name      : Test_Progress_Component_002
    * @tc.desc      : test UIKit Progress
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Progress_Component_002() {
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_002] start")
        // 1、获取页面中id为LinearProgressBasis2的组件信息
        let Inspector = getInspectorByKey("LinearProgressBasis2")
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_002] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_002]: ${a}")
        }
        //3、读取组件信息json中的value
        let obj_value = obj.get("$attrs").getOrThrow().asObject().get("value").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_002] value value: ${obj_value}")
        @Expect(obj_value, "\"50.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Progress_Component_0300
    * @tc.name      : Test_Progress_Component_003
    * @tc.desc      : test UIKit Progress
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Progress_Component_003() {
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_003] start")
        // 1、获取页面中id为LinearProgressBasis2的组件信息
        let Inspector = getInspectorByKey("LinearProgressBasis2")
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_003] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_003]: ${a}")
        }
        //3、读取组件信息json中的total
        let obj_total = obj.get("$attrs").getOrThrow().asObject().get("total").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_003] total value: ${obj_total}")
        @Expect(obj_total, "\"150.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Progress_Component_0400
    * @tc.name      : Test_Progress_Component_004
    * @tc.desc      : test UIKit Progress
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Progress_Component_004() {
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_004] start")
        // 1、获取页面中id为LinearProgressBasis2的组件信息
        let Inspector = getInspectorByKey("LinearProgressBasis2")
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_004] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_004]: ${a}")
        }
        //3、读取组件信息json中的type
        let obj_type = obj.get("$attrs").getOrThrow().asObject().get("type").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_004] type value: ${obj_type}")
        @Expect(obj_type, "\"ProgressStyle.Linear\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Progress_Component_0500
    * @tc.name      : Test_Progress_Component_005
    * @tc.desc      : test UIKit Progress
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Progress_Component_005() {
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_005] start")
        // 1、获取页面中id为LinearProgressBasis2的组件信息
        let Inspector = getInspectorByKey("LinearProgressBasis2")
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_005] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_005]: ${a}")
        }
        //3、读取组件信息json中的color
        let obj_color = obj.get("$attrs").getOrThrow().asObject().get("color").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_005] color value: ${obj_color}")
        @Expect(obj_color, "\"#6572B513\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Progress_Component_0600
    * @tc.name      : Test_Progress_Component_006
    * @tc.desc      : test UIKit Progress
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Progress_Component_006() {
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_006] start")
        // 1、获取页面中id为EclipseProgressBasis的组件信息
        let Inspector = getInspectorByKey("EclipseProgressBasis")
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_006] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_006]: ${a}")
        }
        //3、读取组件信息json中的type
        let obj_type = obj.get("$attrs").getOrThrow().asObject().get("type").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_006] type value: ${obj_type}")
        @Expect(obj_type, "\"ProgressStyle.Eclipse\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Progress_Component_0700
    * @tc.name      : Test_Progress_Component_007
    * @tc.desc      : test UIKit Progress
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Progress_Component_007() {
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_007] start")
        // 1、获取页面中id为ScaleRingProgressBasis的组件信息
        let Inspector = getInspectorByKey("ScaleRingProgressBasis")
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_007] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_007]: ${a}")
        }
        //3、读取组件信息json中的type
        let obj_type = obj.get("$attrs").getOrThrow().asObject().get("type").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_007] type value: ${obj_type}")
        @Expect(obj_type, "\"ProgressStyle.ScaleRing\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Progress_Component_0800
    * @tc.name      : Test_Progress_Component_008
    * @tc.desc      : test UIKit Progress
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Progress_Component_008() {
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_008] start")
        // 1、获取页面中id为RingProgressBasis的组件信息
        let Inspector = getInspectorByKey("RingProgressBasis")
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_008] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_008]: ${a}")
        }
        //3、读取组件信息json中的type
        let obj_type = obj.get("$attrs").getOrThrow().asObject().get("type").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_008] type value: ${obj_type}")
        @Expect(obj_type, "\"ProgressStyle.Ring\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Progress_Component_0900
    * @tc.name      : Test_Progress_Component_009
    * @tc.desc      : test UIKit Progress
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Progress_Component_009() {
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_009] start")
        // 1、获取页面中id为CapsuleProgressBasis的组件信息
        let Inspector = getInspectorByKey("CapsuleProgressBasis")
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_009] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_009]: ${a}")
        }
        //3、读取组件信息json中的type
        let obj_type = obj.get("$attrs").getOrThrow().asObject().get("type").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_009] type value: ${obj_type}")
        @Expect(obj_type, "\"ProgressStyle.Capsule\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Progress_Component_1000
    * @tc.name      : Test_Progress_Component_010
    * @tc.desc      : test UIKit Progress
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Progress_Component_010() {
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_010] start")
        // 1、获取页面中id为ScaleRingProgressBasis的组件信息
        let Inspector = getInspectorByKey("ScaleRingProgressBasis")
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_010] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_010]: ${a}")
        }
        //3、读取组件信息json中的style
        let obj_style = obj.get("$attrs").getOrThrow().asObject().get("style").getOrThrow().toString()
        Hilog.info(0,"",   "cangjietest", "[Test_Progress_Component_010] obj_style value: ${obj_style}")
        @Expect(obj_style.contains("{\\\"strokeWidth\\\":\\\"15.00vp\\\",\\\"scaleCount\\\":\\\"15\\\",\\\"scaleWidth\\\":\\\"5.00vp\\\"}"))
    }
}
