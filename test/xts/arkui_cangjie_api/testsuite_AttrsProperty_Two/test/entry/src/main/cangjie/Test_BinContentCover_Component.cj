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
class Test_BindContentCover_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_BindContentCover")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_BindContentCover_Component_0100
     * @tc.desic：onAppear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_BindContentCover_Component_0100() {
        driver.findComponent(On().text("transition modal 1")).getOrThrow().click()
        driver.delayMs(1000)
        let text00 = driver.findComponent(On().id("Test_text02")).getOrThrow().getText()
        @Expect(text00,"onAppear:1")
        driver.findComponent(On().text("transition modal 2")).getOrThrow().click()
        driver.delayMs(1000)
        let text01 = driver.findComponent(On().id("Test_text04")).getOrThrow().getText()
        @Expect(text01,"onAppear:2")
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_BindContentCover_Component_0200
     * @tc.desic：onDisappear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_BindContentCover_Component_0200() {
        driver.findComponent(On().text("close modal 2")).getOrThrow().click()
        driver.delayMs(1000)
        let text00 = driver.findComponent(On().id("Test_text03")).getOrThrow().getText()
        @Expect(text00,"onDisappear:1")
        driver.findComponent(On().text("close modal 1")).getOrThrow().click()
        driver.delayMs(1000)
        let text01 = driver.findComponent(On().id("Test_text01")).getOrThrow().getText()
        @Expect(text01,"onDisappear:2")
    }
}
