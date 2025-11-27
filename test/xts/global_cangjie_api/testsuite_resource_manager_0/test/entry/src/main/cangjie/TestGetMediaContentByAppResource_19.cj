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
class TestGetMediaContentByAppResource_19 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_180100
     * @tc.name      : TestCase_1801
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1801(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1801 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format3).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5004: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1801 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_180200
     * @tc.name      : TestCase_1802
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1802(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1802 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format3).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5005: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1802 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_180300
     * @tc.name      : TestCase_1803
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1803(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1803 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format3).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5006: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1803 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_180400
     * @tc.name      : TestCase_1804
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1804(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1804 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format3).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5007: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1804 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_180500
     * @tc.name      : TestCase_1805
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1805(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1805 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format3).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5008: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1805 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_180600
     * @tc.name      : TestCase_1806
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1806(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1806 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5009: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1806 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_180700
     * @tc.name      : TestCase_1807
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1807(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1807 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5010: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1807 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_180800
     * @tc.name      : TestCase_1808
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1808(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1808 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5011: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1808 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_180900
     * @tc.name      : TestCase_1809
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1809(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1809 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5012: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1809 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_181000
     * @tc.name      : TestCase_1810
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1810(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1810 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5013: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1810 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_181100
     * @tc.name      : TestCase_1811
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1811(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1811 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.layered_image).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5014: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1811 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_181200
     * @tc.name      : TestCase_1812
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1812(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1812 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.layered_image).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5015: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1812 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_181300
     * @tc.name      : TestCase_1813
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1813(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1813 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.layered_image).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5016: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1813 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_181400
     * @tc.name      : TestCase_1814
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1814(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1814 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.layered_image).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5017: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1814 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_181500
     * @tc.name      : TestCase_1815
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1815(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1815 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.layered_image).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5018: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1815 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_181600
     * @tc.name      : TestCase_1816
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1816(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1816 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_label).id
                ), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5019: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1816 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_181700
     * @tc.name      : TestCase_1817
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1817(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1817 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_label).id
                ), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5020: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1817 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_181800
     * @tc.name      : TestCase_1818
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1818(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1818 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_label).id
                ), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5021: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1818 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_181900
     * @tc.name      : TestCase_1819
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1819(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1819 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_label).id
                ), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5022: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1819 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_182000
     * @tc.name      : TestCase_1820
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1820(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1820 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_label).id
                ), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5023: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1820 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_182100
     * @tc.name      : TestCase_1821
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1821(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1821 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5024: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1821 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_182200
     * @tc.name      : TestCase_1822
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1822(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1822 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5025: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1822 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_182300
     * @tc.name      : TestCase_1823
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1823(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1823 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5026: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1823 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_182400
     * @tc.name      : TestCase_1824
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1824(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1824 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5027: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1824 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_182500
     * @tc.name      : TestCase_1825
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1825(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1825 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5028: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1825 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_182600
     * @tc.name      : TestCase_1826
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1826(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1826 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.profile.main_pages).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5029: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1826 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_182700
     * @tc.name      : TestCase_1827
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1827(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1827 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.profile.main_pages).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5030: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1827 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_182800
     * @tc.name      : TestCase_1828
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1828(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1828 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.profile.main_pages).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5031: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1828 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_182900
     * @tc.name      : TestCase_1829
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1829(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1829 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.profile.main_pages).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5032: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1829 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_183000
     * @tc.name      : TestCase_1830
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1830(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1830 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.profile.main_pages).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5033: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1830 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_183100
     * @tc.name      : TestCase_1831
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1831(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1831 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5034: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1831 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_183200
     * @tc.name      : TestCase_1832
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1832(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1832 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5035: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1832 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_183300
     * @tc.name      : TestCase_1833
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1833(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1833 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5036: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1833 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_183400
     * @tc.name      : TestCase_1834
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1834(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1834 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5037: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1834 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_183500
     * @tc.name      : TestCase_1835
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1835(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1835 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5038: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1835 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_183600
     * @tc.name      : TestCase_1836
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1836(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1836 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5039: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1836 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_183700
     * @tc.name      : TestCase_1837
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1837(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1837 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5040: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1837 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_183800
     * @tc.name      : TestCase_1838
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1838(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1838 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5041: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1838 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_183900
     * @tc.name      : TestCase_1839
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1839(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1839 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5042: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1839 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_184000
     * @tc.name      : TestCase_1840
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1840(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1840 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5043: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1840 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_184100
     * @tc.name      : TestCase_1841
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1841(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1841 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5044: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1841 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_184200
     * @tc.name      : TestCase_1842
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1842(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1842 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5045: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1842 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_184300
     * @tc.name      : TestCase_1843
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1843(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1843 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5046: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1843 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_184400
     * @tc.name      : TestCase_1844
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1844(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1844 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5047: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1844 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_184500
     * @tc.name      : TestCase_1845
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1845(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1845 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5048: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1845 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_184600
     * @tc.name      : TestCase_1846
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1846(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1846 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5049: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1846 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_184700
     * @tc.name      : TestCase_1847
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1847(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1847 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5050: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1847 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_184800
     * @tc.name      : TestCase_1848
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1848(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1848 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5051: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1848 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_184900
     * @tc.name      : TestCase_1849
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1849(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1849 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5052: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1849 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_185000
     * @tc.name      : TestCase_1850
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1850(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1850 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5053: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1850 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_185100
     * @tc.name      : TestCase_1851
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1851(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1851 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5054: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1851 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_185200
     * @tc.name      : TestCase_1852
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1852(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1852 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5055: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1852 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_185300
     * @tc.name      : TestCase_1853
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1853(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1853 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5056: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1853 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_185400
     * @tc.name      : TestCase_1854
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1854(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1854 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5057: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1854 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_185500
     * @tc.name      : TestCase_1855
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1855(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1855 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5058: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1855 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_185600
     * @tc.name      : TestCase_1856
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1856(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1856 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5059: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1856 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_185700
     * @tc.name      : TestCase_1857
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1857(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1857 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5060: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1857 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_185800
     * @tc.name      : TestCase_1858
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1858(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1858 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5061: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1858 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_185900
     * @tc.name      : TestCase_1859
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1859(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1859 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5062: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1859 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_186000
     * @tc.name      : TestCase_1860
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1860(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1860 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5063: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1860 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_186100
     * @tc.name      : TestCase_1861
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1861(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1861 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5064: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1861 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_186200
     * @tc.name      : TestCase_1862
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1862(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1862 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5065: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1862 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_186300
     * @tc.name      : TestCase_1863
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1863(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1863 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5066: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1863 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_186400
     * @tc.name      : TestCase_1864
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1864(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1864 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5067: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1864 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_186500
     * @tc.name      : TestCase_1865
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1865(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1865 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5068: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1865 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_186600
     * @tc.name      : TestCase_1866
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1866(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1866 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5069: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1866 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_186700
     * @tc.name      : TestCase_1867
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1867(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1867 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5070: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1867 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_186800
     * @tc.name      : TestCase_1868
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1868(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1868 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5071: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1868 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_186900
     * @tc.name      : TestCase_1869
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1869(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1869 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5072: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1869 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_187000
     * @tc.name      : TestCase_1870
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1870(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1870 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5073: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1870 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_187100
     * @tc.name      : TestCase_1871
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1871(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1871 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5074: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1871 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_187200
     * @tc.name      : TestCase_1872
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1872(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1872 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5075: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1872 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_187300
     * @tc.name      : TestCase_1873
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1873(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1873 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5076: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1873 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_187400
     * @tc.name      : TestCase_1874
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1874(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1874 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5077: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1874 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_187500
     * @tc.name      : TestCase_1875
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1875(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1875 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5078: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1875 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_187600
     * @tc.name      : TestCase_1876
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1876(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1876 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", 1u32),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5079: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1876 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_187700
     * @tc.name      : TestCase_1877
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1877(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1877 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", 1u32),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5080: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1877 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_187800
     * @tc.name      : TestCase_1878
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1878(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1878 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", 1u32),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5081: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1878 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_187900
     * @tc.name      : TestCase_1879
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1879(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1879 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", 1u32),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5082: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1879 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_188000
     * @tc.name      : TestCase_1880
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1880(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1880 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", 1u32),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5083: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1880 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_188100
     * @tc.name      : TestCase_1881
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1881(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1881 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", 0u32),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5084: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1881 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_188200
     * @tc.name      : TestCase_1882
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1882(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1882 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", 0u32),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5085: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1882 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_188300
     * @tc.name      : TestCase_1883
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1883(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1883 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", 0u32),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5086: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1883 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_188400
     * @tc.name      : TestCase_1884
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1884(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1884 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", 0u32),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5087: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1884 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_188500
     * @tc.name      : TestCase_1885
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1885(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1885 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", 0u32),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5088: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1885 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_189100
     * @tc.name      : TestCase_1891
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1891(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1891 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", UInt32.Min),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5094: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1891 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_189200
     * @tc.name      : TestCase_1892
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1892(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1892 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", UInt32.Min),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5095: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1892 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_189300
     * @tc.name      : TestCase_1893
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1893(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1893 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", UInt32.Min),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5096: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1893 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_189400
     * @tc.name      : TestCase_1894
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1894(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1894 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", UInt32.Min),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5097: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1894 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_189500
     * @tc.name      : TestCase_1895
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1895(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1895 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", UInt32.Min),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5098: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1895 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_189600
     * @tc.name      : TestCase_1896
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1896(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1896 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", UInt32.Max),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#5099: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1896 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_189700
     * @tc.name      : TestCase_1897
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1897(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1897 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", UInt32.Max),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#5100: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1897 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_189800
     * @tc.name      : TestCase_1898
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1898(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1898 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", UInt32.Max),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#5101: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1898 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_189900
     * @tc.name      : TestCase_1899
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1899(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1899 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", UInt32.Max),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#5102: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1899 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_190000
     * @tc.name      : TestCase_1900
     * @tc.desc      : get MediaContent by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1900(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1900 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("com.example.myapplication", "entry", UInt32.Max),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#5103: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1900 ends.")
    }
}
