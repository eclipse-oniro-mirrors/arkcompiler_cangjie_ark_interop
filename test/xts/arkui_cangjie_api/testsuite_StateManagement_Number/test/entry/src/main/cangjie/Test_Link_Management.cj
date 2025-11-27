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
internal import kit.PerformanceAnalysisKit.Hilog
import std.unittest.testmacro.*
import ohos.ui_test.*
import std.unittest.*
import std.unittest.common.*

@Test
class Test_Link_Management {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.waitForComponent(On().id("View_Link_Number"), 5000).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_LinkNumber_0100
     * @tc.name： Test_LinkNumber_001
     * @tc.desic：test UIKit LinkNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LinkNumber_001() {
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_001 Start")
        let button = driver.waitForComponent(On().id("state1"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("LinkNumber")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_001 title:  ${attrs_content}")
        @Expect(attrs_content,"\"变量赋值number类型: 10\"")
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_001 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_LinkNumber_0200
     * @tc.name： Test_LinkNumber_002
     * @tc.desic：test UIKit LinkNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LinkNumber_002() {
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_002 Start")
        let button = driver.waitForComponent(On().id("state2"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("LinkObject")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_002 title:  ${attrs_content}")
        @Expect(attrs_content,"\"切换变量赋值Num1: 20\"")
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_002 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_LinkNumber_0300
     * @tc.name： Test_LinkNumber_003
     * @tc.desic：test UIKit LinkNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LinkNumber_003() {
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_003 Start")
        let button = driver.waitForComponent(On().id("state3"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("LinkString")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_003 title:  ${attrs_content}")
        @Expect(attrs_content,"\"切换变量赋值String: 30\"")
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_003 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_LinkNumber_0400
     * @tc.name： Test_LinkNumber_004
     * @tc.desic：test UIKit LinkNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LinkNumber_004() {
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_004 Start")
        let button = driver.waitForComponent(On().id("state4"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("LinkDate")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_004 title:  ${attrs_content}")
        @Expect(attrs_content,"\"切换变量赋值Date: 2023-04-10T08:00:00+08:00\"")
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_004 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_LinkNumber_0500
     * @tc.name： Test_LinkNumber_005
     * @tc.desic：test UIKit LinkNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_LinkNumber_005() {
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_005 Start")
        let button = driver.waitForComponent(On().id("state5"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("LinkBoolean")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_005 title:  ${attrs_content}")
        @Expect(attrs_content,"\"切换变量赋值Boolean: true\"")
        Hilog.info(0, "cangjietest", "test", "Test_LinkNumber_005 End")
    }
}
