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
import ohos.arkui.state_macro_manage.r
import ohos.resource_manager.AppResource
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*
import ohos.resource_manager.ArgsValueType
import ohos.resource_manager.ScreenDensity
import ohos.resource_manager.NumberValueType

@Test
class TestGetMediaContentBase64ByAppResource_7 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_60100
     * @tc.name      : TestCase_601
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_601(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_601 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1699: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_601 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_60200
     * @tc.name      : TestCase_602
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_602(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_602 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1700: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_602 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_60300
     * @tc.name      : TestCase_603
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_603(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_603 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1701: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_603 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_60400
     * @tc.name      : TestCase_604
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_604(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_604 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1702: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_604 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_60500
     * @tc.name      : TestCase_605
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_605(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_605 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1703: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_605 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_60600
     * @tc.name      : TestCase_606
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_606(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_606 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1704: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_606 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_60700
     * @tc.name      : TestCase_607
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_607(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_607 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1705: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_607 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_60800
     * @tc.name      : TestCase_608
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_608(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_608 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1706: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_608 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_60900
     * @tc.name      : TestCase_609
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_609(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_609 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1707: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_609 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_61000
     * @tc.name      : TestCase_610
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_610(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_610 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1708: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_610 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_61100
     * @tc.name      : TestCase_611
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_611(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_611 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1709: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_611 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_61200
     * @tc.name      : TestCase_612
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_612(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_612 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1710: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_612 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_61300
     * @tc.name      : TestCase_613
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_613(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_613 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1711: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_613 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_61400
     * @tc.name      : TestCase_614
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_614(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_614 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1712: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_614 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_61500
     * @tc.name      : TestCase_615
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_615(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_615 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1713: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_615 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_61600
     * @tc.name      : TestCase_616
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_616(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_616 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1714: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_616 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_61700
     * @tc.name      : TestCase_617
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_617(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_617 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1715: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_617 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_61800
     * @tc.name      : TestCase_618
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_618(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_618 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1716: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_618 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_61900
     * @tc.name      : TestCase_619
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_619(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_619 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1717: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_619 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_62000
     * @tc.name      : TestCase_620
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_620(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_620 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1718: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_620 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_62100
     * @tc.name      : TestCase_621
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_621(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_621 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1719: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_621 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_62200
     * @tc.name      : TestCase_622
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_622(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_622 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1720: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_622 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_62300
     * @tc.name      : TestCase_623
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_623(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_623 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1721: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_623 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_62400
     * @tc.name      : TestCase_624
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_624(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_624 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1722: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_624 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_62500
     * @tc.name      : TestCase_625
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_625(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_625 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1723: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_625 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_62600
     * @tc.name      : TestCase_626
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=1u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_626(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_626 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", 1u32), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1724: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_626 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_62700
     * @tc.name      : TestCase_627
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=1u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_627(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_627 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", 1u32), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1725: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_627 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_62800
     * @tc.name      : TestCase_628
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=1u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_628(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_628 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", 1u32), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1726: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_628 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_62900
     * @tc.name      : TestCase_629
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=1u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_629(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_629 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", 1u32), density: ScreenDensity.ScreenXldpi
            )
            @Expect("assertion#1727: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_629 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_63000
     * @tc.name      : TestCase_630
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=1u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_630(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_630 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", 1u32),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1728: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_630 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_63100
     * @tc.name      : TestCase_631
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=0u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_631(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_631 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", 0u32), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1729: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_631 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_63200
     * @tc.name      : TestCase_632
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=0u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_632(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_632 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", 0u32), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1730: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_632 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_63300
     * @tc.name      : TestCase_633
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=0u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_633(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_633 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", 0u32), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1731: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_633 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_63400
     * @tc.name      : TestCase_634
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=0u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_634(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_634 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", 0u32), density: ScreenDensity.ScreenXldpi
            )
            @Expect("assertion#1732: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_634 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_63500
     * @tc.name      : TestCase_635
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=0u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_635(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_635 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", 0u32),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1733: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_635 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_64100
     * @tc.name      : TestCase_641
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Min, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_641(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_641 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", UInt32.Min),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1739: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_641 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_64200
     * @tc.name      : TestCase_642
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Min, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_642(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_642 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", UInt32.Min),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1740: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_642 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_64300
     * @tc.name      : TestCase_643
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Min, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_643(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_643 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", UInt32.Min),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1741: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_643 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_64400
     * @tc.name      : TestCase_644
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Min, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_644(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_644 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", UInt32.Min),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1742: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_644 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_64500
     * @tc.name      : TestCase_645
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Min, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_645(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_645 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", UInt32.Min),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1743: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_645 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_64600
     * @tc.name      : TestCase_646
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Max, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_646(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_646 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", UInt32.Max),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1744: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_646 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_64700
     * @tc.name      : TestCase_647
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Max, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_647(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_647 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", UInt32.Max),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1745: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_647 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_64800
     * @tc.name      : TestCase_648
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Max, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_648(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_648 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", UInt32.Max),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1746: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_648 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_64900
     * @tc.name      : TestCase_649
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Max, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_649(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_649 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", UInt32.Max),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1747: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_649 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_65000
     * @tc.name      : TestCase_650
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Max, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_650(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_650 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", UInt32.Max),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1748: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_650 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_65100
     * @tc.name      : TestCase_651
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_651(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_651 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1749: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_651 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_65200
     * @tc.name      : TestCase_652
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_652(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_652 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1750: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_652 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_65300
     * @tc.name      : TestCase_653
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_653(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_653 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1751: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_653 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_65400
     * @tc.name      : TestCase_654
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_654(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_654 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1752: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_654 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_65500
     * @tc.name      : TestCase_655
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_655(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_655 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1753: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_655 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_65600
     * @tc.name      : TestCase_656
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_656(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_656 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1754: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_656 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_65700
     * @tc.name      : TestCase_657
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_657(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_657 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1755: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_657 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_65800
     * @tc.name      : TestCase_658
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_658(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_658 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1756: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_658 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_65900
     * @tc.name      : TestCase_659
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_659(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_659 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1757: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_659 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_66000
     * @tc.name      : TestCase_660
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_660(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_660 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1758: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_660 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_66100
     * @tc.name      : TestCase_661
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_661(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_661 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1759: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_661 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_66200
     * @tc.name      : TestCase_662
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_662(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_662 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1760: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_662 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_66300
     * @tc.name      : TestCase_663
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_663(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_663 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1761: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_663 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_66400
     * @tc.name      : TestCase_664
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_664(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_664 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1762: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_664 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_66500
     * @tc.name      : TestCase_665
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_665(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_665 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1763: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_665 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_66600
     * @tc.name      : TestCase_666
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_666(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_666 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1764: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_666 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_66700
     * @tc.name      : TestCase_667
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_667(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_667 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1765: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_667 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_66800
     * @tc.name      : TestCase_668
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_668(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_668 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1766: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_668 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_66900
     * @tc.name      : TestCase_669
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_669(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_669 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1767: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_669 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_67000
     * @tc.name      : TestCase_670
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_670(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_670 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1768: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_670 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_67100
     * @tc.name      : TestCase_671
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_671(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_671 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1769: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_671 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_67200
     * @tc.name      : TestCase_672
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_672(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_672 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1770: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_672 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_67300
     * @tc.name      : TestCase_673
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_673(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_673 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1771: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_673 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_67400
     * @tc.name      : TestCase_674
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_674(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_674 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1772: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_674 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_67500
     * @tc.name      : TestCase_675
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_675(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_675 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1773: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_675 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_67600
     * @tc.name      : TestCase_676
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_676(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_676 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1774: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_676 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_67700
     * @tc.name      : TestCase_677
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_677(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_677 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1775: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_677 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_67800
     * @tc.name      : TestCase_678
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_678(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_678 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1776: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_678 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_67900
     * @tc.name      : TestCase_679
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_679(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_679 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1777: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_679 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_68000
     * @tc.name      : TestCase_680
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_680(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_680 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1778: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_680 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_68100
     * @tc.name      : TestCase_681
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_681(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_681 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1779: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_681 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_68200
     * @tc.name      : TestCase_682
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_682(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_682 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1780: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_682 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_68300
     * @tc.name      : TestCase_683
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_683(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_683 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1781: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_683 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_68400
     * @tc.name      : TestCase_684
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_684(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_684 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1782: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_684 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_68500
     * @tc.name      : TestCase_685
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_685(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_685 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1783: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_685 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_68600
     * @tc.name      : TestCase_686
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_686(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_686 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1784: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_686 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_68700
     * @tc.name      : TestCase_687
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_687(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_687 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1785: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_687 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_68800
     * @tc.name      : TestCase_688
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_688(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_688 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1786: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_688 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_68900
     * @tc.name      : TestCase_689
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_689(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_689 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1787: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_689 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_69000
     * @tc.name      : TestCase_690
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_690(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_690 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1788: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_690 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_69100
     * @tc.name      : TestCase_691
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_691(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_691 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1789: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_691 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_69200
     * @tc.name      : TestCase_692
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_692(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_692 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1790: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_692 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_69300
     * @tc.name      : TestCase_693
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_693(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_693 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1791: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_693 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_69400
     * @tc.name      : TestCase_694
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_694(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_694 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1792: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_694 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_69500
     * @tc.name      : TestCase_695
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_695(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_695 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1793: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_695 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_69600
     * @tc.name      : TestCase_696
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_696(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_696 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#1794: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_696 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_69700
     * @tc.name      : TestCase_697
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_697(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_697 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#1795: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_697 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_69800
     * @tc.name      : TestCase_698
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_698(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_698 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#1796: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_698 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_69900
     * @tc.name      : TestCase_699
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_699(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_699 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#1797: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_699 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_70000
     * @tc.name      : TestCase_700
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_700(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_700 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("\0", "\0", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#1798: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_700 ends.")
    }
}
