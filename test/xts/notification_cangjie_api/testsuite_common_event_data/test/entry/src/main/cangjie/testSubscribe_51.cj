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
class testSubscribe_51 {
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
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_150100
     * @tc.name      : TestCase_1501
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key613", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key614", ValueType.FD(1i32)), ("key615", ValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1501(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1501 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1348: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_150200
     * @tc.name      : TestCase_1502
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key616", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key617", ValueType.FD(1i32)), ("key618", ValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1502(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1502 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1349: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_150300
     * @tc.name      : TestCase_1503
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key619", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key620", ValueType.FD(1i32)), ("key621", ValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1503(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1503 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1350: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_150400
     * @tc.name      : TestCase_1504
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key622", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key623", ValueType.FD(1i32)), ("key624", ValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1504(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1504 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1351: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_150500
     * @tc.name      : TestCase_1505
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key625", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key626", ValueType.FD(1i32)), ("key627", ValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1505(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1505 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1352: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_150600
     * @tc.name      : TestCase_1506
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key628", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key629", ValueType.FD(1i32)), ("key630", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1506(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1506 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1353: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_150700
     * @tc.name      : TestCase_1507
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key631", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key632", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key633", ValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1507(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1507 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1354: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_150800
     * @tc.name      : TestCase_1508
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key634", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key635", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key636", ValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1508(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1508 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1355: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_150900
     * @tc.name      : TestCase_1509
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key637", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key638", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key639", ValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1509(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1509 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1356: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_151000
     * @tc.name      : TestCase_1510
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key640", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key641", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key642", ValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1510(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1510 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1357: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1510 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_151100
     * @tc.name      : TestCase_1511
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key643", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key644", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key645", ValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1511(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1511 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1358: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1511 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_151200
     * @tc.name      : TestCase_1512
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32, priority: -1i32, publisherBundleName: "reason")"+ "CommonEventData("", "", -1i32, "", HashMap([("key646", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key647", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"])), ("key648", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1512(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1512 begins.")
        Hilog.info(0u32, "cangjietest", "", "requestSuspendDelay failed")
        try {
            let sub = CommonEventManager.createSubscriber(
                CommonEventSubscribeInfo([], publisherPermission: "reason", publisherDeviceId: "reason", userId: -1i32,
                    priority: -1i32, publisherBundleName: "reason"))
            CommonEventManager.subscribe(sub,
                {
                    e: Option<BusinessException>, a: Option<CommonEventData> => Hilog.info(0u32, "cangjietest", "",
                        "onframe")
                })
            @Expect("assertion#1359: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1512 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_151300
     * @tc.name      : TestCase_1513
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key1", ValueType.INT(-1i32)), ("key2", ValueType.INT(-1i32)), ("key3", ValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1513(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1513 begins.")
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
            @Expect("assertion#1360: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1513 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_151400
     * @tc.name      : TestCase_1514
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("aaaa", "aaaa", 0i32, "aaaa", HashMap([("key4", ValueType.INT(-1i32)), ("key5", ValueType.INT(-1i32)), ("key6", ValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1514(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1514 begins.")
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
            @Expect("assertion#1361: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1514 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_151500
     * @tc.name      : TestCase_1515
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("#!$@$23", "#!$@$23", 1i32, " ", HashMap([("key7", ValueType.INT(-1i32)), ("key8", ValueType.INT(-1i32)), ("key9", ValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1515(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1515 begins.")
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
            @Expect("assertion#1362: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1515 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_151600
     * @tc.name      : TestCase_1516
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("reason", "reason", -1i32, "", HashMap([("key10", ValueType.INT(-1i32)), ("key11", ValueType.INT(-1i32)), ("key12", ValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1516(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1516 begins.")
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
            @Expect("assertion#1363: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1516 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_151700
     * @tc.name      : TestCase_1517
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("1234567890", "1234567890", -1i32, "", HashMap([("key13", ValueType.INT(-1i32)), ("key14", ValueType.INT(-1i32)), ("key15", ValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1517(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1517 begins.")
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
            @Expect("assertion#1364: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1517 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_151800
     * @tc.name      : TestCase_1518
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("!#$@%^&*", "!#$@%^&*", -1i32, "", HashMap([("key16", ValueType.INT(-1i32)), ("key17", ValueType.INT(-1i32)), ("key18", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1518(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1518 begins.")
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
            @Expect("assertion#1365: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1518 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_151900
     * @tc.name      : TestCase_1519
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key19", ValueType.INT(-1i32)), ("key20", ValueType.FLOAT64(-1.000000f64)), ("key21", ValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1519(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1519 begins.")
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
            @Expect("assertion#1366: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1519 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_152000
     * @tc.name      : TestCase_1520
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key22", ValueType.INT(-1i32)), ("key23", ValueType.FLOAT64(-1.000000f64)), ("key24", ValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1520(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1520 begins.")
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
            @Expect("assertion#1367: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1520 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_152100
     * @tc.name      : TestCase_1521
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key25", ValueType.INT(-1i32)), ("key26", ValueType.FLOAT64(-1.000000f64)), ("key27", ValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1521(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1521 begins.")
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
            @Expect("assertion#1368: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1521 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_152200
     * @tc.name      : TestCase_1522
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key28", ValueType.INT(-1i32)), ("key29", ValueType.FLOAT64(-1.000000f64)), ("key30", ValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1522(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1522 begins.")
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
            @Expect("assertion#1369: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1522 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_152300
     * @tc.name      : TestCase_1523
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key31", ValueType.INT(-1i32)), ("key32", ValueType.FLOAT64(-1.000000f64)), ("key33", ValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1523(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1523 begins.")
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
            @Expect("assertion#1370: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1523 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_152400
     * @tc.name      : TestCase_1524
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key34", ValueType.INT(-1i32)), ("key35", ValueType.FLOAT64(-1.000000f64)), ("key36", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1524(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1524 begins.")
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
            @Expect("assertion#1371: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1524 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_152500
     * @tc.name      : TestCase_1525
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key37", ValueType.INT(-1i32)), ("key38", ValueType.STRING("hello world")), ("key39", ValueType.INT(-1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1525(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1525 begins.")
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
            @Expect("assertion#1372: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1525 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_152600
     * @tc.name      : TestCase_1526
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key40", ValueType.INT(-1i32)), ("key41", ValueType.STRING("hello world")), ("key42", ValueType.FLOAT64(-1.000000f64))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1526(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1526 begins.")
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
            @Expect("assertion#1373: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1526 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_152700
     * @tc.name      : TestCase_1527
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key43", ValueType.INT(-1i32)), ("key44", ValueType.STRING("hello world")), ("key45", ValueType.STRING("hello world"))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1527(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1527 begins.")
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
            @Expect("assertion#1374: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1527 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_152800
     * @tc.name      : TestCase_1528
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key46", ValueType.INT(-1i32)), ("key47", ValueType.STRING("hello world")), ("key48", ValueType.BOOL(true))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1528(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1528 begins.")
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
            @Expect("assertion#1375: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1528 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_152900
     * @tc.name      : TestCase_1529
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key49", ValueType.INT(-1i32)), ("key50", ValueType.STRING("hello world")), ("key51", ValueType.FD(1i32))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1529(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1529 begins.")
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
            @Expect("assertion#1376: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1529 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testSubscribe_subscribe_153000
     * @tc.name      : TestCase_1530
     * @tc.desc      : test subscribe param use  "CommonEventSubscribeInfo ([], publisherPermission: "1234567890", publisherDeviceId: "1234567890", userId: -1i32, priority: -1i32, publisherBundleName: "1234567890")"+ "CommonEventData("", "", -1i32, "", HashMap([("key52", ValueType.INT(-1i32)), ("key53", ValueType.STRING("hello world")), ("key54", ValueType.ARRSTRING(["", "aaaa", "#!$@$23", "reason", "1234567890", "!#$@%^&*"]))]))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1530(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1530 begins.")
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
            @Expect("assertion#1377: not throw", "requestSuspendDelay failed")
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1530 ends.")
    }
}
