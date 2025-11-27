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

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import stdx.encoding.json.*
import kit.BasicServicesKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException

@Test
class testSubscribe_52 {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "cangjietest", "", "get user granted permission ohos.permission.COMMONEVENT_STICKY")
        try {
            getRequiredPermissions(["ohos.permission.COMMONEVENT_STICKY"])
            sleep(Duration.second * 1i64)
            click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("允许").centerPoint)
            sleep(Duration.second * 1i64)
        } catch (_: Exception) {
            Hilog.info(0u32, "cangjietest", "", "get user granted permission fail")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153100
     * @tc.name      : TestCase_1531
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key55", ValueType.INT(-1i32)), ("key56", ValueType.BOOL(true)), ("key57", ValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1531(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1531 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1378: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153200
     * @tc.name      : TestCase_1532
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key58", ValueType.INT(-1i32)), ("key59", ValueType.BOOL(true)), ("key60", ValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1532(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1532 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1379: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1532 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153300
     * @tc.name      : TestCase_1533
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key61", ValueType.INT(-1i32)), ("key62", ValueType.BOOL(true)), ("key63", ValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1533(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1533 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1380: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1533 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153400
     * @tc.name      : TestCase_1534
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key64", ValueType.INT(-1i32)), ("key65", ValueType.BOOL(true)), ("key66", ValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1534(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1534 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1381: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1534 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153500
     * @tc.name      : TestCase_1535
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key67", ValueType.INT(-1i32)), ("key68", ValueType.BOOL(true)), ("key69", ValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1535(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1535 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1382: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1535 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153600
     * @tc.name      : TestCase_1536
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key70", ValueType.INT(-1i32)), ("key71", ValueType.BOOL(true)), ("key72", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1536(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1536 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1383: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1536 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153700
     * @tc.name      : TestCase_1537
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key73", ValueType.INT(-1i32)), ("key74", ValueType.FD(1i32)), ("key75", ValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1537(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1537 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1384: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1537 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153800
     * @tc.name      : TestCase_1538
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key76", ValueType.INT(-1i32)), ("key77", ValueType.FD(1i32)), ("key78", ValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1538(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1538 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1385: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1538 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153900
     * @tc.name      : TestCase_1539
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key79", ValueType.INT(-1i32)), ("key80", ValueType.FD(1i32)), ("key81", ValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1539(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1539 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1386: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1539 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_154000
     * @tc.name      : TestCase_1540
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key82", ValueType.INT(-1i32)), ("key83", ValueType.FD(1i32)), ("key84", ValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1540(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1540 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1387: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1540 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_154100
     * @tc.name      : TestCase_1541
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key85", ValueType.INT(-1i32)), ("key86", ValueType.FD(1i32)), ("key87", ValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1541(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1541 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1388: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1541 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_154200
     * @tc.name      : TestCase_1542
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key88", ValueType.INT(-1i32)), ("key89", ValueType.FD(1i32)), ("key90", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1542(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1542 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1389: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1542 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_154300
     * @tc.name      : TestCase_1543
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key91", ValueType.INT(-1i32)), ("key92", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key93", ValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1543(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1543 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1390: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1543 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_154400
     * @tc.name      : TestCase_1544
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key94", ValueType.INT(-1i32)), ("key95", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key96", ValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1544(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1544 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1391: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1544 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_154500
     * @tc.name      : TestCase_1545
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key97", ValueType.INT(-1i32)), ("key98", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key99", ValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1545(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1545 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1392: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1545 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_154600
     * @tc.name      : TestCase_1546
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key100", ValueType.INT(-1i32)), ("key101", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key102", ValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1546(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1546 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1393: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1546 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_154700
     * @tc.name      : TestCase_1547
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key103", ValueType.INT(-1i32)), ("key104", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key105", ValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1547(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1547 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1394: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1547 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_154800
     * @tc.name      : TestCase_1548
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key106", ValueType.INT(-1i32)), ("key107", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key108", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1548(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1548 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1395: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1548 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_154900
     * @tc.name      : TestCase_1549
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key109", ValueType.FLOAT64(-1.000000f64)), ("key110", ValueType.INT(-1i32)), ("key111", ValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1549(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1549 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1396: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1549 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_155000
     * @tc.name      : TestCase_1550
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key112", ValueType.FLOAT64(-1.000000f64)), ("key113", ValueType.INT(-1i32)), ("key114", ValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1550(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1550 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1397: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1550 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_155100
     * @tc.name      : TestCase_1551
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key115", ValueType.FLOAT64(-1.000000f64)), ("key116", ValueType.INT(-1i32)), ("key117", ValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1551(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1551 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1398: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1551 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_155200
     * @tc.name      : TestCase_1552
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key118", ValueType.FLOAT64(-1.000000f64)), ("key119", ValueType.INT(-1i32)), ("key120", ValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1552(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1552 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1399: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1552 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_155300
     * @tc.name      : TestCase_1553
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key121", ValueType.FLOAT64(-1.000000f64)), ("key122", ValueType.INT(-1i32)), ("key123", ValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1553(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1553 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1400: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1553 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_155400
     * @tc.name      : TestCase_1554
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key124", ValueType.FLOAT64(-1.000000f64)), ("key125", ValueType.INT(-1i32)), ("key126", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1554(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1554 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1401: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1554 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_155500
     * @tc.name      : TestCase_1555
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key127", ValueType.FLOAT64(-1.000000f64)), ("key128", ValueType.FLOAT64(-1.000000f64)), ("key129", ValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1555(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1555 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1402: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1555 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_155600
     * @tc.name      : TestCase_1556
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key130", ValueType.FLOAT64(-1.000000f64)), ("key131", ValueType.FLOAT64(-1.000000f64)), ("key132", ValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1556(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1556 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1403: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1556 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_155700
     * @tc.name      : TestCase_1557
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key133", ValueType.FLOAT64(-1.000000f64)), ("key134", ValueType.FLOAT64(-1.000000f64)), ("key135", ValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1557(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1557 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1404: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1557 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_155800
     * @tc.name      : TestCase_1558
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key136", ValueType.FLOAT64(-1.000000f64)), ("key137", ValueType.FLOAT64(-1.000000f64)), ("key138", ValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1558(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1558 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1405: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1558 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_155900
     * @tc.name      : TestCase_1559
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key139", ValueType.FLOAT64(-1.000000f64)), ("key140", ValueType.FLOAT64(-1.000000f64)), ("key141", ValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1559(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1559 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1406: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1559 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_156000
     * @tc.name      : TestCase_1560
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key142", ValueType.FLOAT64(-1.000000f64)), ("key143", ValueType.FLOAT64(-1.000000f64)), ("key144", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1560(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1560 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "1234567890", publisherDeviceId: "1234567890",
                    userId: -1i32, priority: -1i32, publisherBundleName: "1234567890"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1407: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1560 ends.")
    }
}
