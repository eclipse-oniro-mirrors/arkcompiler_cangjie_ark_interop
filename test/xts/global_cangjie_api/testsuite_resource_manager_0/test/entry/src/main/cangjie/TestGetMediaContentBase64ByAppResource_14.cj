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
class TestGetMediaContentBase64ByAppResource_14 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_130100
     * @tc.name      : TestCase_1301
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1301 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2399: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_130200
     * @tc.name      : TestCase_1302
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1302 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2400: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_130300
     * @tc.name      : TestCase_1303
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1303 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2401: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_130400
     * @tc.name      : TestCase_1304
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1304 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2402: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_130500
     * @tc.name      : TestCase_1305
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1305 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2403: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_130600
     * @tc.name      : TestCase_1306
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1306(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1306 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2404: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_130700
     * @tc.name      : TestCase_1307
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1307(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1307 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2405: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_130800
     * @tc.name      : TestCase_1308
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1308(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1308 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2406: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_130900
     * @tc.name      : TestCase_1309
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1309(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1309 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2407: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_131000
     * @tc.name      : TestCase_1310
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1310(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1310 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2408: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_131100
     * @tc.name      : TestCase_1311
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1311(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1311 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2409: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_131200
     * @tc.name      : TestCase_1312
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1312(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1312 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2410: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_131300
     * @tc.name      : TestCase_1313
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1313(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1313 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2411: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_131400
     * @tc.name      : TestCase_1314
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1314(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1314 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2412: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_131500
     * @tc.name      : TestCase_1315
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1315(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1315 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2413: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_131600
     * @tc.name      : TestCase_1316
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1316(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1316 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2414: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_131700
     * @tc.name      : TestCase_1317
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1317(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1317 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2415: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_131800
     * @tc.name      : TestCase_1318
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1318(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1318 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2416: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_131900
     * @tc.name      : TestCase_1319
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1319(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1319 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2417: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_132000
     * @tc.name      : TestCase_1320
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1320(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1320 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2418: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_132100
     * @tc.name      : TestCase_1321
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1321(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1321 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2419: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_132200
     * @tc.name      : TestCase_1322
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1322(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1322 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2420: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_132300
     * @tc.name      : TestCase_1323
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1323(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1323 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2421: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_132400
     * @tc.name      : TestCase_1324
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1324(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1324 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2422: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_132500
     * @tc.name      : TestCase_1325
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1325(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1325 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2423: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_132600
     * @tc.name      : TestCase_1326
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1326(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1326 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2424: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_132700
     * @tc.name      : TestCase_1327
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1327(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1327 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2425: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_132800
     * @tc.name      : TestCase_1328
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1328(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1328 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2426: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_132900
     * @tc.name      : TestCase_1329
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1329(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1329 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2427: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_133000
     * @tc.name      : TestCase_1330
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1330(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1330 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2428: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_133100
     * @tc.name      : TestCase_1331
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1331(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1331 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2429: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_133200
     * @tc.name      : TestCase_1332
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1332(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1332 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2430: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_133300
     * @tc.name      : TestCase_1333
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1333(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1333 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2431: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_133400
     * @tc.name      : TestCase_1334
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1334(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1334 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2432: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_133500
     * @tc.name      : TestCase_1335
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1335(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1335 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2433: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_133600
     * @tc.name      : TestCase_1336
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1336(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1336 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2434: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_133700
     * @tc.name      : TestCase_1337
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1337(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1337 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2435: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_133800
     * @tc.name      : TestCase_1338
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1338(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1338 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2436: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_133900
     * @tc.name      : TestCase_1339
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1339(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1339 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2437: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_134000
     * @tc.name      : TestCase_1340
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1340(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1340 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2438: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_134100
     * @tc.name      : TestCase_1341
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1341(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1341 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2439: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_134200
     * @tc.name      : TestCase_1342
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1342(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1342 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2440: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_134300
     * @tc.name      : TestCase_1343
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1343(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1343 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2441: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_134400
     * @tc.name      : TestCase_1344
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1344(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1344 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2442: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_134500
     * @tc.name      : TestCase_1345
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1345(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1345 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2443: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_134600
     * @tc.name      : TestCase_1346
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1346(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1346 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2444: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_134700
     * @tc.name      : TestCase_1347
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1347(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1347 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2445: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_134800
     * @tc.name      : TestCase_1348
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1348(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1348 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2446: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_134900
     * @tc.name      : TestCase_1349
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1349(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1349 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2447: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_135000
     * @tc.name      : TestCase_1350
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1350(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1350 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2448: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_135100
     * @tc.name      : TestCase_1351
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1351(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1351 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2449: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_135200
     * @tc.name      : TestCase_1352
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1352(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1352 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2450: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_135300
     * @tc.name      : TestCase_1353
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1353(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1353 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2451: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_135400
     * @tc.name      : TestCase_1354
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1354(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1354 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2452: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_135500
     * @tc.name      : TestCase_1355
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1355(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1355 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2453: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_135600
     * @tc.name      : TestCase_1356
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1356(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1356 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2454: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_135700
     * @tc.name      : TestCase_1357
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1357(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1357 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2455: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_135800
     * @tc.name      : TestCase_1358
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1358(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1358 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2456: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_135900
     * @tc.name      : TestCase_1359
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1359(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1359 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2457: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_136000
     * @tc.name      : TestCase_1360
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1360(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1360 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2458: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_136100
     * @tc.name      : TestCase_1361
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1361(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1361 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2459: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_136200
     * @tc.name      : TestCase_1362
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1362(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1362 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2460: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_136300
     * @tc.name      : TestCase_1363
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1363(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1363 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2461: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_136400
     * @tc.name      : TestCase_1364
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1364(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1364 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2462: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_136500
     * @tc.name      : TestCase_1365
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1365(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1365 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2463: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_136600
     * @tc.name      : TestCase_1366
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1366(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1366 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2464: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_136700
     * @tc.name      : TestCase_1367
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1367(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1367 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2465: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_136800
     * @tc.name      : TestCase_1368
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1368(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1368 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2466: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_136900
     * @tc.name      : TestCase_1369
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1369(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1369 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2467: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_137000
     * @tc.name      : TestCase_1370
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1370(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1370 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2468: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_137100
     * @tc.name      : TestCase_1371
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1371(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1371 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2469: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_137200
     * @tc.name      : TestCase_1372
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1372(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1372 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2470: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_137300
     * @tc.name      : TestCase_1373
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1373(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1373 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2471: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_137400
     * @tc.name      : TestCase_1374
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1374(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1374 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2472: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_137500
     * @tc.name      : TestCase_1375
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1375(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1375 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2473: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_137600
     * @tc.name      : TestCase_1376
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1376(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1376 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", 1u32),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2474: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_137700
     * @tc.name      : TestCase_1377
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1377(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1377 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", 1u32),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2475: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_137800
     * @tc.name      : TestCase_1378
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1378(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1378 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", 1u32),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2476: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_137900
     * @tc.name      : TestCase_1379
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1379(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1379 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", 1u32),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2477: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_138000
     * @tc.name      : TestCase_1380
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1380(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1380 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", 1u32),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2478: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1380 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_138100
     * @tc.name      : TestCase_1381
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1381(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1381 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", 0u32),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2479: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_138200
     * @tc.name      : TestCase_1382
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1382(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1382 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", 0u32),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2480: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_138300
     * @tc.name      : TestCase_1383
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1383(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1383 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", 0u32),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2481: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_138400
     * @tc.name      : TestCase_1384
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1384(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1384 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", 0u32),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2482: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_138500
     * @tc.name      : TestCase_1385
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1385(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1385 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", 0u32),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2483: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_139100
     * @tc.name      : TestCase_1391
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1391(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1391 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2489: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_139200
     * @tc.name      : TestCase_1392
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1392(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1392 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2490: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_139300
     * @tc.name      : TestCase_1393
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1393(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1393 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2491: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_139400
     * @tc.name      : TestCase_1394
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1394(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1394 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2492: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_139500
     * @tc.name      : TestCase_1395
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1395(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1395 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2493: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_139600
     * @tc.name      : TestCase_1396
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1396(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1396 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
                density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#2494: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_139700
     * @tc.name      : TestCase_1397
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1397(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1397 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
                density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#2495: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_139800
     * @tc.name      : TestCase_1398
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1398(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1398 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
                density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#2496: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_139900
     * @tc.name      : TestCase_1399
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1399(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1399 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
                density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#2497: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentBase64ByAppResource_140000
     * @tc.name      : TestCase_1400
     * @tc.desc      : get MediaContentBase64 by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1400(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1400 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContentBase64.")
        try {
            getResourceManager().getMediaContentBase64(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
                density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#2498: not throw", "fail to get MediaContentBase64.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1400 ends.")
    }
}
