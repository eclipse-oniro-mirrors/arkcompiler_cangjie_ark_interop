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
class TestGetMediaContentByAppResource_13 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_120100
     * @tc.name      : TestCase_1201
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1201(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1201 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4404: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_120200
     * @tc.name      : TestCase_1202
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1202(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1202 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4405: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_120300
     * @tc.name      : TestCase_1203
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1203(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1203 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4406: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_120400
     * @tc.name      : TestCase_1204
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1204(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1204 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4407: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_120500
     * @tc.name      : TestCase_1205
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.profile.main_pages).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1205(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1205 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.profile.main_pages).id), density: ScreenDensity.ScreenXxldpi
            )
            @Expect("assertion#4408: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_120600
     * @tc.name      : TestCase_1206
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1206(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1206 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4409: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_120700
     * @tc.name      : TestCase_1207
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1207(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1207 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4410: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_120800
     * @tc.name      : TestCase_1208
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1208(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1208 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4411: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_120900
     * @tc.name      : TestCase_1209
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1209(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1209 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4412: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_121000
     * @tc.name      : TestCase_1210
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.color.start_window_background).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1210(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1210 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.color.start_window_background).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4413: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1210 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_121100
     * @tc.name      : TestCase_1211
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1211(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1211 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4414: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_121200
     * @tc.name      : TestCase_1212
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1212(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1212 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4415: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_121300
     * @tc.name      : TestCase_1213
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1213(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1213 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4416: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_121400
     * @tc.name      : TestCase_1214
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1214(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1214 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4417: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_121500
     * @tc.name      : TestCase_1215
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1215(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1215 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4418: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_121600
     * @tc.name      : TestCase_1216
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1216(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1216 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4419: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_121700
     * @tc.name      : TestCase_1217
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1217(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1217 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4420: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_121800
     * @tc.name      : TestCase_1218
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1218(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1218 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4421: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_121900
     * @tc.name      : TestCase_1219
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1219(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1219 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4422: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_122000
     * @tc.name      : TestCase_1220
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.float.float_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1220(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1220 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.float.float_2).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4423: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_122100
     * @tc.name      : TestCase_1221
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1221(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1221 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4424: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_122200
     * @tc.name      : TestCase_1222
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1222(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1222 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4425: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_122300
     * @tc.name      : TestCase_1223
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1223(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1223 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4426: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_122400
     * @tc.name      : TestCase_1224
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1224(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1224 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4427: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_122500
     * @tc.name      : TestCase_1225
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1225(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1225 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4428: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_122600
     * @tc.name      : TestCase_1226
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1226(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1226 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4429: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_122700
     * @tc.name      : TestCase_1227
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1227(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1227 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4430: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_122800
     * @tc.name      : TestCase_1228
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1228(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1228 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4431: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_122900
     * @tc.name      : TestCase_1229
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1229(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1229 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4432: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_123000
     * @tc.name      : TestCase_1230
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.integer.int_2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1230(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1230 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "\0", @r(app.integer.int_2).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4433: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1230 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_123100
     * @tc.name      : TestCase_1231
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1231(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1231 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4434: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_123200
     * @tc.name      : TestCase_1232
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1232(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1232 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4435: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_123300
     * @tc.name      : TestCase_1233
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1233(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1233 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4436: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_123400
     * @tc.name      : TestCase_1234
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1234(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1234 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4437: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_123500
     * @tc.name      : TestCase_1235
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1235(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1235 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4438: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_123600
     * @tc.name      : TestCase_1236
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1236(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1236 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4439: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_123700
     * @tc.name      : TestCase_1237
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1237(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1237 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4440: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_123800
     * @tc.name      : TestCase_1238
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1238(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1238 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4441: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_123900
     * @tc.name      : TestCase_1239
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1239(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1239 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4442: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_124000
     * @tc.name      : TestCase_1240
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1240(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1240 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.test_boolean0).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4443: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1240 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_124100
     * @tc.name      : TestCase_1241
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1241(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1241 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_3).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4444: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_124200
     * @tc.name      : TestCase_1242
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1242(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1242 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_3).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4445: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_124300
     * @tc.name      : TestCase_1243
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1243(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1243 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_3).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4446: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_124400
     * @tc.name      : TestCase_1244
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1244(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1244 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_3).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4447: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_124500
     * @tc.name      : TestCase_1245
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1245(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1245 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_3).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4448: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_124600
     * @tc.name      : TestCase_1246
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1246(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1246 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_4).id), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4449: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_124700
     * @tc.name      : TestCase_1247
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1247(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1247 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_4).id), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4450: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_124800
     * @tc.name      : TestCase_1248
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1248(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1248 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_4).id), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4451: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_124900
     * @tc.name      : TestCase_1249
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1249(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1249 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_4).id), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4452: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_125000
     * @tc.name      : TestCase_1250
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1250(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1250 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "\0", @r(app.boolean.boolean_4).id), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4453: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_125100
     * @tc.name      : TestCase_1251
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=1u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1251(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1251 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 1u32
            ), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4454: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_125200
     * @tc.name      : TestCase_1252
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=1u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1252(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1252 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 1u32
            ), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4455: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_125300
     * @tc.name      : TestCase_1253
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=1u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1253(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1253 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 1u32
            ), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4456: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_125400
     * @tc.name      : TestCase_1254
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=1u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1254(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1254 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 1u32
            ), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4457: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_125500
     * @tc.name      : TestCase_1255
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=1u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1255(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1255 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 1u32
            ), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4458: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_125600
     * @tc.name      : TestCase_1256
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=0u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1256(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1256 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 0u32
            ), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4459: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_125700
     * @tc.name      : TestCase_1257
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=0u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1257(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1257 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 0u32
            ), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4460: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_125800
     * @tc.name      : TestCase_1258
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=0u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1258(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1258 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 0u32
            ), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4461: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_125900
     * @tc.name      : TestCase_1259
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=0u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1259(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1259 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 0u32
            ), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4462: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_126000
     * @tc.name      : TestCase_1260
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=0u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1260(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1260 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 0u32
            ), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4463: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_126100
     * @tc.name      : TestCase_1261
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=2u32, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1261(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1261 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 2u32
            ), density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4464: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_126200
     * @tc.name      : TestCase_1262
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=2u32, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1262(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1262 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 2u32
            ), density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4465: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_126300
     * @tc.name      : TestCase_1263
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=2u32, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1263(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1263 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 2u32
            ), density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4466: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_126400
     * @tc.name      : TestCase_1264
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=2u32, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1264(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1264 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 2u32
            ), density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4467: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_126500
     * @tc.name      : TestCase_1265
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=2u32, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1265(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1265 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(AppResource("non.existing.bundle_name", "nonexisting_module_name", 2u32
            ), density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4468: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_126600
     * @tc.name      : TestCase_1266
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Min, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1266(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1266 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Min), density: ScreenDensity.ScreenSdpi
            )
            @Expect("assertion#4469: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_126700
     * @tc.name      : TestCase_1267
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Min, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1267(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1267 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Min), density: ScreenDensity.ScreenMdpi
            )
            @Expect("assertion#4470: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_126800
     * @tc.name      : TestCase_1268
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Min, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1268(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1268 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Min), density: ScreenDensity.ScreenLdpi
            )
            @Expect("assertion#4471: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_126900
     * @tc.name      : TestCase_1269
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Min, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1269(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1269 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Min),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4472: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_127000
     * @tc.name      : TestCase_1270
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Min, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1270(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1270 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Min),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4473: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1270 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_127100
     * @tc.name      : TestCase_1271
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Max, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1271(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1271 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Max), density: ScreenDensity.ScreenSdpi
            )
            @Expect("assertion#4474: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1271 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_127200
     * @tc.name      : TestCase_1272
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Max, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1272(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1272 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Max), density: ScreenDensity.ScreenMdpi
            )
            @Expect("assertion#4475: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1272 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_127300
     * @tc.name      : TestCase_1273
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Max, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1273(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1273 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Max), density: ScreenDensity.ScreenLdpi
            )
            @Expect("assertion#4476: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1273 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_127400
     * @tc.name      : TestCase_1274
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Max, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1274(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1274 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Max),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4477: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1274 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_127500
     * @tc.name      : TestCase_1275
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=UInt32.Max, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1275(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1275 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", UInt32.Max),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4478: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1275 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_127600
     * @tc.name      : TestCase_1276
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1276(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1276 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.module_desc).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4479: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1276 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_127700
     * @tc.name      : TestCase_1277
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1277(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1277 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.module_desc).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4480: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1277 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_127800
     * @tc.name      : TestCase_1278
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1278(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1278 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.module_desc).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4481: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1278 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_127900
     * @tc.name      : TestCase_1279
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1279(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1279 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.module_desc).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4482: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1279 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_128000
     * @tc.name      : TestCase_1280
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1280(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1280 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.module_desc).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4483: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1280 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_128100
     * @tc.name      : TestCase_1281
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1281(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1281 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.strarray.sizelist).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4484: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1281 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_128200
     * @tc.name      : TestCase_1282
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1282(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1282 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.strarray.sizelist).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4485: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1282 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_128300
     * @tc.name      : TestCase_1283
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1283(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1283 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.strarray.sizelist).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4486: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1283 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_128400
     * @tc.name      : TestCase_1284
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1284(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1284 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.strarray.sizelist).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4487: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1284 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_128500
     * @tc.name      : TestCase_1285
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1285(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1285 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.strarray.sizelist).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4488: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1285 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_128600
     * @tc.name      : TestCase_1286
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1286(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1286 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.plural.plural_name).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4489: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1286 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_128700
     * @tc.name      : TestCase_1287
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1287(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1287 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.plural.plural_name).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4490: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1287 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_128800
     * @tc.name      : TestCase_1288
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1288(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1288 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.plural.plural_name).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4491: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1288 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_128900
     * @tc.name      : TestCase_1289
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1289(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1289 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.plural.plural_name).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4492: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1289 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_129000
     * @tc.name      : TestCase_1290
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1290(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1290 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.plural.plural_name).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4493: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1290 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_129100
     * @tc.name      : TestCase_1291
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1291(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1291 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format1).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4494: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1291 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_129200
     * @tc.name      : TestCase_1292
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1292(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1292 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format1).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4495: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1292 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_129300
     * @tc.name      : TestCase_1293
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1293(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1293 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format1).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4496: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1293 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_129400
     * @tc.name      : TestCase_1294
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1294(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1294 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format1).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4497: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1294 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_129500
     * @tc.name      : TestCase_1295
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1295(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1295 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format1).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4498: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1295 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_129600
     * @tc.name      : TestCase_1296
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenSdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1296(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1296 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format2).id),
               density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#4499: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1296 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_129700
     * @tc.name      : TestCase_1297
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenMdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1297(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1297 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format2).id),
               density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#4500: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1297 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_129800
     * @tc.name      : TestCase_1298
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenLdpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1298(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1298 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format2).id),
               density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#4501: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1298 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_129900
     * @tc.name      : TestCase_1299
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenXldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1299(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1299 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format2).id),
               density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#4502: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1299 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaContentByAppResource_130000
     * @tc.name      : TestCase_1300
     * @tc.desc      : get MediaContent by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, density=ScreenDensity.ScreenXxldpi).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1300(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1300 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get MediaContent.")
        try {
            getResourceManager().getMediaContent(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.string.Test_Format2).id),
               density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#4503: not throw", "fail to get MediaContent.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1300 ends.")
    }
}
