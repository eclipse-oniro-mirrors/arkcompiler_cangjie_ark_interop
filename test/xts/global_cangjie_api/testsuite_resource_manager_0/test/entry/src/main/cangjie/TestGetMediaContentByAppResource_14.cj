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
class TestGetMediaContentByAppResource_14 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_130100
     * @tc.name      : TestCase_1301
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1301 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4504: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_130200
     * @tc.name      : TestCase_1302
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1302 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4505: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_130300
     * @tc.name      : TestCase_1303
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1303 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4506: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_130400
     * @tc.name      : TestCase_1304
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1304 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4507: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_130500
     * @tc.name      : TestCase_1305
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1305 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format3).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4508: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_130600
     * @tc.name      : TestCase_1306
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1306(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1306 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4509: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_130700
     * @tc.name      : TestCase_1307
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1307(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1307 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4510: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_130800
     * @tc.name      : TestCase_1308
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1308(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1308 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4511: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_130900
     * @tc.name      : TestCase_1309
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1309(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1309 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4512: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_131000
     * @tc.name      : TestCase_1310
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1310(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1310 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4513: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_131100
     * @tc.name      : TestCase_1311
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1311(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1311 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4514: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_131200
     * @tc.name      : TestCase_1312
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1312(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1312 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4515: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_131300
     * @tc.name      : TestCase_1313
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1313(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1313 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4516: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_131400
     * @tc.name      : TestCase_1314
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1314(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1314 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4517: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_131500
     * @tc.name      : TestCase_1315
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1315(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1315 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.layered_image).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4518: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_131600
     * @tc.name      : TestCase_1316
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1316(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1316 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4519: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_131700
     * @tc.name      : TestCase_1317
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1317(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1317 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4520: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_131800
     * @tc.name      : TestCase_1318
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1318(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1318 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4521: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_131900
     * @tc.name      : TestCase_1319
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1319(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1319 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4522: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_132000
     * @tc.name      : TestCase_1320
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1320(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1320 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4523: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_132100
     * @tc.name      : TestCase_1321
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1321(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1321 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4524: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_132200
     * @tc.name      : TestCase_1322
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1322(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1322 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4525: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_132300
     * @tc.name      : TestCase_1323
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1323(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1323 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4526: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_132400
     * @tc.name      : TestCase_1324
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1324(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1324 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4527: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_132500
     * @tc.name      : TestCase_1325
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1325(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1325 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4528: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_132600
     * @tc.name      : TestCase_1326
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1326(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1326 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4529: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_132700
     * @tc.name      : TestCase_1327
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1327(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1327 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4530: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_132800
     * @tc.name      : TestCase_1328
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1328(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1328 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4531: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_132900
     * @tc.name      : TestCase_1329
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1329(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1329 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4532: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_133000
     * @tc.name      : TestCase_1330
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1330(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1330 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.profile.main_pages).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4533: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_133100
     * @tc.name      : TestCase_1331
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1331(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1331 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4534: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_133200
     * @tc.name      : TestCase_1332
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1332(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1332 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4535: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_133300
     * @tc.name      : TestCase_1333
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1333(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1333 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4536: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_133400
     * @tc.name      : TestCase_1334
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1334(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1334 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4537: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_133500
     * @tc.name      : TestCase_1335
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1335(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1335 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4538: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_133600
     * @tc.name      : TestCase_1336
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1336(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1336 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4539: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_133700
     * @tc.name      : TestCase_1337
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1337(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1337 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4540: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_133800
     * @tc.name      : TestCase_1338
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1338(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1338 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4541: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_133900
     * @tc.name      : TestCase_1339
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1339(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1339 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4542: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_134000
     * @tc.name      : TestCase_1340
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1340(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1340 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4543: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_134100
     * @tc.name      : TestCase_1341
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1341(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1341 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4544: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_134200
     * @tc.name      : TestCase_1342
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1342(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1342 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4545: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_134300
     * @tc.name      : TestCase_1343
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1343(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1343 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4546: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_134400
     * @tc.name      : TestCase_1344
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1344(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1344 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4547: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_134500
     * @tc.name      : TestCase_1345
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1345(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1345 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4548: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_134600
     * @tc.name      : TestCase_1346
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1346(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1346 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4549: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_134700
     * @tc.name      : TestCase_1347
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1347(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1347 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4550: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_134800
     * @tc.name      : TestCase_1348
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1348(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1348 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4551: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_134900
     * @tc.name      : TestCase_1349
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1349(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1349 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4552: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_135000
     * @tc.name      : TestCase_1350
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1350(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1350 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4553: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_135100
     * @tc.name      : TestCase_1351
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1351(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1351 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4554: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_135200
     * @tc.name      : TestCase_1352
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1352(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1352 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4555: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_135300
     * @tc.name      : TestCase_1353
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1353(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1353 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4556: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_135400
     * @tc.name      : TestCase_1354
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1354(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1354 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4557: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_135500
     * @tc.name      : TestCase_1355
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1355(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1355 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4558: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_135600
     * @tc.name      : TestCase_1356
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1356(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1356 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4559: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_135700
     * @tc.name      : TestCase_1357
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1357(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1357 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4560: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_135800
     * @tc.name      : TestCase_1358
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1358(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1358 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4561: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_135900
     * @tc.name      : TestCase_1359
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1359(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1359 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4562: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_136000
     * @tc.name      : TestCase_1360
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1360(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1360 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4563: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_136100
     * @tc.name      : TestCase_1361
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1361(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1361 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4564: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_136200
     * @tc.name      : TestCase_1362
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1362(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1362 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4565: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_136300
     * @tc.name      : TestCase_1363
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1363(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1363 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4566: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_136400
     * @tc.name      : TestCase_1364
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1364(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1364 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4567: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_136500
     * @tc.name      : TestCase_1365
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1365(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1365 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4568: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_136600
     * @tc.name      : TestCase_1366
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1366(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1366 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4569: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_136700
     * @tc.name      : TestCase_1367
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1367(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1367 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4570: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_136800
     * @tc.name      : TestCase_1368
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1368(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1368 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4571: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_136900
     * @tc.name      : TestCase_1369
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1369(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1369 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4572: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_137000
     * @tc.name      : TestCase_1370
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1370(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1370 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4573: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_137100
     * @tc.name      : TestCase_1371
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1371(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1371 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4574: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_137200
     * @tc.name      : TestCase_1372
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1372(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1372 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4575: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_137300
     * @tc.name      : TestCase_1373
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1373(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1373 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4576: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_137400
     * @tc.name      : TestCase_1374
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1374(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1374 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4577: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_137500
     * @tc.name      : TestCase_1375
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1375(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1375 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4578: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_137600
     * @tc.name      : TestCase_1376
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1376(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1376 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", 1u32),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4579: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_137700
     * @tc.name      : TestCase_1377
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1377(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1377 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", 1u32),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4580: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_137800
     * @tc.name      : TestCase_1378
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1378(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1378 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", 1u32),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4581: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_137900
     * @tc.name      : TestCase_1379
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1379(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1379 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", 1u32),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4582: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_138000
     * @tc.name      : TestCase_1380
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1380(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1380 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", 1u32),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4583: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1380 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_138100
     * @tc.name      : TestCase_1381
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1381(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1381 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", 0u32),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4584: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_138200
     * @tc.name      : TestCase_1382
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1382(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1382 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", 0u32),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4585: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_138300
     * @tc.name      : TestCase_1383
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1383(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1383 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", 0u32),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4586: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_138400
     * @tc.name      : TestCase_1384
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1384(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1384 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", 0u32),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4587: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_138500
     * @tc.name      : TestCase_1385
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1385(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1385 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", 0u32),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4588: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_139100
     * @tc.name      : TestCase_1391
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1391(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1391 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4594: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_139200
     * @tc.name      : TestCase_1392
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1392(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1392 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4595: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_139300
     * @tc.name      : TestCase_1393
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1393(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1393 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4596: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_139400
     * @tc.name      : TestCase_1394
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1394(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1394 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4597: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_139500
     * @tc.name      : TestCase_1395
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1395(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1395 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4598: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_139600
     * @tc.name      : TestCase_1396
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1396(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1396 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4599: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_139700
     * @tc.name      : TestCase_1397
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1397(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1397 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4600: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_139800
     * @tc.name      : TestCase_1398
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1398(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1398 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4601: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_139900
     * @tc.name      : TestCase_1399
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1399(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1399 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4602: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_140000
     * @tc.name      : TestCase_1400
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1400(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1400 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4603: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1400 ends.")
    }
}
