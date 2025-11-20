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
import ohos.display
import std.convert.*
@Test
class Test_Line_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Line")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_0100
    * @tc.name      : Test_Line_Component_0100
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_0100() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        let height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        @Expect(width, "\"200.00vp\"")
        @Expect(height, "\"150.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_0200
    * @tc.name      : Test_Line_Component_0200
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_0200() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let viewPort = obj.get("$attrs").getOrThrow().asObject().get("startPoint").getOrThrow().toString()
        @Expect(viewPort, "[50.5,50.5]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_0300
    * @tc.name      : Test_Line_Component_0300
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_0300() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let viewPort = obj.get("$attrs").getOrThrow().asObject().get("endPoint").getOrThrow().toString()
        @Expect(viewPort, "[150.5,150.5]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_0400
    * @tc.name      : Test_Line_Component_0400
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_0400() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("fill").getOrThrow().toString()
        @Expect(fill, "\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_0500
    * @tc.name      : Test_Line_Component_0500
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_0500() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("fillOpacity").getOrThrow().toString()
        @Expect(fill, "\"1.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_0600
    * @tc.name      : Test_Line_Component_0600
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_0600() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("stroke").getOrThrow().toString()
        @Expect(fill, "\"#FF317AF7\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_0700
    * @tc.name      : Test_Line_Component_0700
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_0700() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeDashArray").getOrThrow().toString()
        @Expect(fill, "[\"20.00vp\",\"20.00vp\"]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_0800
    * @tc.name      : Test_Line_Component_0800
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_0800() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeDashOffset").getOrThrow().toString()
        @Expect(fill, "\"10.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_0900
    * @tc.name      : Test_Line_Component_0900
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_0900() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeLineCap").getOrThrow().toString()
        @Expect(fill, "\"LineCapStyle.Square\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_1000
    * @tc.name      : Test_Line_Component_01000
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_01000() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeLineJoin").getOrThrow().toString()
        @Expect(fill, "\"LineJoinStyle.Miter\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_1100
    * @tc.name      : Test_Line_Component_01100
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_01100() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeMiterLimit").getOrThrow().toString()
        @Expect(fill, "\"5.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_1200
    * @tc.name      : Test_Line_Component_01200
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_01200() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeOpacity").getOrThrow().toString()
        @Expect(fill, "\"0.500000\"")
    }
    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_1300
    * @tc.name      : Test_Line_Component_01300
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_01300() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeWidth").getOrThrow().toString()
        let strokeWidthpx = 5.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(fill, strokeWidthpx.toString())
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_1400
    * @tc.name      : Test_Line_Component_01400
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_01400() {
        let Inspector = getInspectorByKey("Line_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("antiAlias").getOrThrow().toString()
        @Expect(fill, "\"false\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_1500
    * @tc.name      : Test_Line_Component_01500
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_01500() {
        let Inspector = getInspectorByKey("Line_component_01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        let height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        @Expect(width, "\"200.00vp\"")
        @Expect(height, "\"150.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_1600
    * @tc.name      : Test_Line_Component_01600
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_01600() {
        let Inspector = getInspectorByKey("Line_component_01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("fill").getOrThrow().toString()
        @Expect(fill, "\"#FF18BA73\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_1700
    * @tc.name      : Test_Line_Component_01700
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_01700() {
        let Inspector = getInspectorByKey("Line_component_01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("fillOpacity").getOrThrow().toString()
        @Expect(fill, "\"0.500000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_1800
    * @tc.name      : Test_Line_Component_01800
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_01800() {
        let Inspector = getInspectorByKey("Line_component_01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("stroke").getOrThrow().toString()
        @Expect(fill, "\"#FFD94242\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_1900
    * @tc.name      : Test_Line_Component_01900
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_01900() {
        let Inspector = getInspectorByKey("Line_component_01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeDashArray").getOrThrow().toString()
        @Expect(fill, "[\"20.00vp\",\"20.00vp\"]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_2000
    * @tc.name      : Test_Line_Component_02000
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_02000() {
        let Inspector = getInspectorByKey("Line_component_01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeDashOffset").getOrThrow().toString()
        @Expect(fill, "\"10.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_2100
    * @tc.name      : Test_Line_Component_02100
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_02100() {
        let Inspector = getInspectorByKey("Line_component_01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeOpacity").getOrThrow().toString()
        @Expect(fill, "\"0.500000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_2200
    * @tc.name      : Test_Line_Component_02200
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_02200() {
        let Inspector = getInspectorByKey("Line_component_01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeWidth").getOrThrow().toString()
        let strokeWidthpx = 5.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(fill, strokeWidthpx.toString())
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Line_Component_2300
    * @tc.name      : Test_Line_Component_02300
    * @tc.desc      : test UIKit Line
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Line_Component_02300() {
        let Inspector = getInspectorByKey("Line_component_02")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        let height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        @Expect(width, "\"300.00vp\"")
        @Expect(height, "\"200.00vp\"")
    }
}
