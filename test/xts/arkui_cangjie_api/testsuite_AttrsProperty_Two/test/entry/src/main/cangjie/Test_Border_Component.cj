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
class Test_Border_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Border")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Border_Component_0100
     * @tc.desic：border
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Border_Component_0100() {
        let Border = getInspectorByKey("test00")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_border = obj.get("$attrs").getOrThrow().asObject().get("border").getOrThrow().toString()
        @Expect(obj_border,"\"{\\\"style\\\":\\\"BorderStyle.Solid\\\",\\\"color\\\":\\\"#FFC11010\\\",\\\"width\\\":\\\"5.00vp\\\",\\\"radius\\\":\\\"5.00vp\\\",\\\"dashGap\\\":\\\"-1.00px\\\",\\\"dashWidth\\\":\\\"-1.00px\\\"}\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Border_Component_0200
     * @tc.desic：borderWidth
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Border_Component_0200() {
        let Border = getInspectorByKey("test01")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_borderWidth = obj.get("$attrs").getOrThrow().asObject().get("borderWidth").getOrThrow().toString()
        @Expect(obj_borderWidth,"\"10.00vp\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Border_Component_0300
     * @tc.desic：borderRadius
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Border_Component_0300() {
        let Border = getInspectorByKey("test01")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_borderRadius = obj.get("$attrs").getOrThrow().asObject().get("borderRadius").getOrThrow().toString()
        @Expect(obj_borderRadius,"\"5.00vp\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Border_Component_0400
     * @tc.desic：borderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Border_Component_0400() {
        let Border = getInspectorByKey("test01")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_borderColor = obj.get("$attrs").getOrThrow().asObject().get("borderColor").getOrThrow().toString()
        @Expect(obj_borderColor,"\"#FF008000\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Border_Component_0500
     * @tc.desic：borderWidth and borderRadius,borderColor
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Border_Component_0500() {
        let Border = getInspectorByKey("test01")
        let obj = JsonValue.fromStr(Border).asObject()
        let obj_borderWidth = obj.get("$attrs").getOrThrow().asObject().get("borderWidth").getOrThrow().toString()
        let obj_borderRadius = obj.get("$attrs").getOrThrow().asObject().get("borderRadius").getOrThrow().toString()
        let obj_borderColor = obj.get("$attrs").getOrThrow().asObject().get("borderColor").getOrThrow().toString()
        @Expect(obj_borderWidth,"\"10.00vp\"")
        @Expect(obj_borderRadius,"\"5.00vp\"")
        @Expect(obj_borderColor,"\"#FF008000\"")
    }
}
