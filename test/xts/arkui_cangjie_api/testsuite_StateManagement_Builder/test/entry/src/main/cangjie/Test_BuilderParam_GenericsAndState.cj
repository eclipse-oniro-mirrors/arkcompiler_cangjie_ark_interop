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

@Test
class Test_BuilderParam_GenericsAndState {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(1000)
        driver.findComponent(On().id("View_BuilderParam_GenericsAndState")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_BuilderParam_GenericsAndState_0100
    * @tc.name      : Test_BuilderParam_GenericsAndState_0100
    * @tc.desc      : test UIKit BuilderParam GenericsAndState
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_BuilderParam_GenericsAndState_0100() {
        Hilog.info(0,"", "cangjietest", "Test_BuilderParam_GenericsAndState_0100 Start")
        var BuilderParam_arr = driver.findComponents(On().id("TopLevelBuilder")).getOrThrow()
        var expect_value = ["GenericsFunc Builder", "100"]
        for (i in 0..BuilderParam_arr.size) {
            var builderParamInfo = BuilderParam_arr[i].getText()
            Hilog.info(0,"", "cangjietest", "Test_BuilderParam_content: ${builderParamInfo}")
            @Expect(builderParamInfo,"${expect_value[i]}")
        }
        Hilog.info(0,"", "cangjietest", "Test_BuilderParam_GenericsAndState_0100 End")
    }
}
