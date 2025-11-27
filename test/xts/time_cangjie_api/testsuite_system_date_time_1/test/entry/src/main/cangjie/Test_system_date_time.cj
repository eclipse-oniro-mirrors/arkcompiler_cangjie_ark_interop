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

internal import kit.BasicServicesKit.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.hilog.Hilog
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_system_date_time {

    /*
    * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_system_date_time_0400
    * @tc.name      : test_sysDateTime_getRealTime_02
    * @tc.desc      : test BasicServicesKit getRealTime
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func test_sysDateTime_getRealTime_02() {
        Hilog.info(0, "test_sysDateTime_getRealTime_02", "test_sysDateTime_getRealTime_02_start")
        let ns = 10 ** 9
    }

    /*
    * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_system_date_time_0500
    * @tc.name      : test_getTime
    * @tc.desc      : test BasicServicesKit getTime
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func test_getTime() {
        Hilog.info(0, "SystemDateTime Test", "SystemDateTime::getTime")
        try {
            SystemDateTime.getTime()
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "SystemDateTime Test", "error: ${e.toString()}")
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_system_date_time_0600
    * @tc.name      : test_getUptime_ACTIVE
    * @tc.desc      : test BasicServicesKit getUptime
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func test_getUptime_ACTIVE() {
        Hilog.info(0, "SystemDateTime Test", "SystemDateTime::getUptime")
        try {
            SystemDateTime.getUptime(TimeType.Active)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "SystemDateTime Test", "error: ${e.toString()}")
        }
    }

    /*
    * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_system_date_time_0700
    * @tc.name      : test_getUptime_Startup
    * @tc.desc      : test BasicServicesKit getUptime
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    public func test_getUptime_Startup() {
        Hilog.info(0, "SystemDateTime Test", "SystemDateTime::getUptime")
        try {
            SystemDateTime.getUptime(TimeType.Startup)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "SystemDateTime Test", "error: ${e.toString()}")
        }
    }


    /*
    * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_system_date_time_1000
    * @tc.name      : test_getTimezone
    * @tc.desc      : test BasicServicesKit getTimezone
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getTimezone(): Unit {
        try {
            let stream = SystemDateTime.getTimezone()
            @Expect(stream, "Asia/Shanghai")
        } catch (e: Exception) {
            @Expect(false)
            Hilog.info(0, "SystemDateTime Test", "error: ${e.toString()}")
        }
    }


    /*
    * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_system_date_time_1300
    * @tc.name      : Test_init
    * @tc.desc      : test BasicServicesKit SystemDateTime
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_init() {
        SystemDateTime()
        @Expect(true)
    }
}
