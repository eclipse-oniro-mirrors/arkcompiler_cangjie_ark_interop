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
import ohos.arkui.state_macro_manage.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.arkui.state_macro_manage.r

@Test
class Test_AppStorageLink_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().id("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_AppStorageLink")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageLink_Component_0100
     * @tc.desic： before delete
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageLink_Component_0100() {
        driver.findComponent(On().id("Test_Button01")).getOrThrow().click()
        driver.findComponent(On().id("Test_Button02")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text03")).getOrThrow().getText()
        let res01 = driver.findComponent(On().id("Test_Text04")).getOrThrow().getText()
        let res02 = driver.findComponent(On().id("Test_Text05")).getOrThrow().getText()
        @Expect(res00,"true")
        @Expect(res01,"true")
        @Expect(res02,"8")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageLink_Component_0200
     * @tc.desic： delete
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageLink_Component_0200() {
        driver.findComponent(On().id("Test_Button00")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text00")).getOrThrow().getText()
        let res01 = driver.findComponent(On().id("Test_Text01")).getOrThrow().getText()
        let res02 = driver.findComponent(On().id("Test_Text02")).getOrThrow().getText()
        @Expect(res00,"false")
        @Expect(res01,"true")
        @Expect(res02,"false")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageLink_Component_0300
     * @tc.desic： keys
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageLink_Component_0300() {
        driver.findComponent(On().id("Test_Button01")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text03")).getOrThrow().getText()
        let res01 = driver.findComponent(On().id("Test_Text04")).getOrThrow().getText()
        @Expect(res00,"true")
        @Expect(res01,"false")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageLink_Component_0400
     * @tc.desic： size
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageLink_Component_0400() {
        driver.findComponent(On().id("Test_Button02")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text05")).getOrThrow().getText()
        @Expect(res00,"7")
    }

    /*
     * @tc.number：SUB_ACE_BASIC_CANGJIE_API_0002
     * @tc.name： Test_AppStorageLink_Component_0500
     * @tc.desic： clear
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_AppStorageLink_Component_0500() {
        driver.findComponent(On().id("Test_Button03")).getOrThrow().click()
        driver.findComponent(On().id("Test_Button02")).getOrThrow().click()
        let res00 = driver.findComponent(On().id("Test_Text05")).getOrThrow().getText()
        let res01 = driver.findComponent(On().id("Test_Text06")).getOrThrow().getText()
        @Expect(res00,"7")
        @Expect(res01,"false")
    }
}
