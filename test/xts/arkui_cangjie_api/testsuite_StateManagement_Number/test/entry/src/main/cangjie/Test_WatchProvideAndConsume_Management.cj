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

import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.arkui.component.*

@Test
class Test_WatchProvideAndConsume_Management {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.waitForComponent(On().id("View_WatchProvideAndConsume_Number"), 5000).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchConsumeNumber_0100
     * @tc.name： Test_WatchConsumeNumber_001
     * @tc.desic：test UIKit WatchConsumeNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchConsumeNumber_001() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_001 Start")
        let button = driver.waitForComponent(On().id("state1"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchConsumeState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_001 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchConsumeState: onWatchNumber Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_001 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchConsumeNumber_0200
     * @tc.name： Test_WatchConsumeNumber_002
     * @tc.desic：test UIKit WatchConsumeNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchConsumeNumber_002() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_002 Start")
        let button = driver.waitForComponent(On().id("state2"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchConsumeState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_002 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchConsumeState: onWatchObject Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_002 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchConsumeNumber_0300
     * @tc.name： Test_WatchConsumeNumber_003
     * @tc.desic：test UIKit WatchConsumeNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchConsumeNumber_003() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_003 Start")
        let button = driver.waitForComponent(On().id("state3"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchConsumeState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_003 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchConsumeState: onWatchString Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_003 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchConsumeNumber_0400
     * @tc.name： Test_WatchConsumeNumber_004
     * @tc.desic：test UIKit WatchConsumeNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchConsumeNumber_004() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_004 Start")
        let button = driver.waitForComponent(On().id("state4"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchConsumeState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_004 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchConsumeState: onWatchDateTime Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_004 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchConsumeNumber_0500
     * @tc.name： Test_WatchConsumeNumber_005
     * @tc.desic：test UIKit WatchConsumeNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchConsumeNumber_005() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_005 Start")
        let button = driver.waitForComponent(On().id("state5"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchConsumeState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_005 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchConsumeState: onWatchBoolean Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_005 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchProvideNumber_0100
     * @tc.name： Test_WatchProvideNumber_001
     * @tc.desic：test WatchProvideNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchProvideNumber_001() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_001 Start")
        let button = driver.waitForComponent(On().id("state1"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchProvideState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_001 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchProvideState: onWatchNumber Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_001 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchProvideNumber_0200
     * @tc.name： Test_WatchProvideNumber_002
     * @tc.desic：test WatchProvideNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchProvideNumber_002() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_002 Start")
        let button = driver.waitForComponent(On().id("state2"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchProvideState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_002 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchProvideState: onWatchObject Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_002 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchProvideNumber_0300
     * @tc.name： Test_WatchProvideNumber_003
     * @tc.desic：test WatchProvideNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchProvideNumber_003() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchConsumeNumber_003 Start")
        let button = driver.waitForComponent(On().id("state3"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchProvideState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_003 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchProvideState: onWatchString Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_003 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchProvideNumber_0400
     * @tc.name： Test_WatchProvideNumber_004
     * @tc.desic：test WatchProvideNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchProvideNumber_004() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_004 Start")
        let button = driver.waitForComponent(On().id("state4"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchProvideState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_004 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchProvideState: onWatchDateTime Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_004 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchProvideNumber_0500
     * @tc.name： Test_WatchProvideNumber_005
     * @tc.desic：test WatchProvideNumber Management
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchProvideNumber_005() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_005 Start")
        let button = driver.waitForComponent(On().id("state5"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchProvideState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_005 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchProvideState: onWatchBoolean Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchProvideNumber_005 End")
    }
}
