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
class Test_onTouch_Event {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_onTouchEvent")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_BASIC_ETS_API_0002
     * @tc.name： Test_onClick_Event_001
     * @tc.desic：onClick_Event
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_onClick_Event_001() {
        let text1 = driver.findComponent(On().id("text1"))
        let text2 = driver.findComponent(On().id("text2"))
        let content1 = text1.getOrThrow().getText()
        let content2 = text2.getOrThrow().getText()
        @Expect(content1,"")
        @Expect(content2,"0")
        let button = driver.findComponent(On().id("onTouchEvent"))
        button.getOrThrow().click()
        driver.delayMs(500)
        let content3 = text1.getOrThrow().getText()
        let content4 = text2.getOrThrow().getText()
        @Expect(content3.size!=0)
        @Expect(content4.size>1)
    }
}
