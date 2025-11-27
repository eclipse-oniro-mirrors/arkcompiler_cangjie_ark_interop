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
import ohos.arkui.state_macro_manage.r
import ohos.resource_manager.AppResource
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*
import ohos.resource_manager.ArgsValueType
import ohos.resource_manager.ScreenDensity
import ohos.resource_manager.NumberValueType
import ohos.resource_manager.ScreenDensity
import ohos.resource_manager.NumberValueType

@Test
class TestGetStringAndFormatByAppResource_4 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_30100
     * @tc.name      : TestCase_301
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=1u32),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", 1u32), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#300: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_30200
     * @tc.name      : TestCase_302
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=1u32),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", 1u32), ArgsValueType.StringValue("hello"))
            @Expect("assertion#301: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_30300
     * @tc.name      : TestCase_303
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=1u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("\0", "", 1u32), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#302: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_30400
     * @tc.name      : TestCase_304
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=0u32),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", 0u32), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#303: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_30500
     * @tc.name      : TestCase_305
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=0u32),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", 0u32), ArgsValueType.StringValue("hello"))
            @Expect("assertion#304: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_30600
     * @tc.name      : TestCase_306
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=0u32),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", 0u32), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#305: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_31000
     * @tc.name      : TestCase_310
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=UInt32.Min),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", UInt32.Min), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#309: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_31100
     * @tc.name      : TestCase_311
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=UInt32.Min),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", UInt32.Min), ArgsValueType.StringValue("hello"))
            @Expect("assertion#310: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_31200
     * @tc.name      : TestCase_312
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=UInt32.Min),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", UInt32.Min), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#311: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_31300
     * @tc.name      : TestCase_313
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=UInt32.Max),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", UInt32.Max), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#312: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_31400
     * @tc.name      : TestCase_314
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=UInt32.Max),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", UInt32.Max), ArgsValueType.StringValue("hello"))
            @Expect("assertion#313: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_31500
     * @tc.name      : TestCase_315
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=UInt32.Max),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", UInt32.Max), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#314: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_31600
     * @tc.name      : TestCase_316
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.module_desc).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.module_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#315: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_31700
     * @tc.name      : TestCase_317
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.module_desc).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.module_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#316: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_31800
     * @tc.name      : TestCase_318
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.module_desc).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.module_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#317: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_31900
     * @tc.name      : TestCase_319
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.strarray.sizelist).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.strarray.sizelist).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#318: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_32000
     * @tc.name      : TestCase_320
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.strarray.sizelist).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.strarray.sizelist).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#319: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_32100
     * @tc.name      : TestCase_321
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.strarray.sizelist).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.strarray.sizelist).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#320: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_32200
     * @tc.name      : TestCase_322
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.plural.plural_name).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.plural.plural_name).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#321: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_32300
     * @tc.name      : TestCase_323
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.plural.plural_name).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.plural.plural_name).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#322: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_32400
     * @tc.name      : TestCase_324
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.plural.plural_name).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.plural.plural_name).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#323: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_32500
     * @tc.name      : TestCase_325
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format1).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.Test_Format1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#324: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_32600
     * @tc.name      : TestCase_326
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format1).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.Test_Format1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#325: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_32700
     * @tc.name      : TestCase_327
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format1).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.Test_Format1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#326: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_32800
     * @tc.name      : TestCase_328
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_328(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("\0", "", @r(app.string.Test_Format2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#327: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_32900
     * @tc.name      : TestCase_329
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format2).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.Test_Format2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#328: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_33000
     * @tc.name      : TestCase_330
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format2).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.Test_Format2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#329: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_33100
     * @tc.name      : TestCase_331
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format3).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.Test_Format3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#330: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_33200
     * @tc.name      : TestCase_332
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format3).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.Test_Format3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#331: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_33300
     * @tc.name      : TestCase_333
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format3).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.Test_Format3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#332: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_33400
     * @tc.name      : TestCase_334
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#333: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_33500
     * @tc.name      : TestCase_335
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#334: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_33600
     * @tc.name      : TestCase_336
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#335: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_33700
     * @tc.name      : TestCase_337
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.media.layered_image).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.media.layered_image).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#336: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_33800
     * @tc.name      : TestCase_338
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.media.layered_image).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.media.layered_image).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#337: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_33900
     * @tc.name      : TestCase_339
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.media.layered_image).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.media.layered_image).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#338: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_34000
     * @tc.name      : TestCase_340
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.EntryAbility_label).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#339: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_34100
     * @tc.name      : TestCase_341
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.EntryAbility_label).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.EntryAbility_label).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#340: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_34200
     * @tc.name      : TestCase_342
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.EntryAbility_label).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#341: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_34300
     * @tc.name      : TestCase_343
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.media.startIcon).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.media.startIcon).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#342: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_34400
     * @tc.name      : TestCase_344
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.media.startIcon).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.media.startIcon).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#343: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_34500
     * @tc.name      : TestCase_345
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.media.startIcon).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.media.startIcon).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#344: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_34600
     * @tc.name      : TestCase_346
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.profile.main_pages).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.profile.main_pages).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#345: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_34700
     * @tc.name      : TestCase_347
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.profile.main_pages).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.profile.main_pages).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#346: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_34800
     * @tc.name      : TestCase_348
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.profile.main_pages).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.profile.main_pages).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#347: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_34900
     * @tc.name      : TestCase_349
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.color.start_window_background).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.color.start_window_background).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#348: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_35000
     * @tc.name      : TestCase_350
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.color.start_window_background).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.color.start_window_background).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#349: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_35100
     * @tc.name      : TestCase_351
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.color.start_window_background).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.color.start_window_background).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#350: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_35200
     * @tc.name      : TestCase_352
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.float.float_1).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.float.float_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#351: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_35300
     * @tc.name      : TestCase_353
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.float.float_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_353(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("\0", "", @r(app.float.float_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#352: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_35400
     * @tc.name      : TestCase_354
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.float.float_1).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.float.float_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#353: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_35500
     * @tc.name      : TestCase_355
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.float.float_2).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.float.float_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#354: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_35600
     * @tc.name      : TestCase_356
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.float.float_2).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.float.float_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#355: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_35700
     * @tc.name      : TestCase_357
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.float.float_2).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.float.float_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#356: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_35800
     * @tc.name      : TestCase_358
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_1).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.integer.int_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#357: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_35900
     * @tc.name      : TestCase_359
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_1).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.integer.int_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#358: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_36000
     * @tc.name      : TestCase_360
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_1).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.integer.int_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#359: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_36100
     * @tc.name      : TestCase_361
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_2).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.integer.int_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#360: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_36200
     * @tc.name      : TestCase_362
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_2).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.integer.int_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#361: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_36300
     * @tc.name      : TestCase_363
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_2).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.integer.int_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#362: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_36400
     * @tc.name      : TestCase_364
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean1).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#363: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_36500
     * @tc.name      : TestCase_365
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean1).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.test_boolean1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#364: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_36600
     * @tc.name      : TestCase_366
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean1).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#365: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_36700
     * @tc.name      : TestCase_367
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean0).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#366: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_36800
     * @tc.name      : TestCase_368
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean0).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.test_boolean0).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#367: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_36900
     * @tc.name      : TestCase_369
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean0).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#368: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_37000
     * @tc.name      : TestCase_370
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_3).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.boolean_3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#369: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_37100
     * @tc.name      : TestCase_371
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_3).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.boolean_3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#370: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_37200
     * @tc.name      : TestCase_372
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_3).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.boolean_3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#371: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_37300
     * @tc.name      : TestCase_373
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_4).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.boolean_4).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#372: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_37400
     * @tc.name      : TestCase_374
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_4).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.boolean_4).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#373: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_37500
     * @tc.name      : TestCase_375
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_4).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "", @r(app.boolean.boolean_4).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#374: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_37600
     * @tc.name      : TestCase_376
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=1u32),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "\0", 1u32), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#375: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_37700
     * @tc.name      : TestCase_377
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=1u32),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "\0", 1u32), ArgsValueType.StringValue("hello"))
            @Expect("assertion#376: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_37800
     * @tc.name      : TestCase_378
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=1u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_378(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("\0", "\0", 1u32), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#377: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_37900
     * @tc.name      : TestCase_379
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=0u32),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "\0", 0u32), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#378: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_38000
     * @tc.name      : TestCase_380
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=0u32),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "\0", 0u32), ArgsValueType.StringValue("hello"))
            @Expect("assertion#379: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_38100
     * @tc.name      : TestCase_381
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=0u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_381(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("\0", "\0", 0u32), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#380: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_38500
     * @tc.name      : TestCase_385
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Min),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_385(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("\0", "\0", UInt32.Min), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#384: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_38600
     * @tc.name      : TestCase_386
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Min),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_386(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("\0", "\0", UInt32.Min), ArgsValueType.StringValue("hello"))
            @Expect("assertion#385: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_38700
     * @tc.name      : TestCase_387
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Min),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_387(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("\0", "\0", UInt32.Min), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#386: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_38800
     * @tc.name      : TestCase_388
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Max),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "\0", UInt32.Max), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#387: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_38900
     * @tc.name      : TestCase_389
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Max),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_389(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("\0", "\0", UInt32.Max), ArgsValueType.StringValue("hello"))
            @Expect("assertion#388: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_39000
     * @tc.name      : TestCase_390
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Max),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "\0", UInt32.Max), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#389: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_39100
     * @tc.name      : TestCase_391
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.module_desc).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "\0", @r(app.string.module_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#390: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_39200
     * @tc.name      : TestCase_392
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.module_desc).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "\0", @r(app.string.module_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#391: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_39300
     * @tc.name      : TestCase_393
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.module_desc).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "\0", @r(app.string.module_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#392: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_39400
     * @tc.name      : TestCase_394
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.strarray.sizelist).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "\0", @r(app.strarray.sizelist).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#393: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_39500
     * @tc.name      : TestCase_395
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.strarray.sizelist).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "\0", @r(app.strarray.sizelist).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#394: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_39600
     * @tc.name      : TestCase_396
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.strarray.sizelist).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "\0", @r(app.strarray.sizelist).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#395: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_39700
     * @tc.name      : TestCase_397
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.plural.plural_name).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "\0", @r(app.plural.plural_name).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#396: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_39800
     * @tc.name      : TestCase_398
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.plural.plural_name).id),
            args=StringValue("hello").

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
            getResourceManager().getString(AppResource("\0", "\0", @r(app.plural.plural_name).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#397: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_39900
     * @tc.name      : TestCase_399
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.plural.plural_name).id),
            args=Float32Value(3.140000f32).

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
            getResourceManager().getString(AppResource("\0", "\0", @r(app.plural.plural_name).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#398: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_40000
     * @tc.name      : TestCase_400
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format1).id),
            args=Int32Value(100i32).

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
            getResourceManager().getString(AppResource("\0", "\0", @r(app.string.Test_Format1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#399: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 ends.")
    }
}
