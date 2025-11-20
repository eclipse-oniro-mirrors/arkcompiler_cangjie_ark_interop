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
class Test_ImageEffect_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_ImageEffect")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }


    /*
     * @tc.number：SUB_ACE_BASIC_Cangjie_ArkUI_003
     * @tc.name： Test_ImagineEffect_0300_Component
     * @tc.desic：backdropBlur
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ImagineEffect_0300_Component() {
        let Inspector = getInspectorByKey("Test_Text02")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_shadow = obj.get("$attrs").getOrThrow().asObject().get("shadow").getOrThrow().toString()
        @Expect(obj_shadow.contains("10.5"))
    }

    /*
     * @tc.number：SUB_ACE_BASIC_Cangjie_ArkUI_003
     * @tc.name： Test_ImagineEffect_0400_Component
     * @tc.desic：grayscale
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ImagineEffect_0400_Component() {
        let Inspector = getInspectorByKey("Test_Text03")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_grayscale = obj.get("$attrs").getOrThrow().asObject().get("grayscale").getOrThrow().toString()
        @Expect(obj_grayscale, "1")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_Cangjie_ArkUI_003
     * @tc.name： Test_ImagineEffect_0500_Component
     * @tc.desic：brightness
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ImagineEffect_0500_Component() {
        let Inspector = getInspectorByKey("Test_Text04")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_brightness = obj.get("$attrs").getOrThrow().asObject().get("brightness").getOrThrow().toString()
        @Expect(obj_brightness, "2")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_Cangjie_ArkUI_003
     * @tc.name： Test_ImagineEffect_0600_Component
     * @tc.desic：saturate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ImagineEffect_0600_Component() {
        let Inspector = getInspectorByKey("Test_Text05")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_saturate = obj.get("$attrs").getOrThrow().asObject().get("saturate").getOrThrow().toString()
        @Expect(obj_saturate, "2")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_Cangjie_ArkUI_003
     * @tc.name： Test_ImagineEffect_0700_Component
     * @tc.desic：contrast
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ImagineEffect_0700_Component() {
        let Inspector = getInspectorByKey("Test_Text06")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_contrast = obj.get("$attrs").getOrThrow().asObject().get("contrast").getOrThrow().toString()
        @Expect(obj_contrast, "2")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_Cangjie_ArkUI_003
     * @tc.name： Test_ImagineEffect_0800_Component
     * @tc.desic：invert
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ImagineEffect_0800_Component() {
        let Inspector = getInspectorByKey("Test_Text07")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_invert = obj.get("$attrs").getOrThrow().asObject().get("invert").getOrThrow().toString()
        @Expect(obj_invert, "1")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_Cangjie_ArkUI_003
     * @tc.name： Test_ImagineEffect_0900_Component
     * @tc.desic：colorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ImagineEffect_0900_Component() {
        let Inspector = getInspectorByKey("Test_Text08")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_colorBlend = obj.get("$attrs").getOrThrow().asObject().get("colorBlend").getOrThrow().toString()
        @Expect(obj_colorBlend, "\"#FFCCCCCC\"")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_Cangjie_ArkUI_003
     * @tc.name： Test_ImagineEffect_01000_Component
     * @tc.desic：colorBlend
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ImagineEffect_01000_Component() {
        let Inspector = getInspectorByKey("Test_Text09")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_colorBlend = obj.get("$attrs").getOrThrow().asObject().get("colorBlend").getOrThrow().toString()
        @Expect(obj_colorBlend, "\"#FFC11010\"")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_Cangjie_ArkUI_003
     * @tc.name： Test_ImagineEffect_01100_Component
     * @tc.desic：sepia
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ImagineEffect_01100_Component() {
        let Inspector = getInspectorByKey("Test_Text10")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_sepia = obj.get("$attrs").getOrThrow().asObject().get("sepia").getOrThrow().toString()
        @Expect(obj_sepia, "2")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_Cangjie_ArkUI_003
     * @tc.name： Test_ImagineEffect_01100_Component
     * @tc.desic：hueRotate
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ImagineEffect_01200_Component() {
        let Inspector = getInspectorByKey("Test_Text11")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_hueRotate = obj.get("$attrs").getOrThrow().asObject().get("hueRotate").getOrThrow().toString()
        @Expect(obj_hueRotate, "85.500000")
    }
}
