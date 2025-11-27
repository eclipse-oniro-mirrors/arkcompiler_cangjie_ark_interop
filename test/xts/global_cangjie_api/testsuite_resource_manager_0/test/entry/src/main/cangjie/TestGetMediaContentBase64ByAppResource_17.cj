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
class TestGetMediaContentBase64ByAppResource_17 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_160100
     * @tc.name      : TestCase_1601
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1601(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1601 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2699: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1601 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_160200
     * @tc.name      : TestCase_1602
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1602(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1602 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2700: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1602 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_160300
     * @tc.name      : TestCase_1603
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1603(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1603 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2701: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1603 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_160400
     * @tc.name      : TestCase_1604
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1604(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1604 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2702: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1604 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_160500
     * @tc.name      : TestCase_1605
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1605(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1605 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2703: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1605 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_160600
     * @tc.name      : TestCase_1606
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1606(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1606 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2704: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1606 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_160700
     * @tc.name      : TestCase_1607
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1607(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1607 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2705: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1607 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_160800
     * @tc.name      : TestCase_1608
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1608(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1608 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2706: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1608 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_160900
     * @tc.name      : TestCase_1609
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1609(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1609 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2707: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1609 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_161000
     * @tc.name      : TestCase_1610
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1610(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1610 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2708: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1610 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_161100
     * @tc.name      : TestCase_1611
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1611(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1611 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2709: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1611 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_161200
     * @tc.name      : TestCase_1612
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1612(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1612 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2710: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1612 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_161300
     * @tc.name      : TestCase_1613
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1613(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1613 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2711: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1613 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_161400
     * @tc.name      : TestCase_1614
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1614(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1614 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2712: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1614 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_161500
     * @tc.name      : TestCase_1615
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1615(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1615 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2713: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1615 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_161600
     * @tc.name      : TestCase_1616
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1616(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1616 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2714: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1616 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_161700
     * @tc.name      : TestCase_1617
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1617(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1617 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2715: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1617 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_161800
     * @tc.name      : TestCase_1618
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1618(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1618 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2716: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1618 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_161900
     * @tc.name      : TestCase_1619
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1619(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1619 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2717: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1619 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_162000
     * @tc.name      : TestCase_1620
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1620(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1620 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2718: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1620 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_162100
     * @tc.name      : TestCase_1621
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1621(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1621 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2719: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1621 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_162200
     * @tc.name      : TestCase_1622
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1622(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1622 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2720: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1622 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_162300
     * @tc.name      : TestCase_1623
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1623(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1623 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2721: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1623 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_162400
     * @tc.name      : TestCase_1624
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1624(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1624 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2722: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1624 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_162500
     * @tc.name      : TestCase_1625
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1625(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1625 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2723: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1625 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_162600
     * @tc.name      : TestCase_1626
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=1u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1626(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1626 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", 1u32),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2724: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1626 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_162700
     * @tc.name      : TestCase_1627
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=1u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1627(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1627 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", 1u32),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2725: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1627 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_162800
     * @tc.name      : TestCase_1628
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=1u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1628(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1628 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", 1u32),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2726: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1628 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_162900
     * @tc.name      : TestCase_1629
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=1u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1629(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1629 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", 1u32),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2727: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1629 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_163000
     * @tc.name      : TestCase_1630
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=1u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1630(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1630 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", 1u32),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2728: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1630 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_163100
     * @tc.name      : TestCase_1631
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=0u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1631(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1631 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", 0u32),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2729: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1631 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_163200
     * @tc.name      : TestCase_1632
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=0u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1632(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1632 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", 0u32),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2730: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1632 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_163300
     * @tc.name      : TestCase_1633
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=0u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1633(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1633 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", 0u32),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2731: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1633 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_163400
     * @tc.name      : TestCase_1634
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=0u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1634(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1634 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", 0u32),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2732: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1634 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_163500
     * @tc.name      : TestCase_1635
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=0u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1635(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1635 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", 0u32),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2733: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1635 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_164100
     * @tc.name      : TestCase_1641
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Min, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1641(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1641 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", UInt32.Min),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2739: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1641 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_164200
     * @tc.name      : TestCase_1642
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Min, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1642(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1642 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", UInt32.Min),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2740: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1642 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_164300
     * @tc.name      : TestCase_1643
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Min, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1643(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1643 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", UInt32.Min),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2741: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1643 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_164400
     * @tc.name      : TestCase_1644
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Min, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1644(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1644 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", UInt32.Min),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2742: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1644 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_164500
     * @tc.name      : TestCase_1645
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Min, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1645(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1645 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", UInt32.Min),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2743: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1645 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_164600
     * @tc.name      : TestCase_1646
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Max, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1646(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1646 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", UInt32.Max),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2744: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1646 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_164700
     * @tc.name      : TestCase_1647
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Max, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1647(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1647 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", UInt32.Max),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2745: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1647 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_164800
     * @tc.name      : TestCase_1648
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Max, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1648(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1648 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", UInt32.Max),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2746: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1648 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_164900
     * @tc.name      : TestCase_1649
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Max, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1649(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1649 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", UInt32.Max),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2747: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1649 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_165000
     * @tc.name      : TestCase_1650
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Max, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1650(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1650 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("com.example.myapplication", "\0", UInt32.Max),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2748: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1650 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_165100
     * @tc.name      : TestCase_1651
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1651(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1651 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2749: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1651 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_165200
     * @tc.name      : TestCase_1652
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1652(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1652 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2750: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1652 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_165300
     * @tc.name      : TestCase_1653
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1653(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1653 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2751: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1653 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_165400
     * @tc.name      : TestCase_1654
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1654(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1654 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2752: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1654 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_165500
     * @tc.name      : TestCase_1655
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1655(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1655 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2753: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1655 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_165600
     * @tc.name      : TestCase_1656
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1656(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1656 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2754: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1656 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_165700
     * @tc.name      : TestCase_1657
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1657(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1657 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2755: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1657 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_165800
     * @tc.name      : TestCase_1658
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1658(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1658 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2756: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1658 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_165900
     * @tc.name      : TestCase_1659
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1659(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1659 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2757: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1659 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_166000
     * @tc.name      : TestCase_1660
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1660(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1660 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2758: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1660 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_166100
     * @tc.name      : TestCase_1661
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1661(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1661 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2759: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1661 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_166200
     * @tc.name      : TestCase_1662
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1662(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1662 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2760: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1662 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_166300
     * @tc.name      : TestCase_1663
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1663(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1663 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2761: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1663 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_166400
     * @tc.name      : TestCase_1664
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1664(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1664 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2762: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1664 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_166500
     * @tc.name      : TestCase_1665
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1665(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1665 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2763: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1665 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_166600
     * @tc.name      : TestCase_1666
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1666(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1666 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2764: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1666 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_166700
     * @tc.name      : TestCase_1667
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1667(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1667 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2765: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1667 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_166800
     * @tc.name      : TestCase_1668
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1668(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1668 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2766: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1668 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_166900
     * @tc.name      : TestCase_1669
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1669(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1669 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2767: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1669 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_167000
     * @tc.name      : TestCase_1670
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1670(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1670 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2768: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1670 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_167100
     * @tc.name      : TestCase_1671
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1671(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1671 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2769: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1671 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_167200
     * @tc.name      : TestCase_1672
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1672(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1672 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2770: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1672 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_167300
     * @tc.name      : TestCase_1673
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1673(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1673 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2771: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1673 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_167400
     * @tc.name      : TestCase_1674
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1674(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1674 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2772: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1674 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_167500
     * @tc.name      : TestCase_1675
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1675(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1675 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2773: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1675 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_167600
     * @tc.name      : TestCase_1676
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1676(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1676 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2774: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1676 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_167700
     * @tc.name      : TestCase_1677
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1677(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1677 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2775: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1677 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_167800
     * @tc.name      : TestCase_1678
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1678(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1678 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2776: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1678 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_167900
     * @tc.name      : TestCase_1679
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1679(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1679 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2777: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1679 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_168000
     * @tc.name      : TestCase_1680
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1680(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1680 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2778: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1680 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_168100
     * @tc.name      : TestCase_1681
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1681(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1681 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2779: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1681 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_168200
     * @tc.name      : TestCase_1682
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1682(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1682 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2780: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1682 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_168300
     * @tc.name      : TestCase_1683
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1683(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1683 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2781: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1683 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_168400
     * @tc.name      : TestCase_1684
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1684(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1684 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2782: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1684 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_168500
     * @tc.name      : TestCase_1685
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1685(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1685 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2783: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1685 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_168600
     * @tc.name      : TestCase_1686
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1686(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1686 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2784: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1686 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_168700
     * @tc.name      : TestCase_1687
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1687(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1687 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2785: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1687 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_168800
     * @tc.name      : TestCase_1688
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1688(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1688 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2786: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1688 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_168900
     * @tc.name      : TestCase_1689
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1689(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1689 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2787: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1689 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_169000
     * @tc.name      : TestCase_1690
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1690(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1690 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2788: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1690 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_169100
     * @tc.name      : TestCase_1691
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1691(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1691 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2789: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1691 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_169200
     * @tc.name      : TestCase_1692
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1692(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1692 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2790: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1692 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_169300
     * @tc.name      : TestCase_1693
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1693(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1693 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2791: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1693 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_169400
     * @tc.name      : TestCase_1694
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1694(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1694 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2792: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1694 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_169500
     * @tc.name      : TestCase_1695
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1695(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1695 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2793: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1695 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_169600
     * @tc.name      : TestCase_1696
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1696(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1696 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2794: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1696 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_169700
     * @tc.name      : TestCase_1697
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1697(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1697 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2795: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1697 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_169800
     * @tc.name      : TestCase_1698
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1698(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1698 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2796: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1698 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_169900
     * @tc.name      : TestCase_1699
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1699(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1699 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2797: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1699 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_170000
     * @tc.name      : TestCase_1700
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1700(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1700 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2798: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1700 ends.")
    }
}
