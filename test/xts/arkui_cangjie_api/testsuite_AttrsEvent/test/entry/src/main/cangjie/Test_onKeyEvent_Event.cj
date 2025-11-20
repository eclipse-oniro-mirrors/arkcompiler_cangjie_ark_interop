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
class Test_onKeyEvent_Event {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_onKeyEvent")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }
    
    /*
     * @tc.number：SUB_ACE_BASIC_ETS_API_0002
     * @tc.name： Test_onKeyEvent_Event_003
     * @tc.desic：onKeyEvent_Event
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_onKeyEvent_Event_003() {
        let text = driver.findComponent(On().id("text3"))
        driver.delayMs(200)
        let content2 = text.getOrThrow().getText()
        @Expect(content2.size>=0)
    }

    /*
     * @tc.number：SUB_ACE_BASIC_ETS_API_0002
     * @tc.name： Test_onKeyEvent_Event_004
     * @tc.desic：onKeyEvent_Event
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_onKeyEvent_Event_004() {
        let text = driver.findComponent(On().id("text4"))
        driver.delayMs(200)
        let content2 = text.getOrThrow().getText()
        @Expect(content2.size>0)
    }

    /*
     * @tc.number：SUB_ACE_BASIC_ETS_API_0002
     * @tc.name： Test_onKeyEvent_Event_005
     * @tc.desic：onKeyEvent_Event
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_onKeyEvent_Event_005() {
        let text = driver.findComponent(On().id("text5"))
        driver.delayMs(200)
        let content2 = text.getOrThrow().getText()
        @Expect(content2.size>0)
    }

    /*
     * @tc.number：SUB_ACE_BASIC_ETS_API_0002
     * @tc.name： Test_onKeyEvent_Event_006
     * @tc.desic：onKeyEvent_Event
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_onKeyEvent_Event_006() {
        let text = driver.findComponent(On().id("text6"))
        driver.delayMs(200)
        let content2 = text.getOrThrow().getText()
        @Expect(content2.size>0)
    }
}
