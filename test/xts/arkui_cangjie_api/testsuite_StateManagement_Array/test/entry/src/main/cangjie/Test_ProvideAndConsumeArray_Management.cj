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
class Test_ProvideAndConsume_Management {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.delayMs(1000)
        driver.findComponent(On().id("View_ProvideAndConsume_Number")).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_ProvideAndConsumeArray_0100
     * @tc.name： Test_ProvideAndConsumeArray_001
     * @tc.desic：test UIKit ProvideAndConsumeArray Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ProvideAndConsumeArray_001() {
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_001 Start")
        driver.delayMs(1000)
        let button = driver.findComponent(On().id("state1"))
        button.getOrThrow().click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("ConsumeInt64")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_001 title:  ${attrs_content}")
        @Expect(attrs_content,"\"切换变量Array<Int64>: [10]\"")
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_001 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_ProvideAndConsumeArray_0200
     * @tc.name： Test_ProvideAndConsumeArray_002
     * @tc.desic：test UIKit ProvideAndConsumeArray Managementan
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ProvideAndConsumeArray_002() {
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_002 Start")
        driver.delayMs(1000)
        let button = driver.findComponent(On().id("state2"))
        button.getOrThrow().click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("ConsumeBoolean")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_002 title:  ${attrs_content}")
        @Expect(attrs_content,"\"切换变量Array<boolean>: [true]\"")
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_002 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_ProvideAndConsumeArray_0300
     * @tc.name： Test_ProvideAndConsumeArray_003
     * @tc.desic：test UIKit ProvideAndConsumeArray Managementg
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ProvideAndConsumeArray_003() {
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_003 Start")
        driver.delayMs(1000)
        let button = driver.findComponent(On().id("state3"))
        button.getOrThrow().click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("ConsumeLength")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_003 title:  ${attrs_content}")
        @Expect(attrs_content,"\"切换变量Array<Length>: 1.000000\"")
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_003 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_ProvideAndConsumeArray_0400
     * @tc.name： Test_ProvideAndConsumeArray_004
     * @tc.desic：test UIKit ProvideAndConsumeArray Managementime
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ProvideAndConsumeArray_004() {
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_004 Start")
        driver.delayMs(1000)
        let button = driver.findComponent(On().id("state4"))
        button.getOrThrow().click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("ConsumeObject")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_004 title:  ${attrs_content}")
        @Expect(attrs_content,"\"切换变量Array<AA>: 1\"")
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_004 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_ProvideAndConsumeArray_0500
     * @tc.name： Test_ProvideAndConsumeArray_005
     * @tc.desic：test UIKit ProvideAndConsumeArray Managementan
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ProvideAndConsumeArray_005() {
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_005 Start")
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("ConsumeResource")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_005 title:  ${attrs_content}")
        let button = driver.findComponent(On().id("state5"))
        button.getOrThrow().click()
        driver.delayMs(1000)
        let Inspector_new = getInspectorByKey("ConsumeResource")
        let attrs_new = JsonValue.fromStr(Inspector_new).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content_new = attrs_new.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_005 title:  ${attrs_content_new}")
        @Expect(attrs_content != attrs_content_new)
        Hilog.info(0, "cangjietest", "Test_ProvideAndConsumeArray_005 End")
    }
}
