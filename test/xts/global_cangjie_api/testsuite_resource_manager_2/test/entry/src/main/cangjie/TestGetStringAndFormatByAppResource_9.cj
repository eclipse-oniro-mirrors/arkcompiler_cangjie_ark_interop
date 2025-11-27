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
class TestGetStringAndFormatByAppResource_9 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_80100
     * @tc.name      : TestCase_801
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_801(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_801 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#800: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_801 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_80200
     * @tc.name      : TestCase_802
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_802(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_802 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#801: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_802 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_80300
     * @tc.name      : TestCase_803
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_803(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_803 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#802: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_803 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_80400
     * @tc.name      : TestCase_804
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_804(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_804 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#803: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_804 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_80500
     * @tc.name      : TestCase_805
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_805(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_805 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#804: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_805 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_80600
     * @tc.name      : TestCase_806
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_806(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_806 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#805: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_806 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_80700
     * @tc.name      : TestCase_807
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_807(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_807 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#806: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_807 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_80800
     * @tc.name      : TestCase_808
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_808(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_808 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#807: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_808 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_80900
     * @tc.name      : TestCase_809
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_809(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_809 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#808: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_809 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_81000
     * @tc.name      : TestCase_810
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_810(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_810 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#809: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_810 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_81100
     * @tc.name      : TestCase_811
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_811(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_811 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#810: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_811 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_81200
     * @tc.name      : TestCase_812
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_812(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_812 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#811: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_812 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_81300
     * @tc.name      : TestCase_813
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_813(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_813 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#812: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_813 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_81400
     * @tc.name      : TestCase_814
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_814(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_814 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#813: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_814 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_81500
     * @tc.name      : TestCase_815
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_815(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_815 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#814: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_815 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_81600
     * @tc.name      : TestCase_816
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_816(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_816 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#815: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_816 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_81700
     * @tc.name      : TestCase_817
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_817(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_817 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#816: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_817 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_81800
     * @tc.name      : TestCase_818
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_818(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_818 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#817: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_818 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_81900
     * @tc.name      : TestCase_819
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_819(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_819 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#818: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_819 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_82000
     * @tc.name      : TestCase_820
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_820(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_820 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#819: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_820 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_82100
     * @tc.name      : TestCase_821
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_821(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_821 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#820: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_821 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_82200
     * @tc.name      : TestCase_822
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_822(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_822 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#821: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_822 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_82300
     * @tc.name      : TestCase_823
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_823(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_823 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#822: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_823 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_82400
     * @tc.name      : TestCase_824
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_824(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_824 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#823: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_824 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_82500
     * @tc.name      : TestCase_825
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_825(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_825 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#824: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_825 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_82600
     * @tc.name      : TestCase_826
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_826(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_826 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", 1u32),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#825: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_826 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_82700
     * @tc.name      : TestCase_827
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_827(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_827 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", 1u32),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#826: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_827 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_82800
     * @tc.name      : TestCase_828
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=1u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_828(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_828 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", 1u32),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#827: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_828 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_82900
     * @tc.name      : TestCase_829
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_829(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_829 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", 0u32),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#828: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_829 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_83000
     * @tc.name      : TestCase_830
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_830(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_830 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", 0u32),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#829: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_830 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_83100
     * @tc.name      : TestCase_831
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=0u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_831(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_831 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", 0u32),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#830: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_831 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_83500
     * @tc.name      : TestCase_835
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_835(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_835 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#834: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_835 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_83600
     * @tc.name      : TestCase_836
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_836(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_836 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#835: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_836 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_83700
     * @tc.name      : TestCase_837
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Min),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_837(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_837 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", UInt32.Min),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#836: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_837 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_83800
     * @tc.name      : TestCase_838
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_838(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_838 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#837: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_838 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_83900
     * @tc.name      : TestCase_839
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_839(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_839 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#838: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_839 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_84000
     * @tc.name      : TestCase_840
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=UInt32.Max),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_840(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_840 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", UInt32.Max),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#839: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_840 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_84100
     * @tc.name      : TestCase_841
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.module_desc).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_841(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_841 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.module_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#840: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_841 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_84200
     * @tc.name      : TestCase_842
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.module_desc).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_842(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_842 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.module_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#841: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_842 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_84300
     * @tc.name      : TestCase_843
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.module_desc).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_843(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_843 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.module_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#842: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_843 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_84400
     * @tc.name      : TestCase_844
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.strarray.sizelist).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_844(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_844 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.strarray.sizelist).id
            ), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#843: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_844 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_84500
     * @tc.name      : TestCase_845
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.strarray.sizelist).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_845(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_845 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.strarray.sizelist).id
            ), ArgsValueType.StringValue("hello"))
            @Expect("assertion#844: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_845 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_84600
     * @tc.name      : TestCase_846
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.strarray.sizelist).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_846(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_846 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.strarray.sizelist).id
            ), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#845: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_846 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_84700
     * @tc.name      : TestCase_847
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.plural.plural_name).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_847(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_847 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.plural.plural_name).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#846: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_847 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_84800
     * @tc.name      : TestCase_848
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.plural.plural_name).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_848(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_848 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.plural.plural_name).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#847: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_848 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_84900
     * @tc.name      : TestCase_849
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.plural.plural_name).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_849(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_849 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.plural.plural_name).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#848: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_849 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_85000
     * @tc.name      : TestCase_850
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.Test_Format1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_850(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_850 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#849: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_850 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_85100
     * @tc.name      : TestCase_851
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.Test_Format1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_851(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_851 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#850: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_851 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_85200
     * @tc.name      : TestCase_852
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.Test_Format1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_852(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_852 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#851: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_852 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_85300
     * @tc.name      : TestCase_853
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.Test_Format2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_853(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_853 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#852: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_853 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_85400
     * @tc.name      : TestCase_854
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.Test_Format2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_854(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_854 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#853: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_854 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_85500
     * @tc.name      : TestCase_855
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.Test_Format2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_855(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_855 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#854: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_855 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_85600
     * @tc.name      : TestCase_856
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.Test_Format3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_856(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_856 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#855: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_856 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_85700
     * @tc.name      : TestCase_857
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.Test_Format3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_857(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_857 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#856: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_857 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_85800
     * @tc.name      : TestCase_858
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.Test_Format3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_858(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_858 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#857: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_858 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_85900
     * @tc.name      : TestCase_859
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_859(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_859 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#858: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_859 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_86000
     * @tc.name      : TestCase_860
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_860(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_860 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#859: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_860 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_86100
     * @tc.name      : TestCase_861
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_861(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_861 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#860: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_861 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_86200
     * @tc.name      : TestCase_862
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.media.layered_image).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_862(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_862 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.media.layered_image).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#861: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_862 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_86300
     * @tc.name      : TestCase_863
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.media.layered_image).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_863(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_863 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.media.layered_image).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#862: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_863 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_86400
     * @tc.name      : TestCase_864
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.media.layered_image).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_864(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_864 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.media.layered_image).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#863: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_864 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_86500
     * @tc.name      : TestCase_865
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_865(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_865 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#864: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_865 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_86600
     * @tc.name      : TestCase_866
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_866(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_866 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_label).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#865: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_866 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_86700
     * @tc.name      : TestCase_867
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_867(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_867 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#866: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_867 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_86800
     * @tc.name      : TestCase_868
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.media.startIcon).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_868(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_868 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.media.startIcon).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#867: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_868 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_86900
     * @tc.name      : TestCase_869
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.media.startIcon).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_869(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_869 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.media.startIcon).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#868: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_869 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_87000
     * @tc.name      : TestCase_870
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.media.startIcon).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_870(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_870 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.media.startIcon).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#869: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_870 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_87100
     * @tc.name      : TestCase_871
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.profile.main_pages).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_871(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_871 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.profile.main_pages).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#870: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_871 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_87200
     * @tc.name      : TestCase_872
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.profile.main_pages).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_872(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_872 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.profile.main_pages).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#871: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_872 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_87300
     * @tc.name      : TestCase_873
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.profile.main_pages).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_873(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_873 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.profile.main_pages).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#872: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_873 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_87400
     * @tc.name      : TestCase_874
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.color.start_window_background).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_874(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_874 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.color.start_window_background).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#873: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_874 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_87500
     * @tc.name      : TestCase_875
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.color.start_window_background).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_875(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_875 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.color.start_window_background).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#874: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_875 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_87600
     * @tc.name      : TestCase_876
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.color.start_window_background).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_876(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_876 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.color.start_window_background).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#875: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_876 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_87700
     * @tc.name      : TestCase_877
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.float.float_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_877(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_877 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.float.float_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#876: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_877 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_87800
     * @tc.name      : TestCase_878
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.float.float_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_878(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_878 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.float.float_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#877: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_878 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_87900
     * @tc.name      : TestCase_879
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.float.float_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_879(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_879 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.float.float_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#878: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_879 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_88000
     * @tc.name      : TestCase_880
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.float.float_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_880(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_880 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.float.float_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#879: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_880 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_88100
     * @tc.name      : TestCase_881
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.float.float_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_881(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_881 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.float.float_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#880: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_881 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_88200
     * @tc.name      : TestCase_882
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.float.float_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_882(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_882 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.float.float_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#881: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_882 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_88300
     * @tc.name      : TestCase_883
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.integer.int_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_883(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_883 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#882: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_883 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_88400
     * @tc.name      : TestCase_884
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.integer.int_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_884(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_884 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#883: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_884 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_88500
     * @tc.name      : TestCase_885
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.integer.int_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_885(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_885 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#884: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_885 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_88600
     * @tc.name      : TestCase_886
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.integer.int_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_886(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_886 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#885: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_886 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_88700
     * @tc.name      : TestCase_887
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.integer.int_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_887(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_887 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#886: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_887 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_88800
     * @tc.name      : TestCase_888
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.integer.int_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_888(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_888 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#887: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_888 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_88900
     * @tc.name      : TestCase_889
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_889(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_889 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#888: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_889 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_89000
     * @tc.name      : TestCase_890
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_890(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_890 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#889: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_890 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_89100
     * @tc.name      : TestCase_891
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_891(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_891 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#890: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_891 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_89200
     * @tc.name      : TestCase_892
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_892(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_892 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#891: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_892 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_89300
     * @tc.name      : TestCase_893
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_893(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_893 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean0).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#892: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_893 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_89400
     * @tc.name      : TestCase_894
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_894(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_894 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#893: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_894 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_89500
     * @tc.name      : TestCase_895
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.boolean_3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_895(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_895 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_3).id
            ), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#894: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_895 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_89600
     * @tc.name      : TestCase_896
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.boolean_3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_896(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_896 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_3).id
            ), ArgsValueType.StringValue("hello"))
            @Expect("assertion#895: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_896 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_89700
     * @tc.name      : TestCase_897
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.boolean_3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_897(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_897 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_3).id
            ), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#896: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_897 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_89800
     * @tc.name      : TestCase_898
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.boolean_4).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_898(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_898 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_4).id
            ), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#897: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_898 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_89900
     * @tc.name      : TestCase_899
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.boolean_4).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_899(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_899 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_4).id
            ), ArgsValueType.StringValue("hello"))
            @Expect("assertion#898: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_899 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_90000
     * @tc.name      : TestCase_900
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="non.existing.bundle_name", moduleName="entry", resourceId=@r(app.boolean.boolean_4).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_900(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_900 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_4).id
            ), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#899: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_900 ends.")
    }
}
