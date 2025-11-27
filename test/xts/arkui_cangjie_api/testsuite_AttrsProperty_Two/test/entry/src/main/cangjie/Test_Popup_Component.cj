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
class Test_Popup_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Popup")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Popup_0100_Component
     * @tc.desic：Popup
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Popup_0100_Component() {
        driver.findComponent(On().id("Test_Button00")).getOrThrow().click()
        driver.delayMs(1000)
        let res00 = driver.findComponent(On().id("Test_Text00")).getOrThrow().getText()
        @Expect(res00, "true")
        driver.findComponent(On().text("OK")).getOrThrow().click()
        driver.delayMs(1000)
        let res01 = driver.findComponent(On().id("Test_Text00")).getOrThrow().getText()
        @Expect(res01, "false")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_Popup_0200_Component
     * @tc.desic：Popup
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Popup_0200_Component() {
        driver.findComponent(On().id("Test_Button01")).getOrThrow().click()
        driver.delayMs(1000)
        let res00 = driver.findComponent(On().id("Test_Text01")).getOrThrow().getText()
        @Expect(res00, "true")
        driver.findComponent(On().id("Test_Button01")).getOrThrow().click()
        driver.delayMs(1000)
        let res01 = driver.findComponent(On().id("Test_Text01")).getOrThrow().getText()
        @Expect(res01, "false")
    }
}
