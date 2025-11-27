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


@Test
class Test_WatchLink_Management {
    prop driver: Driver {
        get() {
            OpenHarmonyTestRunner.driver
        }
    }

    protected override func beforeAll() {
        driver.waitForComponent(On().id("View_WatchLink_Number"), 5000).getOrThrow().click()
        driver.delayMs(1000)
    }

    protected override func afterAll() {
        driver.delayMs(1000)
        driver.pressBack()
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchLinkNumber_0100
     * @tc.name： Test_WatchLinkNumber_001
     * @tc.desic：test UIKit WatchLinkNumber
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchLinkNumber_001() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_001 Start")
        let button = driver.waitForComponent(On().id("state1"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_001 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchStatus: onWatchNumber Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_001 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchLinkNumber_0200
     * @tc.name： Test_WatchLinkNumber_002
     * @tc.desic：test UIKit WatchLinkNumber
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchLinkNumber_002() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_002 Start")
        let button = driver.waitForComponent(On().id("state2"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_002 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchStatus: onWatchObject Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_002 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchLinkNumber_0300
     * @tc.name： Test_WatchLinkNumber_003
     * @tc.desic：test UIKit WatchLinkNumber
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchLinkNumber_003() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_003 Start")
        let button = driver.waitForComponent(On().id("state3"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_003 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchStatus: onWatchString Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_003 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchLinkNumber_0400
     * @tc.name： Test_WatchLinkNumber_004
     * @tc.desic：test UIKit WatchLinkNumber
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchLinkNumber_004() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_004 Start")
        let button = driver.waitForComponent(On().id("state4"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_004 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchStatus: onWatchDateTime Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_004 End")
    }

    /*
     * @tc.number：Sub_Cangjie_UIKit_WatchLinkNumber_0500
     * @tc.name： Test_WatchLinkNumber_005
     * @tc.desic：test UIKit WatchLinkNumber
     * @tc.size: MediumTest
     * @tc.type: Function
     * @tc.level: Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_WatchLinkNumber_005() {
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_005 Start")
        let button = driver.waitForComponent(On().id("state5"), 5000).getOrThrow()
        button.click()
        driver.delayMs(1000)
        let Inspector = getInspectorByKey("WatchState")
        let attrs = JsonValue.fromStr(Inspector).asObject().get("$attrs").getOrThrow().asObject()
        let attrs_content = attrs.get("content").getOrThrow().toString()
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_005 title:  ${attrs_content}")
        @Expect(attrs_content,"\"WatchStatus: onWatchBoolean Trggier\"")
        Hilog.info(0, "cangjietest", "test", "Test_WatchLinkNumber_005 End")
    }
}
