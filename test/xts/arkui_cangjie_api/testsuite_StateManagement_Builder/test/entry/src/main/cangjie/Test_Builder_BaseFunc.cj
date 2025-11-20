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
internal import ohos.arkui.component.common.getInspectorByKey

@Test
class Test_Builder_BaseFunc {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(1000)
        driver.findComponent(On().id("View_Builder_BaseFunc")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Builder_BaseFunc_0100
    * @tc.name      : Test_Builder_BaseFunc_0100
    * @tc.desc      : test UIKit Builder
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Builder_BaseFunc_0100() {
        Hilog.info(0,"", "cangjietest", "Test_Builder_BaseFunc_0100 Start")
        let Inspector = getInspectorByKey("TopLevelBuilder")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "Test_Builder_BaseFunc_0100 content:  ${attrs_content}")
        @Expect(attrs_content,"\"BaseFunc Builder In TopLevel\"")
        Hilog.info(0,"", "cangjietest", "Test_Builder_BaseFunc_0100 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Builder_BaseFunc_0200
    * @tc.name      : Test_Builder_BaseFunc_0200
    * @tc.desc      : test UIKit Builder
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Builder_BaseFunc_0200() {
        Hilog.info(0,"", "cangjietest", "Test_Builder_BaseFunc_0200 Start")
        let Inspector = getInspectorByKey("ClassLevelBuilder")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "Test_Builder_BaseFunc_0200 content:  ${attrs_content}")
        @Expect(attrs_content,"\"BaseFunc Builder In ClassLevel\"")
        Hilog.info(0,"", "cangjietest", "Test_Builder_BaseFunc_0200 End")
    }
}
