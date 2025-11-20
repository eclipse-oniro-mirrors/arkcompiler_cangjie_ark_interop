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
class Test_Column_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_Column")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Column_Component_0100
    * @tc.name      : Test_Column_Component_001
    * @tc.desc      : test UIKit Column
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Column_Component_001() {
        Hilog.info(0, "","cangjietest", "[Test_Column_Component_001] start")
        // 1、获取页面中id为ColumnBasis的组件信息
        let Inspector = getInspectorByKey("ColumnBasis")
        Hilog.info(0, "","cangjietest", "[Test_Column_Component_001] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "[Test_Column_Component_001]: ${a}")
        }
        //3、读取组件信息json中的space
        let obj_space = obj.get("$attrs").getOrThrow().asObject().get("space").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Column_Component_001] space value: ${obj_space}")
        @Expect(obj_space, "\"10.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Column_Component_0200
    * @tc.name      : Test_Column_Component_002
    * @tc.desc      : test UIKit Column
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Column_Component_002() {
        Hilog.info(0, "","cangjietest", "[Test_Column_Component_002] start")
        // 1、获取页面中id为ColumnBasis的组件信息
        let Inspector = getInspectorByKey("ColumnBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的alignItems
        let obj_alignItems = obj.get("$attrs").getOrThrow().asObject().get("alignItems").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_Column_Component_002] alignItems value: ${obj_alignItems}")
        @Expect(obj_alignItems, "\"HorizontalAlign.Start\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Column_Component_0300
    * @tc.name      : Test_Column_Component_003
    * @tc.desc      : test UIKit Column
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Column_Component_003() {
        Hilog.info(0, "","cangjietest", "[Test_Column_Component_003] start")
        // 1、获取页面中id为ColumnBasis的组件信息
        let Inspector = getInspectorByKey("ColumnBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的justifyContent
        let obj_justifyContent = obj
            .get("$attrs")
            .getOrThrow()
            .asObject()
            .get("justifyContent")
            .getOrThrow()
            .toString()
        Hilog.info(0, "","cangjietest", "[Test_Column_Component_003] justifyContent select: ${obj_justifyContent}")
        @Expect(obj_justifyContent, "\"FlexAlign.Center\"")
    }
}
