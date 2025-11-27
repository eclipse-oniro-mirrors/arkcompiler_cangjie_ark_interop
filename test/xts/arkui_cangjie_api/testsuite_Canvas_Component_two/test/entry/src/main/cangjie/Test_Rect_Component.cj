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
class Test_Rect_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Rect")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_0100
    * @tc.name      : Test_Rect_Component_0100
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_0100() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        let height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        @Expect(width, "\"100.00vp\"")
        @Expect(height, "\"100.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_0200
    * @tc.name      : Test_Rect_Component_0200
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_0200() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let viewPort = obj.get("$attrs").getOrThrow().asObject().get("radiusWidth").getOrThrow().toString()
        let radiusWidthpx = 40.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(viewPort)), radiusWidthpx)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_0300
    * @tc.name      : Test_Rect_Component_0300
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_0300() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let viewPort = obj.get("$attrs").getOrThrow().asObject().get("radiusHeight").getOrThrow().toString()
        let radiusHeightpx = 20.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(viewPort)), radiusHeightpx)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_0400
    * @tc.name      : Test_Rect_Component_0400
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_0400() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("fill").getOrThrow().toString()
        @Expect(fill, "\"#FF000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_0500
    * @tc.name      : Test_Rect_Component_0500
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_0500() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("fillOpacity").getOrThrow().toString()
        @Expect(fill, "\"1.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_0600
    * @tc.name      : Test_Rect_Component_0600
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_0600() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("stroke").getOrThrow().toString()
        @Expect(fill, "\"#FF0F0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_0700
    * @tc.name      : Test_Rect_Component_0700
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_0700() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeDashArray").getOrThrow().toString()
        @Expect(fill, "[\"20.00vp\",\"20.00vp\"]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_0800
    * @tc.name      : Test_Rect_Component_0800
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_0800() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeDashOffset").getOrThrow().toString()
        @Expect(fill, "\"10.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_0900
    * @tc.name      : Test_Rect_Component_0900
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_0900() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeMiterLimit").getOrThrow().toString()
        @Expect(fill, "\"5.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_1000
    * @tc.name      : Test_Rect_Component_01000
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_01000() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeOpacity").getOrThrow().toString()
        @Expect(fill, "\"1.000000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_1100
    * @tc.name      : Test_Rect_Component_01100
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_01100() {
        let Inspector = getInspectorByKey("Rect_component1")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeWidth").getOrThrow().toString()
        let radiusWidthpx = 50.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(fill)), radiusWidthpx)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_1200
    * @tc.name      : Test_Rect_Component_01200
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_01200() {
        let Inspector = getInspectorByKey("Rect_component")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        let height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        @Expect(width, "\"100.00vp\"")
        @Expect(height, "\"100.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_1300
    * @tc.name      : Test_Rect_Component_01300
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_01300() {
        let Inspector = getInspectorByKey("Rect_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let viewPort = obj.get("$attrs").getOrThrow().asObject().get("radiusWidth").getOrThrow().toString()
        let radiusHeightpx = 40.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(viewPort)), radiusHeightpx)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_1400
    * @tc.name      : Test_Rect_Component_01400
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_01400() {
        let Inspector = getInspectorByKey("Rect_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let viewPort = obj.get("$attrs").getOrThrow().asObject().get("radiusHeight").getOrThrow().toString()
        let radiusHeightpx = 20.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(viewPort)), radiusHeightpx)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_1500
    * @tc.name      : Test_Rect_Component_01500
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_01500() {
        let Inspector = getInspectorByKey("Rect_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("fillOpacity").getOrThrow().toString()
        @Expect(fill, "\"0.500000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_1600
    * @tc.name      : Test_Rect_Component_01600
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_01600() {
        let Inspector = getInspectorByKey("Rect_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("stroke").getOrThrow().toString()
        @Expect(fill, "\"#FFFFFFFF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_1700
    * @tc.name      : Test_Rect_Component_01700
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_01700() {
        let Inspector = getInspectorByKey("Rect_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeDashArray").getOrThrow().toString()
        @Expect(fill, "[\"20.00vp\",\"20.00vp\"]")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_1800
    * @tc.name      : Test_Rect_Component_01800
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_01800() {
        let Inspector = getInspectorByKey("Rect_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeDashOffset").getOrThrow().toString()
        @Expect(fill, "\"10.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_1900
    * @tc.name      : Test_Rect_Component_01900
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_01900() {
        let Inspector = getInspectorByKey("Rect_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeWidth").getOrThrow().toString()
        let radiusHeightpx = 50.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(fill)), radiusHeightpx)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_2000
    * @tc.name      : Test_Rect_Component_02000
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_02000() {
        let Inspector = getInspectorByKey("Rect_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("antiAlias").getOrThrow().toString()
        @Expect(fill, "\"false\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_2100
    * @tc.name      : Test_Rect_Component_02100
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_02100() {
        let Inspector = getInspectorByKey("Rect_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("fill").getOrThrow().toString()
        @Expect(fill, "\"#FFD94242\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_2200
    * @tc.name      : Test_Rect_Component_02200
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_02200() {
        let Inspector = getInspectorByKey("Rect_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let fill = obj.get("$attrs").getOrThrow().asObject().get("strokeOpacity").getOrThrow().toString()
        @Expect(fill, "\"0.500000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_2300
    * @tc.name      : Test_Rect_Component_02300
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_02300() {
        let Inspector = getInspectorByKey("Rect_component2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let radiusWidth = obj.get("$attrs").getOrThrow().asObject().get("radiusWidth").getOrThrow().toString()
        let radiusHeight = obj.get("$attrs").getOrThrow().asObject().get("radiusHeight").getOrThrow().toString()
        let radiusWidthpx = 20.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(radiusWidth)), radiusWidthpx)

        let radiusHeightpx = 20.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(radiusHeight)), radiusHeightpx)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_2400
    * @tc.name      : Test_Rect_Component_02400
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_02400() {
        let Inspector = getInspectorByKey("Rect_component3")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let radiusWidth = obj.get("$attrs").getOrThrow().asObject().get("radiusWidth").getOrThrow().toString()
        let radiusHeight = obj.get("$attrs").getOrThrow().asObject().get("radiusHeight").getOrThrow().toString()
        let radiusWidthpx = 20.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(radiusWidth)), radiusWidthpx)

        let radiusHeightpx = 20.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(radiusHeight)), radiusHeightpx)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_2500
    * @tc.name      : Test_Rect_Component_02500
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_02500() {
        let Inspector = getInspectorByKey("Rect_component4")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let radiusWidth = obj.get("$attrs").getOrThrow().asObject().get("radiusWidth").getOrThrow().toString()
        let radiusHeight = obj.get("$attrs").getOrThrow().asObject().get("radiusHeight").getOrThrow().toString()
        let radiusWidthpx = 20.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(radiusWidth)), radiusWidthpx)

        let radiusHeightpx = 20.0 * display
            .getDefaultDisplaySync()
            .densityPixels
        @Expect(Float32(Int64.parse(radiusHeight)), radiusHeightpx)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Rect_Component_2600
    * @tc.name      : Test_Rect_Component_02600
    * @tc.desc      : test UIKit Rect
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Rect_Component_02600() {
        let Inspector = getInspectorByKey("Rect_component2")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let width = obj.get("$attrs").getOrThrow().asObject().get("width").getOrThrow().toString()
        let height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        @Expect(width, "\"100.00vp\"")
        @Expect(height, "\"100.00vp\"")
    }
}
