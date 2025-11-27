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
class TestGetMediaContentByAppResource_4 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.Test_Format3).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3504: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.Test_Format3).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3505: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.Test_Format3).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3506: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.Test_Format3).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3507: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.Test_Format3).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3508: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3509: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3510: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3511: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_30900
     * @tc.name      : TestCase_309
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3512: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_31000
     * @tc.name      : TestCase_310
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3513: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.media.layered_image).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3514: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_31200
     * @tc.name      : TestCase_312
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.media.layered_image).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3515: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_31300
     * @tc.name      : TestCase_313
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.media.layered_image).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3516: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_31400
     * @tc.name      : TestCase_314
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.media.layered_image).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3517: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_31500
     * @tc.name      : TestCase_315
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.media.layered_image).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3518: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3519: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_31700
     * @tc.name      : TestCase_317
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3520: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_31800
     * @tc.name      : TestCase_318
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3521: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_31900
     * @tc.name      : TestCase_319
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3522: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_32000
     * @tc.name      : TestCase_320
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.string.EntryAbility_label).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3523: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_32100
     * @tc.name      : TestCase_321
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3524: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_32200
     * @tc.name      : TestCase_322
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_322(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3525: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_32300
     * @tc.name      : TestCase_323
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_323(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3526: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_32400
     * @tc.name      : TestCase_324
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_324(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3527: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_32500
     * @tc.name      : TestCase_325
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_325(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.media.startIcon).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3528: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_32600
     * @tc.name      : TestCase_326
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3529: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_32700
     * @tc.name      : TestCase_327
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_327(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3530: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_32800
     * @tc.name      : TestCase_328
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_328(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3531: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_32900
     * @tc.name      : TestCase_329
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_329(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3532: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_33000
     * @tc.name      : TestCase_330
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_330(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3533: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_33100
     * @tc.name      : TestCase_331
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3534: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_33200
     * @tc.name      : TestCase_332
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_332(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3535: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_33300
     * @tc.name      : TestCase_333
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_333(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3536: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_33400
     * @tc.name      : TestCase_334
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_334(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3537: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_33500
     * @tc.name      : TestCase_335
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_335(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3538: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_33600
     * @tc.name      : TestCase_336
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3539: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_33700
     * @tc.name      : TestCase_337
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_337(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3540: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_33800
     * @tc.name      : TestCase_338
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_338(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3541: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_33900
     * @tc.name      : TestCase_339
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_339(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3542: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_34000
     * @tc.name      : TestCase_340
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_340(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3543: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_34100
     * @tc.name      : TestCase_341
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3544: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_34200
     * @tc.name      : TestCase_342
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_342(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3545: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_34300
     * @tc.name      : TestCase_343
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_343(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3546: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_34400
     * @tc.name      : TestCase_344
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_344(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3547: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_34500
     * @tc.name      : TestCase_345
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_345(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3548: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_34600
     * @tc.name      : TestCase_346
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_346(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3549: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_34700
     * @tc.name      : TestCase_347
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_347(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3550: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_34800
     * @tc.name      : TestCase_348
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_348(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3551: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_34900
     * @tc.name      : TestCase_349
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_349(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3552: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_35000
     * @tc.name      : TestCase_350
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_350(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3553: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_35100
     * @tc.name      : TestCase_351
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_351(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3554: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_35200
     * @tc.name      : TestCase_352
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_352(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3555: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_35300
     * @tc.name      : TestCase_353
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_353(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3556: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_35400
     * @tc.name      : TestCase_354
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_354(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3557: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_35500
     * @tc.name      : TestCase_355
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_355(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3558: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_35600
     * @tc.name      : TestCase_356
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_356(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.boolean.test_boolean1).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3559: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_35700
     * @tc.name      : TestCase_357
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_357(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.boolean.test_boolean1).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3560: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_35800
     * @tc.name      : TestCase_358
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_358(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.boolean.test_boolean1).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3561: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_35900
     * @tc.name      : TestCase_359
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_359(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.boolean.test_boolean1).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3562: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_36000
     * @tc.name      : TestCase_360
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_360(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.boolean.test_boolean1).id), density: ScreenDensity.ScreenXxldpi
            )
            @Expect("assertion#3563: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_36100
     * @tc.name      : TestCase_361
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_361(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.boolean.test_boolean0).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3564: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_36200
     * @tc.name      : TestCase_362
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_362(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.boolean.test_boolean0).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3565: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_36300
     * @tc.name      : TestCase_363
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_363(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.boolean.test_boolean0).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3566: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_36400
     * @tc.name      : TestCase_364
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_364(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.boolean.test_boolean0).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3567: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_36500
     * @tc.name      : TestCase_365
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_365(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("", "nonexisting_module_name", @r(app.boolean.test_boolean0).id), density: ScreenDensity.ScreenXxldpi
            )
            @Expect("assertion#3568: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_36600
     * @tc.name      : TestCase_366
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_366(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.boolean.boolean_3).id
            ), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3569: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_36700
     * @tc.name      : TestCase_367
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_367(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.boolean.boolean_3).id
            ), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3570: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_36800
     * @tc.name      : TestCase_368
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_368(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.boolean.boolean_3).id
            ), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3571: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_36900
     * @tc.name      : TestCase_369
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_369(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.boolean.boolean_3).id
            ), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3572: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_37000
     * @tc.name      : TestCase_370
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_370(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.boolean.boolean_3).id
            ), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3573: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_37100
     * @tc.name      : TestCase_371
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_371(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.boolean.boolean_4).id
            ), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3574: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_37200
     * @tc.name      : TestCase_372
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_372(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.boolean.boolean_4).id
            ), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3575: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_37300
     * @tc.name      : TestCase_373
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_373(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.boolean.boolean_4).id
            ), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3576: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_37400
     * @tc.name      : TestCase_374
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_374(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.boolean.boolean_4).id
            ), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3577: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_37500
     * @tc.name      : TestCase_375
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_375(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "nonexisting_module_name", @r(app.boolean.boolean_4).id
            ), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3578: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_37600
     * @tc.name      : TestCase_376
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_376(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", 1u32), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3579: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_37700
     * @tc.name      : TestCase_377
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_377(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", 1u32), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3580: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_37800
     * @tc.name      : TestCase_378
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_378(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", 1u32), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3581: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_37900
     * @tc.name      : TestCase_379
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_379(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", 1u32), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3582: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_38000
     * @tc.name      : TestCase_380
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=1u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_380(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", 1u32), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3583: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_38100
     * @tc.name      : TestCase_381
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_381(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", 0u32), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3584: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_38200
     * @tc.name      : TestCase_382
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_382(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", 0u32), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3585: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_38300
     * @tc.name      : TestCase_383
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_383(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", 0u32), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3586: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_38400
     * @tc.name      : TestCase_384
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_384(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", 0u32), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3587: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_38500
     * @tc.name      : TestCase_385
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=0u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_385(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", 0u32), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3588: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_39100
     * @tc.name      : TestCase_391
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", UInt32.Min), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3594: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_39200
     * @tc.name      : TestCase_392
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_392(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", UInt32.Min), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3595: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_39300
     * @tc.name      : TestCase_393
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_393(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", UInt32.Min), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3596: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_39400
     * @tc.name      : TestCase_394
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_394(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", UInt32.Min), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3597: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_39500
     * @tc.name      : TestCase_395
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=UInt32.Min, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_395(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", UInt32.Min), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3598: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_39600
     * @tc.name      : TestCase_396
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_396(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", UInt32.Max), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#3599: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_39700
     * @tc.name      : TestCase_397
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_397(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", UInt32.Max), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#3600: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_39800
     * @tc.name      : TestCase_398
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_398(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", UInt32.Max), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#3601: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_39900
     * @tc.name      : TestCase_399
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_399(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", UInt32.Max), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#3602: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_40000
     * @tc.name      : TestCase_400
     * @tc.desc      : get MediaContent by AppResource(bundleName="", moduleName="entry", resourceId=UInt32.Max, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("", "entry", UInt32.Max), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#3603: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 ends.")
    }
}
