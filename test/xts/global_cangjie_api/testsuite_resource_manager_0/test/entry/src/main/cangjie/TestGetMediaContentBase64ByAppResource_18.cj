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
class TestGetMediaContentBase64ByAppResource_18 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_170100
     * @tc.name      : TestCase_1701
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1701(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1701 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.profile.main_pages).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2799: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1701 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_170200
     * @tc.name      : TestCase_1702
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1702(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1702 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.profile.main_pages).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2800: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1702 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_170300
     * @tc.name      : TestCase_1703
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1703(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1703 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.profile.main_pages).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2801: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1703 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_170400
     * @tc.name      : TestCase_1704
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1704(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1704 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.profile.main_pages).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2802: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1704 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_170500
     * @tc.name      : TestCase_1705
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1705(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1705 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.profile.main_pages).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2803: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1705 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_170600
     * @tc.name      : TestCase_1706
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1706(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1706 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.color.start_window_background).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2804: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1706 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_170700
     * @tc.name      : TestCase_1707
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1707(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1707 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.color.start_window_background).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2805: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1707 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_170800
     * @tc.name      : TestCase_1708
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1708(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1708 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.color.start_window_background).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2806: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1708 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_170900
     * @tc.name      : TestCase_1709
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1709(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1709 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.color.start_window_background).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2807: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1709 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_171000
     * @tc.name      : TestCase_1710
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1710(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1710 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.color.start_window_background).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2808: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1710 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_171100
     * @tc.name      : TestCase_1711
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1711(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1711 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2809: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1711 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_171200
     * @tc.name      : TestCase_1712
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1712(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1712 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2810: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1712 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_171300
     * @tc.name      : TestCase_1713
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1713(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1713 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2811: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1713 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_171400
     * @tc.name      : TestCase_1714
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1714(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1714 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2812: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1714 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_171500
     * @tc.name      : TestCase_1715
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1715(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1715 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2813: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1715 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_171600
     * @tc.name      : TestCase_1716
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1716(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1716 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_2).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2814: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1716 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_171700
     * @tc.name      : TestCase_1717
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1717(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1717 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_2).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2815: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1717 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_171800
     * @tc.name      : TestCase_1718
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1718(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1718 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_2).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2816: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1718 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_171900
     * @tc.name      : TestCase_1719
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1719(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1719 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_2).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2817: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1719 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_172000
     * @tc.name      : TestCase_1720
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1720(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1720 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_2).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2818: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1720 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_172100
     * @tc.name      : TestCase_1721
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1721(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1721 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2819: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1721 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_172200
     * @tc.name      : TestCase_1722
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1722(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1722 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2820: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1722 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_172300
     * @tc.name      : TestCase_1723
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1723(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1723 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2821: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1723 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_172400
     * @tc.name      : TestCase_1724
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1724(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1724 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2822: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1724 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_172500
     * @tc.name      : TestCase_1725
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1725(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1725 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2823: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1725 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_172600
     * @tc.name      : TestCase_1726
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1726(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1726 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2824: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1726 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_172700
     * @tc.name      : TestCase_1727
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1727(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1727 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2825: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1727 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_172800
     * @tc.name      : TestCase_1728
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1728(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1728 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2826: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1728 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_172900
     * @tc.name      : TestCase_1729
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1729(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1729 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2827: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1729 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_173000
     * @tc.name      : TestCase_1730
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1730(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1730 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2828: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1730 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_173100
     * @tc.name      : TestCase_1731
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1731(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1731 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2829: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1731 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_173200
     * @tc.name      : TestCase_1732
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1732(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1732 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2830: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1732 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_173300
     * @tc.name      : TestCase_1733
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1733(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1733 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2831: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1733 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_173400
     * @tc.name      : TestCase_1734
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1734(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1734 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2832: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1734 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_173500
     * @tc.name      : TestCase_1735
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1735(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1735 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2833: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1735 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_173600
     * @tc.name      : TestCase_1736
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1736(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1736 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2834: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1736 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_173700
     * @tc.name      : TestCase_1737
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1737(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1737 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2835: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1737 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_173800
     * @tc.name      : TestCase_1738
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1738(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1738 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2836: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1738 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_173900
     * @tc.name      : TestCase_1739
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1739(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1739 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2837: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1739 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_174000
     * @tc.name      : TestCase_1740
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1740(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1740 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2838: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1740 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_174100
     * @tc.name      : TestCase_1741
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1741(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1741 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2839: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1741 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_174200
     * @tc.name      : TestCase_1742
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1742(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1742 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2840: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1742 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_174300
     * @tc.name      : TestCase_1743
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1743(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1743 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2841: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1743 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_174400
     * @tc.name      : TestCase_1744
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1744(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1744 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2842: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1744 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_174500
     * @tc.name      : TestCase_1745
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1745(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1745 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2843: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1745 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_174600
     * @tc.name      : TestCase_1746
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1746(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1746 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2844: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1746 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_174700
     * @tc.name      : TestCase_1747
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1747(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1747 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2845: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1747 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_174800
     * @tc.name      : TestCase_1748
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1748(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1748 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2846: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1748 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_174900
     * @tc.name      : TestCase_1749
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1749(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1749 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2847: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1749 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_175000
     * @tc.name      : TestCase_1750
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1750(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1750 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2848: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1750 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_175100
     * @tc.name      : TestCase_1751
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=1u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1751(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1751 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", 1u32),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2849: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1751 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_175200
     * @tc.name      : TestCase_1752
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=1u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1752(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1752 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", 1u32),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2850: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1752 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_175300
     * @tc.name      : TestCase_1753
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=1u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1753(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1753 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", 1u32),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2851: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1753 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_175400
     * @tc.name      : TestCase_1754
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=1u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1754(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1754 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", 1u32),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2852: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1754 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_175500
     * @tc.name      : TestCase_1755
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=1u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1755(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1755 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", 1u32),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2853: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1755 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_175600
     * @tc.name      : TestCase_1756
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=0u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1756(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1756 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", 0u32),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2854: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1756 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_175700
     * @tc.name      : TestCase_1757
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=0u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1757(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1757 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", 0u32),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2855: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1757 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_175800
     * @tc.name      : TestCase_1758
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=0u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1758(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1758 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", 0u32),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2856: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1758 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_175900
     * @tc.name      : TestCase_1759
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=0u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1759(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1759 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", 0u32),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2857: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1759 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_176000
     * @tc.name      : TestCase_1760
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=0u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1760(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1760 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", 0u32),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2858: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1760 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_176600
     * @tc.name      : TestCase_1766
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Min, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1766(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1766 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Min),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2864: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1766 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_176700
     * @tc.name      : TestCase_1767
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Min, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1767(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1767 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Min),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2865: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1767 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_176800
     * @tc.name      : TestCase_1768
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Min, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1768(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1768 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Min),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2866: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1768 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_176900
     * @tc.name      : TestCase_1769
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Min, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1769(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1769 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Min),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2867: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1769 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_177000
     * @tc.name      : TestCase_1770
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Min, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1770(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1770 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Min),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2868: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1770 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_177100
     * @tc.name      : TestCase_1771
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Max, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1771(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1771 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Max),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2869: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1771 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_177200
     * @tc.name      : TestCase_1772
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Max, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1772(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1772 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Max),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2870: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1772 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_177300
     * @tc.name      : TestCase_1773
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Max, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1773(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1773 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Max),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2871: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1773 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_177400
     * @tc.name      : TestCase_1774
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Max, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1774(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1774 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Max),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2872: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1774 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_177500
     * @tc.name      : TestCase_1775
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Max, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1775(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1775 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Max),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2873: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1775 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_177600
     * @tc.name      : TestCase_1776
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1776(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1776 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2874: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1776 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_177700
     * @tc.name      : TestCase_1777
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1777(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1777 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2875: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1777 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_177800
     * @tc.name      : TestCase_1778
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1778(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1778 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2876: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1778 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_177900
     * @tc.name      : TestCase_1779
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1779(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1779 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2877: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1779 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_178000
     * @tc.name      : TestCase_1780
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1780(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1780 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.module_desc).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2878: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1780 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_178100
     * @tc.name      : TestCase_1781
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1781(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1781 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2879: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1781 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_178200
     * @tc.name      : TestCase_1782
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1782(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1782 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2880: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1782 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_178300
     * @tc.name      : TestCase_1783
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1783(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1783 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2881: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1783 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_178400
     * @tc.name      : TestCase_1784
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1784(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1784 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2882: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1784 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_178500
     * @tc.name      : TestCase_1785
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1785(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1785 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.strarray.sizelist).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2883: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1785 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_178600
     * @tc.name      : TestCase_1786
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1786(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1786 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2884: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1786 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_178700
     * @tc.name      : TestCase_1787
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1787(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1787 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2885: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1787 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_178800
     * @tc.name      : TestCase_1788
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1788(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1788 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2886: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1788 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_178900
     * @tc.name      : TestCase_1789
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1789(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1789 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2887: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1789 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_179000
     * @tc.name      : TestCase_1790
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1790(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1790 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.plural.plural_name).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2888: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1790 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_179100
     * @tc.name      : TestCase_1791
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1791(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1791 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2889: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1791 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_179200
     * @tc.name      : TestCase_1792
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1792(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1792 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2890: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1792 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_179300
     * @tc.name      : TestCase_1793
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1793(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1793 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2891: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1793 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_179400
     * @tc.name      : TestCase_1794
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1794(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1794 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2892: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1794 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_179500
     * @tc.name      : TestCase_1795
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1795(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1795 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2893: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1795 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_179600
     * @tc.name      : TestCase_1796
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1796(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1796 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2894: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1796 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_179700
     * @tc.name      : TestCase_1797
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1797(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1797 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2895: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1797 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_179800
     * @tc.name      : TestCase_1798
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1798(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1798 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2896: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1798 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_179900
     * @tc.name      : TestCase_1799
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1799(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1799 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2897: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1799 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_180000
     * @tc.name      : TestCase_1800
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1800(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1800 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2898: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1800 ends.")
    }
}
