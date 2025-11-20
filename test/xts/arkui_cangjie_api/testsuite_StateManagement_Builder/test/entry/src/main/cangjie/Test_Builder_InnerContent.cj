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
class Test_Builder_InnerContent {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(1000)
        driver.findComponent(On().id("View_Builder_InnerContent")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Builder_InnerContent_0100
    * @tc.name      : Test_Builder_InnerContent_0100
    * @tc.desc      : test UIKit Builder InnerContent
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Builder_InnerContent_0100() {
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0100 Start")
        let Inspector = getInspectorByKey("InnerView")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0100 content:  ${attrs_content}")
        @Expect(attrs_content,"\"InnerView-Text In Builder\"")
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0100 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Builder_InnerContent_0200
    * @tc.name      : Test_Builder_InnerContent_0200
    * @tc.desc      : test UIKit Builder InnerContent
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Builder_InnerContent_0200() {
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0200 Start")
        let Inspector = getInspectorByKey("CustomerView")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0200 content:  ${attrs_content}")
        @Expect(attrs_content,"\"CustomerView-Text In Builder\"")
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0200 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Builder_InnerContent_0300
    * @tc.name      : Test_Builder_InnerContent_0300
    * @tc.desc      : test UIKit Builder InnerContent
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Builder_InnerContent_0300() {
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0400 Start")
        let Inspector = getInspectorByKey("BuilderView")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0200 content:  ${attrs_content}")
        @Expect(attrs_content,"\"Builder-Text In Builder\"")
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0300 End")
    }

    
    /*
    * @tc.number    : Sub_Cangjie_UIKit_Test_Builder_InnerContent_0400
    * @tc.name      : Test_Builder_InnerContent_0400
    * @tc.desc      : test UIKit Builder InnerContent
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Builder_InnerContent_0400() {
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0400 Start")
        let Inspector = getInspectorByKey("NestingCustomerView")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0400 content:  ${attrs_content}")
        @Expect(attrs_content,"\"NestingCustomerView-Text In Builder\"")
        Hilog.info(0,"", "cangjietest", "Test_Builder_InnerContent_0400 End")
    }
}
