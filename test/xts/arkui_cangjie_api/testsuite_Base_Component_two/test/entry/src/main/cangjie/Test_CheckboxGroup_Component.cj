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
class Test_CheckboxGroup_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        let scrollBar: Component = driver.findComponent(On().onType("Scroll")).getOrThrow()
        scrollBar.scrollSearch(On().id("View_CheckboxGroup")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_CheckboxGroup_Component_0100
    * @tc.name      : Test_CheckboxGroup_Component_001
    * @tc.desc      : test UIKit CheckboxGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CheckboxGroup_Component_001() {
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_001] start")
        // 1、获取页面中id为checkboxGroupBasis的组件信息
        let Inspector = getInspectorByKey("checkboxGroupBasis")
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_001] Inspector value: ${Inspector}")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        let aar = Inspector.split("useShadowBatching")
        for (a in aar) {
            Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_001]: ${a}")
        }
        //3、读取组件信息json中的group
        let obj_group = obj.get("$attrs").getOrThrow().asObject().get("group").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_001] group value: ${obj_group}")
        @Expect(obj_group, "\"checkboxGroup\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_CheckboxGroup_Component_0200
    * @tc.name      : Test_CheckboxGroup_Component_002
    * @tc.desc      : test UIKit CheckboxGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CheckboxGroup_Component_002() {
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_002] start")
        // 1、获取页面中id为checkboxGroupBasis的组件信息
        let Inspector = getInspectorByKey("checkboxGroupBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的selectAll
        let obj_selectAll = obj.get("$attrs").getOrThrow().asObject().get("selectAll").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_002] selectAll value: ${obj_selectAll}")
        @Expect(obj_selectAll, "\"true\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_CheckboxGroup_Component_0300
    * @tc.name      : Test_CheckboxGroup_Component_003
    * @tc.desc      : test UIKit CheckboxGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CheckboxGroup_Component_003() {
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_003] start")
        // 1、获取页面中id为checkboxGroupBasis的组件信息
        let Inspector = getInspectorByKey("checkboxGroupBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的selectedColor
        let obj_selectedColor = obj.get("$attrs").getOrThrow().asObject().get("selectedColor").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_003] selectedColor select: ${obj_selectedColor}")
        @Expect(obj_selectedColor, "\"#FF0000FF\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_CheckboxGroup_Component_0400
    * @tc.name      : Test_CheckboxGroup_Component_004
    * @tc.desc      : test UIKit CheckboxGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CheckboxGroup_Component_004() {
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_004] start")
        // 1、获取页面中id为checkboxGroupBasis的组件信息
        let Inspector = getInspectorByKey("checkboxGroupBasis")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 3、读取组件信息json中的size
        let obj_size = obj.get("$attrs").getOrThrow().asObject().get("size").getOrThrow().asObject()
        let obj_size_width = obj_size.get("width").getOrThrow().toString()
        let obj_size_height = obj_size.get("height").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_004] size_width value: ${obj_size_width}")
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_004] size_height value: ${obj_size_height}")
        @Expect(obj_size_width, "\"50.00vp\"")
        @Expect(obj_size_height, "\"50.00vp\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_CheckboxGroup_Component_0500
    * @tc.name      : Test_CheckboxGroup_Component_005
    * @tc.desc      : test UIKit CheckboxGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CheckboxGroup_Component_005() {
        // 1、点击触发onChange事件
        driver.findComponent(On().id("checkboxGroupBasis")).getOrThrow().click()
        driver.delayMs(1000)
        // 2、获取页面中id为checkboxGroupBasis的组件信息
        let Inspector = getInspectorByKey("checkboxGroupBasis")
        // 3、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        // 4、读取组件信息json中的selectAll
        let obj_selectAll = obj.get("$attrs").getOrThrow().asObject().get("selectAll").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_005] selectAll value: ${obj_selectAll}")
        @Expect(obj_selectAll, "\"false\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_CheckboxGroup_Component_0600
    * @tc.name      : Test_CheckboxGroup_Component_006
    * @tc.desc      : test UIKit CheckboxGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CheckboxGroup_Component_006() {
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_003] start")
        // 1、获取页面中id为checkboxGroupBasis的组件信息
        let Inspector = getInspectorByKey("checkboxGroupBasis2")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的selectedColor
        let obj_selectedColor = obj.get("$attrs").getOrThrow().asObject().get("selectedColor").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_003] selectedColor select: ${obj_selectedColor}")
        @Expect(obj_selectedColor, "\"#FFFF0000\"")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_CheckboxGroup_Component_0700
    * @tc.name      : Test_CheckboxGroup_Component_007
    * @tc.desc      : test UIKit CheckboxGroup
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CheckboxGroup_Component_007() {
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_003] start")
        // 1、获取页面中id为checkboxGroupBasis的组件信息
        let Inspector = getInspectorByKey("checkboxGroupBasis3")
        // 2、将组件信息string转换为json
        let obj = JsonValue.fromStr(Inspector).asObject()
        //3、读取组件信息json中的selectedColor
        let obj_selectedColor = obj.get("$attrs").getOrThrow().asObject().get("selectedColor").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_CheckboxGroup_Component_003] selectedColor select: ${obj_selectedColor}")
        @Expect(obj_selectedColor, "\"#FFFF0000\"")
    }
}
