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
class Test_GridItem_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }
    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        driver.delayMs(3000)
        scrollBar.scrollSearch(On().id("View_GridItem")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_GridItem_Component_0100
    * @tc.name      : Test_GridItem_Component_001
    * @tc.desc      : test UIKit GridItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_GridItem_Component_001() {
        Hilog.info(0, "","cangjietest", "[Test_GridItem_Component_001] start")
        // 1、获取页面中id为GridItemBasis的组件信息
        let Inspector = getInspectorByKey("GridItemBasis")
        Hilog.info(0, "","cangjietest", "[Test_GridItem_Component_001] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "[Test_GridItem_Component_001]: ${a}")
        }
        //3、读取组件信息json中的rowStart
        let obj_rowStart = obj.get("$attrs").getOrThrow().asObject().get("rowStart").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_GridItem_Component_001] rowStart value: ${obj_rowStart}")
        @Expect(obj_rowStart, "\"1\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_GridItem_Component_0200
    * @tc.name      : Test_GridItem_Component_002
    * @tc.desc      : test UIKit GridItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_GridItem_Component_002() {
        Hilog.info(0, "","cangjietest", "[Test_GridItem_Component_002] start")
        // 1、获取页面中id为GridItemBasis的组件信息
        let Inspector = getInspectorByKey("GridItemBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的rowEnd
        let obj_rowEnd = obj.get("$attrs").getOrThrow().asObject().get("rowEnd").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_GridItem_Component_002] rowEnd value: ${obj_rowEnd}")
        @Expect(obj_rowEnd, "\"4\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_GridItem_Component_0300
    * @tc.name      : Test_GridItem_Component_003
    * @tc.desc      : test UIKit GridItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_GridItem_Component_003() {
        Hilog.info(0, "","cangjietest", "[Test_GridItem_Component_003] start")
        // 1、获取页面中id为GridItemBasis的组件信息
        let Inspector = getInspectorByKey("GridItemBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的columnStart
        let obj_columnStart = obj.get("$attrs").getOrThrow().asObject().get("columnStart").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_GridItem_Component_003] columnStart select: ${obj_columnStart}")
        @Expect(obj_columnStart, "\"1\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_GridItem_Component_0400
    * @tc.name      : Test_GridItem_Component_004
    * @tc.desc      : test UIKit GridItem
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_GridItem_Component_004() {
        Hilog.info(0, "","cangjietest", "[Test_GridItem_Component_004] start")
        // 1、获取页面中id为GridItemBasis的组件信息
        let Inspector = getInspectorByKey("GridItemBasis1")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的columnEnd
        let obj_columnEnd = obj.get("$attrs").getOrThrow().asObject().get("columnEnd").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_GridItem_Component_004] columnEnd select: ${obj_columnEnd}")
        @Expect(obj_columnEnd, "\"5\"")
    }
}
