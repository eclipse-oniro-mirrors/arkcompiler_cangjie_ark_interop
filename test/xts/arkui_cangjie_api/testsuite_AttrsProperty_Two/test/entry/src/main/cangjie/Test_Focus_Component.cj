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
import ohos.ui_test.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.app.ability.ability_delegator_registry.{AbilityDelegatorRegistry, AbilityDelegator}

@Test
class Test_Focus_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Focus")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Focus_0100_Component
     * @tc.desic：defaultFocus and focusable
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Focus_0100_Component() {
        let Inspector = getInspectorByKey("A")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundColor, "\"#FFFF0000\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Focus_0200_Component
     * @tc.desic：tabIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Focus_0200_Component() {
        let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
        abilityDelegator.executeShellCommand("uinput -K -d 2049", timeoutSecs:3)
        abilityDelegator.executeShellCommand("uinput -K -d 2049", timeoutSecs:3)
        abilityDelegator.executeShellCommand("uinput -K -d 2049", timeoutSecs:3)
        let Inspector = getInspectorByKey("B")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundColor, "\"#FFFF0000\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Focus_0300_Component
     * @tc.desic：tabIndex
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Focus_0300_Component() {
        let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
        abilityDelegator.executeShellCommand("uinput -K -d 2049", timeoutSecs:3)
        let Inspector = getInspectorByKey("D")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundColor, "\"#FFFF0000\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Focus_0400_Component
     * @tc.desic：groupDefaultFocus
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Focus_0400_Component() {
        let abilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
        abilityDelegator.executeShellCommand("uinput -K -d 2049", timeoutSecs:3)
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("E")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundColor, "\"#FFFF0000\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Focus_0500_Component
     * @tc.desic：focusOnTouch
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Focus_0500_Component() {
        driver.findComponent(On().id("A")).getOrThrow().click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("A")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundColor, "\"#FFFF0000\"")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Focus_0600_Component
     * @tc.desic：requestFocus
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Focus_0600_Component() {
        driver.findComponent(On().id("F")).getOrThrow().click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("D")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_backgroundColor = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("backgroundColor")
            .getOrThrow()
            .toString()
        @Expect(obj_backgroundColor, "\"#FFFF0000\"")
    }
}
