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
class Test_TextCommon_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_TextCommon")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_TextCommon_0100_Component
     * @tc.desic：fontColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextCommon_0100_Component() {
        let Inspector = getInspectorByKey("Text00")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_fontColor = obj.get("$attrs").getOrThrow().asObject().get("fontColor").getOrThrow().toString()
        @Expect(obj_fontColor,"\"#FFAFEEEE\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_TextCommon_0200_Component
     * @tc.desic：fontColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextCommon_0200_Component() {
        let Inspector = getInspectorByKey("Text01")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_fontColor = obj.get("$attrs").getOrThrow().asObject().get("fontColor").getOrThrow().toString()
        @Expect(obj_fontColor, "\"#FFC11010\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_TextCommon_0300_Component
     * @tc.desic：fontSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextCommon_0300_Component() {
        let Inspector = getInspectorByKey("Text02")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_fontSize = obj.get("$attrs").getOrThrow().asObject().get("fontSize").getOrThrow().toString()
        @Expect(obj_fontSize, "\"20.00vp\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_TextCommon_0400_Component
     * @tc.desic：fontSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextCommon_0400_Component() {
        let Inspector = getInspectorByKey("Text03")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_fontSize = obj.get("$attrs").getOrThrow().asObject().get("fontSize").getOrThrow().toString()
        @Expect(obj_fontSize, "\"10.00fp\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_TextCommon_0500_Component
     * @tc.desic：fontSize
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextCommon_0500_Component() {
        let Inspector = getInspectorByKey("Text04")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_fontSize = obj.get("$attrs").getOrThrow().asObject().get("fontSize").getOrThrow().toString()
        @Expect(obj_fontSize, "\"10.00vp\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_TextCommon_0600_Component
     * @tc.desic：fontFamily
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextCommon_0600_Component() {
        let Inspector = getInspectorByKey("Text05")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_fontSize = obj.get("$attrs").getOrThrow().asObject().get("fontFamily").getOrThrow().toString()
        @Expect(obj_fontSize, "\"sans-serif\"")
    }
}
