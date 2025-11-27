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
class Test_TextPicker_Component {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(3000)
        driver.findComponent(On().onType("Scroll")).getOrThrow().scrollSearch(On().id("View_TextPicker")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    protected override func beforeEach() {
        driver.delayMs(1000)
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextPicker_Component_0100
    * @tc.name      : Test_TextPicker_Component_001
    * @tc.desc      : test UIKit TextPicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextPicker_Component_001() {
        Hilog.info(0, "","cangjietest", "Test_TextPicker_Component_001 start")
        let Inspector = getInspectorByKey("textPicker")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_range = attrs.get("range").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextPicker_Component_001] range value: ${attrs_range}")
        @Expect(attrs_range, "\"[\\\"icon:,text:apple1\\\",\\\"icon:,text:orange2\\\",\\\"icon:,text:peach3\\\",\\\"icon:,text:grape4\\\"]\"")
        Hilog.info(0, "","cangjietest", "Test_TextPicker_Component_001 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextPicker_Component_0200
    * @tc.name      : Test_TextPicker_Component_002
    * @tc.desc      : test UIKit TextPicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextPicker_Component_002() {
        Hilog.info(0, "","cangjietest", "Test_TextPicker_Component_002 start")
        let Inspector = getInspectorByKey("textPicker")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_selected = attrs.get("selected").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextPicker_Component_002] selected value: ${attrs_selected}")
        @Expect(attrs_selected, "\"0\"")
        Hilog.info(0, "","cangjietest", "Test_TextPicker_Component_002 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextPicker_Component_0300
    * @tc.name      : Test_TextPicker_Component_003
    * @tc.desc      : test UIKit TextPicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextPicker_Component_003() {
        Hilog.info(0, "","cangjietest", "Test_TextPicker_Component_003 start")
        let Inspector = getInspectorByKey("textPicker")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_selected = attrs.get("defaultPickerItemHeight").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextPicker_Component_003] defaultPickerItemHeight value: ${attrs_selected}")
        @Expect(attrs_selected, "\"20.00vp\"")
        Hilog.info(0, "","cangjietest", "Test_TextPicker_Component_003 End")
    }


    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextPicker_Component_0500
    * @tc.name      : Test_TextPicker_Component_005
    * @tc.desc      : test UIKit TextPicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextPicker_Component_005() {
        Hilog.info(0, "","cangjietest", "Test_TextPicker_Component_005 start")
        let Inspector = getInspectorByKey("textPicker1")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_selected = attrs.get("defaultPickerItemHeight").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextPicker_Component_005] defaultPickerItemHeight value: ${attrs_selected}")
        @Expect(attrs_selected, "\"20.00fp\"")
        Hilog.info(0, "","cangjietest", "Test_TextPicker_Component_003 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_TextPicker_Component_0600
    * @tc.name      : Test_TextPicker_Component_006
    * @tc.desc      : test UIKit TextPicker
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_TextPicker_Component_006() {
        Hilog.info(0, "","cangjietest", "Test_TextPicker_Component_006 start")
        let Inspector = getInspectorByKey("textPicker2")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_selected = attrs.get("defaultPickerItemHeight").getOrThrow().toString()
        Hilog.info(0, "","cangjietest", "[Test_TextPicker_Component_006] defaultPickerItemHeight value: ${attrs_selected}")
        @Expect(attrs_selected, "\"20.00vp\"")
        Hilog.info(0, "","cangjietest", "Test_TextPicker_Component_003 End")
    }
}
