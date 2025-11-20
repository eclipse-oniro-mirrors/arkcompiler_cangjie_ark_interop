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
class Test_Flex_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Flex")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Flex_Component_0100
    * @tc.name      : Test_Flex_Component_001
    * @tc.desc      : test UIKit Flex
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Flex_Component_001() {
        let Inspector = getInspectorByKey("Flex_component")
        let aar = Inspector.split("useShadowBatching")
        let obj = JsonValue.fromStr(Inspector).asObject()
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "Flex_component: ${a}")
        }
        let color = obj.get("$attrs").getOrThrow().asObject().get("id").getOrThrow().toString()
        @Expect(color, "\"Flex_component\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Flex_Component_0200
    * @tc.name      : Test_Flex_Component_002
    * @tc.desc      : test UIKit Flex
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Flex_Component_002() {
        let Inspector = getInspectorByKey("Flex_component")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let constructor = obj.get("$attrs").getOrThrow().asObject().get("constructor").getOrThrow().asObject()

        let direction = constructor.get("direction").getOrThrow().toString()
        let wrap = constructor.get("wrap").getOrThrow().toString()
        let justifyContent = constructor.get("justifyContent").getOrThrow().toString()
        let alignItems = constructor.get("alignItems").getOrThrow().toString()
        let alignContent = constructor.get("alignContent").getOrThrow().toString()

        @Expect(direction, "\"FlexDirection.Row\"")
        @Expect(wrap, "\"FlexWrap.WrapReverse\"")
        @Expect(justifyContent, "\"FlexAlign.Center\"")
        @Expect(alignContent, "\"FlexAlign.Center\"")
    }
}
