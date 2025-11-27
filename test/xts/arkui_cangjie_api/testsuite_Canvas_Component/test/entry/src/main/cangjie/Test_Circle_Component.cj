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
internal import ohos.arkui.component.common.getInspectorByKey
import ohos.display
import std.convert.*

@Test
class Test_Circle_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        let scrollBar: Component = driver.waitForComponent(On().onType("Scroll"),5000).getOrThrow()

        scrollBar.scrollSearch(On().id("View_Circle")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_0100
    * @tc.name      : Test_Circle_Component_001
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_001() {
        let Inspector = getInspectorByKey("Circle_component")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        for (a in aar) {
            Hilog.info(0,"", "cangjietest", "Circle_component]: ${a}")
        }
        let color = obj.get("$attrs").getOrThrow().asObject().get("id").getOrThrow().toString()
        @Expect(color, "\"Circle_component\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_0200
    * @tc.name      : Test_Circle_Component_004
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_004() {
        let Inspector = getInspectorByKey("Circle_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("fill").getOrThrow().toString()

        @Expect(fill, "\"#FF317AF7\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_0300
    * @tc.name      : Test_Circle_Component_005
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_005() {
        let Inspector = getInspectorByKey("Circle_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("fillOpacity").getOrThrow().toString()

        @Expect(fill, "\"1.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_0400
    * @tc.name      : Test_Circle_Component_006
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_006() {
        let Inspector = getInspectorByKey("Circle_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("stroke").getOrThrow().toString()

        @Expect(fill, "\"#FF000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_0500
    * @tc.name      : Test_Circle_Component_007
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_007() {
        let Inspector = getInspectorByKey("Circle_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeDashArray").getOrThrow().toString()

        @Expect(fill, "[\"20.00vp\",\"20.00vp\"]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_0600
    * @tc.name      : Test_Circle_Component_008
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_008() {
        let Inspector = getInspectorByKey("Circle_component")

        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeDashOffset").getOrThrow().toString()

        @Expect(fill, "\"10.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_0700
    * @tc.name      : Test_Circle_Component_009
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_009() {
        let Inspector = getInspectorByKey("Circle_component")

        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeLineCap").getOrThrow().toString()

        @Expect(fill, "\"LineCapStyle.Round\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_0800
    * @tc.name      : Test_Circle_Component_010
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_010() {
        let Inspector = getInspectorByKey("Circle_component")

        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeLineJoin").getOrThrow().toString()

        @Expect(fill, "\"LineJoinStyle.Round\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_0900
    * @tc.name      : Test_Circle_Component_011
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_011() {
        let Inspector = getInspectorByKey("Circle_component")

        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeMiterLimit").getOrThrow().toString()

        @Expect(fill, "\"5.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_1000
    * @tc.name      : Test_Circle_Component_012
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_012() {
        let Inspector = getInspectorByKey("Circle_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeOpacity").getOrThrow().toString()

        @Expect(fill, "\"0.500000\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_1100
    * @tc.name      : Test_Circle_Component_013
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_013() {
        let Inspector = getInspectorByKey("Circle_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeWidth").getOrThrow().toString()

        let strokeWidthpx = 50.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(fill)), strokeWidthpx)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Circle_Component_1200
    * @tc.name      : Test_Circle_Component_014
    * @tc.desc      : test UIKit Circle
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Circle_Component_014() {
        let Inspector = getInspectorByKey("Circle_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("antiAlias").getOrThrow().toString()

        @Expect(fill, "\"true\"")
    }
}
