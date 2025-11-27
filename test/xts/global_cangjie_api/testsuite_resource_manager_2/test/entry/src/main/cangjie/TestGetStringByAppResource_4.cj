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
class TestGetStringByAppResource_4 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=1u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", 1u32))
            @Expect("assertion#2080: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=0u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", 0u32))
            @Expect("assertion#2081: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", UInt32.Min))
            @Expect("assertion#2083: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=UInt32.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", UInt32.Max))
            @Expect("assertion#2084: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.module_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.string.module_desc).id))
            @Expect("assertion#2085: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.strarray.sizelist).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.strarray.sizelist).id))
            @Expect("assertion#2086: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.plural.plural_name).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.plural.plural_name).id))
            @Expect("assertion#2087: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_30900
     * @tc.name      : TestCase_309
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.string.Test_Format1).id))
            @Expect("assertion#2088: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_31000
     * @tc.name      : TestCase_310
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.string.Test_Format2).id))
            @Expect("assertion#2089: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.Test_Format3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.string.Test_Format3).id))
            @Expect("assertion#2090: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_31200
     * @tc.name      : TestCase_312
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_desc).id))
            @Expect("assertion#2091: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_31300
     * @tc.name      : TestCase_313
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.layered_image).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.media.layered_image).id))
            @Expect("assertion#2092: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_31400
     * @tc.name      : TestCase_314
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.string.EntryAbility_label).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_label).id))
            @Expect("assertion#2093: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_31500
     * @tc.name      : TestCase_315
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.media.startIcon).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.media.startIcon).id))
            @Expect("assertion#2094: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.profile.main_pages).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.profile.main_pages).id))
            @Expect("assertion#2095: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_31700
     * @tc.name      : TestCase_317
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.color.start_window_background).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "", @r(app.color.start_window_background).id))
            @Expect("assertion#2096: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_31800
     * @tc.name      : TestCase_318
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.float.float_1).id))
            @Expect("assertion#2097: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_31900
     * @tc.name      : TestCase_319
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.float.float_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.float.float_2).id))
            @Expect("assertion#2098: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_32000
     * @tc.name      : TestCase_320
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.integer.int_1).id))
            @Expect("assertion#2099: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_32100
     * @tc.name      : TestCase_321
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.integer.int_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.integer.int_2).id))
            @Expect("assertion#2100: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_32200
     * @tc.name      : TestCase_322
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_322(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean1).id
            ))
            @Expect("assertion#2101: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_32300
     * @tc.name      : TestCase_323
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.test_boolean0).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_323(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean0).id
            ))
            @Expect("assertion#2102: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_32400
     * @tc.name      : TestCase_324
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_324(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.boolean.boolean_3).id))
            @Expect("assertion#2103: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_32500
     * @tc.name      : TestCase_325
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="", resourceId=@r(app.boolean.boolean_4).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_325(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "", @r(app.boolean.boolean_4).id))
            @Expect("assertion#2104: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_32600
     * @tc.name      : TestCase_326
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=1u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", 1u32))
            @Expect("assertion#2105: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_32700
     * @tc.name      : TestCase_327
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=0u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_327(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", 0u32))
            @Expect("assertion#2106: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 ends.")
    }



    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_32900
     * @tc.name      : TestCase_329
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_329(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", UInt32.Min))
            @Expect("assertion#2108: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_33000
     * @tc.name      : TestCase_330
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=UInt32.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_330(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", UInt32.Max))
            @Expect("assertion#2109: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_33100
     * @tc.name      : TestCase_331
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.module_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.string.module_desc).id)
            )
            @Expect("assertion#2110: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_33200
     * @tc.name      : TestCase_332
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.strarray.sizelist).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_332(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.strarray.sizelist).id))
            @Expect("assertion#2111: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_33300
     * @tc.name      : TestCase_333
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.plural.plural_name).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_333(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.plural.plural_name).id)
            )
            @Expect("assertion#2112: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_33400
     * @tc.name      : TestCase_334
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_334(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format1).id
            ))
            @Expect("assertion#2113: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_33500
     * @tc.name      : TestCase_335
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_335(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format2).id
            ))
            @Expect("assertion#2114: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_33600
     * @tc.name      : TestCase_336
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.Test_Format3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format3).id
            ))
            @Expect("assertion#2115: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_33700
     * @tc.name      : TestCase_337
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_337(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_desc).id))
            @Expect("assertion#2116: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_33800
     * @tc.name      : TestCase_338
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.layered_image).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_338(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.media.layered_image).id
            ))
            @Expect("assertion#2117: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_33900
     * @tc.name      : TestCase_339
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_339(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_label).id))
            @Expect("assertion#2118: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_34000
     * @tc.name      : TestCase_340
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.media.startIcon).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_340(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.media.startIcon).id))
            @Expect("assertion#2119: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_34100
     * @tc.name      : TestCase_341
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.profile.main_pages).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.profile.main_pages).id)
            )
            @Expect("assertion#2120: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_34200
     * @tc.name      : TestCase_342
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.color.start_window_background).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_342(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "\0", @r(app.color.start_window_background).id))
            @Expect("assertion#2121: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_34300
     * @tc.name      : TestCase_343
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_343(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.float.float_1).id))
            @Expect("assertion#2122: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_34400
     * @tc.name      : TestCase_344
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.float.float_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_344(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.float.float_2).id))
            @Expect("assertion#2123: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_34500
     * @tc.name      : TestCase_345
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_345(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.integer.int_1).id))
            @Expect("assertion#2124: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_34600
     * @tc.name      : TestCase_346
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.integer.int_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_346(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.integer.int_2).id))
            @Expect("assertion#2125: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_34700
     * @tc.name      : TestCase_347
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_347(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean1).id))
            @Expect("assertion#2126: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_34800
     * @tc.name      : TestCase_348
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_348(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean0).id))
            @Expect("assertion#2127: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_34900
     * @tc.name      : TestCase_349
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_349(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_3).id))
            @Expect("assertion#2128: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_35000
     * @tc.name      : TestCase_350
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_350(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_4).id))
            @Expect("assertion#2129: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_35100
     * @tc.name      : TestCase_351
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=1u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_351(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "nonexisting_module_name", 1u32))
            @Expect("assertion#2130: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_35200
     * @tc.name      : TestCase_352
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=0u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_352(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "nonexisting_module_name", 0u32))
            @Expect("assertion#2131: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_35400
     * @tc.name      : TestCase_354
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_354(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Min))
            @Expect("assertion#2133: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_35500
     * @tc.name      : TestCase_355
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=UInt32.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_355(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Max))
            @Expect("assertion#2134: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_35600
     * @tc.name      : TestCase_356
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_356(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.module_desc).id))
            @Expect("assertion#2135: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_35700
     * @tc.name      : TestCase_357
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_357(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.strarray.sizelist).id))
            @Expect("assertion#2136: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_35800
     * @tc.name      : TestCase_358
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_358(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.plural.plural_name).id))
            @Expect("assertion#2137: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_35900
     * @tc.name      : TestCase_359
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_359(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format1).id))
            @Expect("assertion#2138: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_36000
     * @tc.name      : TestCase_360
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_360(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format2).id))
            @Expect("assertion#2139: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_36100
     * @tc.name      : TestCase_361
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_361(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format3).id))
            @Expect("assertion#2140: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_36200
     * @tc.name      : TestCase_362
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_362(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id)
            )
            @Expect("assertion#2141: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_36300
     * @tc.name      : TestCase_363
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_363(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.layered_image).id))
            @Expect("assertion#2142: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_36400
     * @tc.name      : TestCase_364
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_364(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_label).id
                ))
            @Expect("assertion#2143: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_36500
     * @tc.name      : TestCase_365
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_365(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.startIcon).id))
            @Expect("assertion#2144: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_36600
     * @tc.name      : TestCase_366
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_366(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.profile.main_pages).id))
            @Expect("assertion#2145: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_36700
     * @tc.name      : TestCase_367
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_367(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name",
                    @r(app.color.start_window_background).id))
            @Expect("assertion#2146: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_36800
     * @tc.name      : TestCase_368
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_368(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_1).id))
            @Expect("assertion#2147: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_36900
     * @tc.name      : TestCase_369
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_369(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_2).id))
            @Expect("assertion#2148: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_37000
     * @tc.name      : TestCase_370
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_370(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_1).id))
            @Expect("assertion#2149: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_37100
     * @tc.name      : TestCase_371
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_371(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_2).id))
            @Expect("assertion#2150: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_37200
     * @tc.name      : TestCase_372
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_372(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean1).id))
            @Expect("assertion#2151: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_37300
     * @tc.name      : TestCase_373
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_373(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean0).id))
            @Expect("assertion#2152: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_37400
     * @tc.name      : TestCase_374
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_374(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_3).id))
            @Expect("assertion#2153: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_37500
     * @tc.name      : TestCase_375
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_375(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_4).id))
            @Expect("assertion#2154: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_37600
     * @tc.name      : TestCase_376
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=1u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_376(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", 1u32))
            @Expect("assertion#2155: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_37700
     * @tc.name      : TestCase_377
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=0u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_377(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", 0u32))
            @Expect("assertion#2156: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_37900
     * @tc.name      : TestCase_379
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_379(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", UInt32.Min))
            @Expect("assertion#2158: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_38000
     * @tc.name      : TestCase_380
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_380(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", UInt32.Max))
            @Expect("assertion#2159: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 ends.")
    }




    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_38200
     * @tc.name      : TestCase_382
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.strarray.sizelist).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_382(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.strarray.sizelist).id))
            @Expect("assertion#2160: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_38300
     * @tc.name      : TestCase_383
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.plural.plural_name).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_383(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.plural.plural_name).id))
            @Expect("assertion#2161: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_38400
     * @tc.name      : TestCase_384
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_384(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 begins.")
        @Assert(getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format1).id)), "int is %d")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_38500
     * @tc.name      : TestCase_385
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_385(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 begins.")
        @Assert(getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format2).id)), "float is %f")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_38600
     * @tc.name      : TestCase_386
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_386(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 begins.")
        @Assert(getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format3).id)), "string is %s")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_38700
     * @tc.name      : TestCase_387
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_387(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 begins.")
        @Assert(getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.string.EntryAbility_desc).id)), "description")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_38800
     * @tc.name      : TestCase_388
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.media.layered_image).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_388(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.media.layered_image).id))
            @Expect("assertion#2162: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_38900
     * @tc.name      : TestCase_389
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_389(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 begins.")
        @Assert(getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.string.EntryAbility_label).id)), "label")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_39000
     * @tc.name      : TestCase_390
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.media.startIcon).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_390(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.media.startIcon).id)
            )
            @Expect("assertion#2163: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_39100
     * @tc.name      : TestCase_391
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.profile.main_pages).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.profile.main_pages).id))
            @Expect("assertion#2164: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_39200
     * @tc.name      : TestCase_392
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.color.start_window_background).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_392(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.color.start_window_background).id))
            @Expect("assertion#2165: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_39300
     * @tc.name      : TestCase_393
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.float.float_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_393(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.float.float_1).id))
            @Expect("assertion#2166: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_39400
     * @tc.name      : TestCase_394
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.float.float_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_394(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.float.float_2).id))
            @Expect("assertion#2167: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_39500
     * @tc.name      : TestCase_395
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.integer.int_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_395(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.integer.int_1).id))
            @Expect("assertion#2168: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_39600
     * @tc.name      : TestCase_396
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.integer.int_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_396(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.integer.int_2).id))
            @Expect("assertion#2169: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_39700
     * @tc.name      : TestCase_397
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_397(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.test_boolean1).id))
            @Expect("assertion#2170: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_39800
     * @tc.name      : TestCase_398
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_398(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.test_boolean0).id))
            @Expect("assertion#2171: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_39900
     * @tc.name      : TestCase_399
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.boolean_3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_399(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.boolean_3).id))
            @Expect("assertion#2172: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByAppResource_40000
     * @tc.name      : TestCase_400
     * @tc.desc      : get string by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.boolean_4).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.boolean_4).id))
            @Expect("assertion#2173: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 ends.")
    }
}
