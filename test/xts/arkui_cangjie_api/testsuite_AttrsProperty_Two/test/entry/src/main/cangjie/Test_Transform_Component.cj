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
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*

@Test
class Test_Transform_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Transform")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_0100_Component
     * @tc.desic：scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_0100_Component() {
        let Inspector = getInspectorByKey("Text00")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_scale = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
        @Expect(obj_scale, "{\"x\":\"0.800000\",\"y\":\"0.800000\",\"centerX\":\"10.00vp\",\"centerY\":\"10.00vp\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_0200_Component
     * @tc.desic：rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_0200_Component() {
        let Inspector = getInspectorByKey("Text00")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_rotate = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
        @Expect(obj_rotate, "{\"x\":\"0.800000\",\"y\":\"0.800000\",\"z\":\"0.800000\",\"angle\":\"0.800000\",\"perspective\":\"0.000000\",\"centerX\":\"10.00vp\",\"centerY\":\"10.00vp\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_0300_Component
     * @tc.desic：translate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_0300_Component() {
        let Inspector = getInspectorByKey("Text00")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_translate = obj.get("$attrs").getOrThrow().asObject().get("translate").getOrThrow().toString()
        @Expect(obj_translate, "{\"x\":\"2.00vp\",\"y\":\"2.00vp\",\"z\":\"2.00vp\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_0400_Component
     * @tc.desic：scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_0400_Component() {
        let Inspector = getInspectorByKey("Text01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_scale = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
        @Expect(obj_scale, "{\"x\":\"0.800000\",\"y\":\"0.800000\",\"centerX\":\"50.00%\",\"centerY\":\"50.00%\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_0500_Component
     * @tc.desic：rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_0500_Component() {
        let Inspector = getInspectorByKey("Text01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_rotate = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
        @Expect(obj_rotate, "{\"x\":\"1.000000\",\"y\":\"1.000000\",\"z\":\"1.000000\",\"angle\":\"300.000000\",\"perspective\":\"0.000000\",\"centerX\":\"50.00%\",\"centerY\":\"50.00%\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_0600_Component
     * @tc.desic：translate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_0600_Component() {
        let Inspector = getInspectorByKey("Text01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_translate = obj.get("$attrs").getOrThrow().asObject().get("translate").getOrThrow().toString()
        @Expect(obj_translate, "{\"x\":\"2.00vp\",\"y\":\"2.00vp\",\"z\":\"2.00vp\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_0700_Component
     * @tc.desic：scale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_0700_Component() {
        let Inspector = getInspectorByKey("Text02")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_scale = obj.get("$attrs").getOrThrow().asObject().get("scale").getOrThrow().toString()
        @Expect(obj_scale, "{\"x\":\"2.000000\",\"y\":\"2.000000\",\"centerX\":\"50.00%\",\"centerY\":\"50.00%\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_0800_Component
     * @tc.desic：rotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_0800_Component() {
        let Inspector = getInspectorByKey("Text02")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_rotate = obj.get("$attrs").getOrThrow().asObject().get("rotate").getOrThrow().toString()
        @Expect(obj_rotate, "{\"x\":\"1.000000\",\"y\":\"1.000000\",\"z\":\"2.000000\",\"angle\":\"300.000000\",\"perspective\":\"0.000000\",\"centerX\":\"50.00%\",\"centerY\":\"50.00%\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_0900_Component
     * @tc.desic：translate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_0900_Component() {
        let Inspector = getInspectorByKey("Text02")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_translate = obj.get("$attrs").getOrThrow().asObject().get("translate").getOrThrow().toString()
        @Expect(obj_translate, "{\"x\":\"10.00vp\",\"y\":\"10.00vp\",\"z\":\"10.00vp\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_01200_Component
     * @tc.desic：translate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_01200_Component() {
        let Inspector = getInspectorByKey("Text03")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_translate = obj.get("$attrs").getOrThrow().asObject().get("translate").getOrThrow().toString()
        @Expect(obj_translate, "{\"x\":\"2.00vp\",\"y\":\"2.00vp\",\"z\":\"0.00vp\"}")
    }


    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_01400_Component
     * @tc.desic：translate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_01400_Component() {
        let Inspector = getInspectorByKey("Text04")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_translate = obj.get("$attrs").getOrThrow().asObject().get("translate").getOrThrow().toString()
        @Expect(obj_translate, "{\"x\":\"2.00vp\",\"y\":\"2.00vp\",\"z\":\"0.00vp\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_01500_Component
     * @tc.desic：translate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_01500_Component() {
        let Inspector = getInspectorByKey("Text05")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_translate = obj.get("$attrs").getOrThrow().asObject().get("translate").getOrThrow().toString()
        @Expect(obj_translate, "{\"x\":\"2.00vp\",\"y\":\"2.00vp\",\"z\":\"0.00vp\"}")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Trasform_01600_Component
     * @tc.desic：translate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Trasform_01600_Component() {
        let Inspector = getInspectorByKey("Text06")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_translate = obj.get("$attrs").getOrThrow().asObject().get("translate").getOrThrow().toString()
        @Expect(obj_translate, "{\"x\":\"10.00vp\",\"y\":\"0.00vp\",\"z\":\"0.00vp\"}")
    }

}
