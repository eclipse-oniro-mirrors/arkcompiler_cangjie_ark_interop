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
class Test_ShapeCropping_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_ShapeCropping")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：SUB_ACE_AttrsProperty_Cangjie_ArkUI_001
     * @tc.name： Test_ShapeCropping_0100_Component
     * @tc.desic：clip
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ShapeCropping_0100_Component() {
        let Inspector = getInspectorByKey("Test_Row")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let obj_contrast = obj.get("$attrs").getOrThrow().asObject().get("clip").getOrThrow().toString()
        @Expect(obj_contrast, "\"true\"")
    }
}
