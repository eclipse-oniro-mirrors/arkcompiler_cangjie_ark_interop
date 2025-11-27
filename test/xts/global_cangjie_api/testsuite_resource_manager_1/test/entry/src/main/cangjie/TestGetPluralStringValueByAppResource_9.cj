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
class TestGetPluralStringValueByAppResource_9 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_80100
     * @tc.name      : TestCase_801
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_801(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_801 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), 12345678i64)
            @Expect("assertion#1236: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_801 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_80200
     * @tc.name      : TestCase_802
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_802(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_802 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id), 1i64)
            @Expect("assertion#1237: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_802 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_80300
     * @tc.name      : TestCase_803
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_803(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_803 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id), -1i64)
            @Expect("assertion#1238: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_803 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_80400
     * @tc.name      : TestCase_804
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_804(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_804 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_1).id), 12345678i64)
            @Expect("assertion#1239: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_804 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_80500
     * @tc.name      : TestCase_805
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_805(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_805 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id), 1i64)
            @Expect("assertion#1240: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_805 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_80600
     * @tc.name      : TestCase_806
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_806(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_806 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id), -1i64)
            @Expect("assertion#1241: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_806 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_80700
     * @tc.name      : TestCase_807
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_807(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_807 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.float.float_2).id), 12345678i64)
            @Expect("assertion#1242: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_807 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_80800
     * @tc.name      : TestCase_808
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_808(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_808 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id), 1i64)
            @Expect("assertion#1243: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_808 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_80900
     * @tc.name      : TestCase_809
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_809(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_809 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id), -1i64)
            @Expect("assertion#1244: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_809 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_81000
     * @tc.name      : TestCase_810
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_810(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_810 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_1).id), 12345678i64)
            @Expect("assertion#1245: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_810 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_81100
     * @tc.name      : TestCase_811
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_811(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_811 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id), 1i64)
            @Expect("assertion#1246: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_811 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_81200
     * @tc.name      : TestCase_812
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_812(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_812 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id), -1i64)
            @Expect("assertion#1247: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_812 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_81300
     * @tc.name      : TestCase_813
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_813(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_813 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.integer.int_2).id), 12345678i64)
            @Expect("assertion#1248: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_813 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_81400
     * @tc.name      : TestCase_814
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_814(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_814 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                1i64)
            @Expect("assertion#1249: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_814 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_81500
     * @tc.name      : TestCase_815
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_815(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_815 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                -1i64)
            @Expect("assertion#1250: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_815 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_81600
     * @tc.name      : TestCase_816
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_816(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_816 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                12345678i64)
            @Expect("assertion#1251: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_816 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_81700
     * @tc.name      : TestCase_817
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_817(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_817 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                1i64)
            @Expect("assertion#1252: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_817 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_81800
     * @tc.name      : TestCase_818
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_818(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_818 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                -1i64)
            @Expect("assertion#1253: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_818 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_81900
     * @tc.name      : TestCase_819
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_819(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_819 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                12345678i64)
            @Expect("assertion#1254: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_819 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_82000
     * @tc.name      : TestCase_820
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_820(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_820 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id), 1i64)
            @Expect("assertion#1255: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_820 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_82100
     * @tc.name      : TestCase_821
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_821(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_821 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id), -1i64)
            @Expect("assertion#1256: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_821 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_82200
     * @tc.name      : TestCase_822
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_822(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_822 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_3).id), 12345678i64)
            @Expect("assertion#1257: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_822 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_82300
     * @tc.name      : TestCase_823
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_823(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_823 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id), 1i64)
            @Expect("assertion#1258: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_823 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_82400
     * @tc.name      : TestCase_824
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_824(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_824 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id), -1i64)
            @Expect("assertion#1259: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_824 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_82500
     * @tc.name      : TestCase_825
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_825(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_825 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "nonexisting_module_name", @r(app.boolean.boolean_4).id), 12345678i64)
            @Expect("assertion#1260: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_825 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_82600
     * @tc.name      : TestCase_826
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=1u32, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_826(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_826 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", 1u32), 1i64)
            @Expect("assertion#1261: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_826 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_82700
     * @tc.name      : TestCase_827
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=1u32, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_827(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_827 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", 1u32), -1i64)
            @Expect("assertion#1262: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_827 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_82800
     * @tc.name      : TestCase_828
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=1u32, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_828(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_828 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", 1u32), 12345678i64)
            @Expect("assertion#1263: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_828 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_82900
     * @tc.name      : TestCase_829
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=0u32, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_829(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_829 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", 0u32), 1i64)
            @Expect("assertion#1264: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_829 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_83000
     * @tc.name      : TestCase_830
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=0u32, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_830(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_830 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", 0u32), -1i64)
            @Expect("assertion#1265: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_830 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_83100
     * @tc.name      : TestCase_831
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=0u32, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_831(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_831 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", 0u32), 12345678i64)
            @Expect("assertion#1266: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_831 ends.")
    }



    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_83500
     * @tc.name      : TestCase_835
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=UInt32.Min, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_835(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_835 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", UInt32.Min), 1i64
            )
            @Expect("assertion#1270: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_835 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_83600
     * @tc.name      : TestCase_836
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=UInt32.Min, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_836(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_836 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", UInt32.Min), -1i64
            )
            @Expect("assertion#1271: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_836 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_83700
     * @tc.name      : TestCase_837
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=UInt32.Min, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_837(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_837 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", UInt32.Min), 12345678i64
            )
            @Expect("assertion#1272: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_837 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_83800
     * @tc.name      : TestCase_838
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=UInt32.Max, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_838(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_838 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", UInt32.Max), 1i64
            )
            @Expect("assertion#1273: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_838 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_83900
     * @tc.name      : TestCase_839
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=UInt32.Max, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_839(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_839 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", UInt32.Max), -1i64
            )
            @Expect("assertion#1274: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_839 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_84000
     * @tc.name      : TestCase_840
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=UInt32.Max, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_840(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_840 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("non.existing.bundle_name", "entry", UInt32.Max), 12345678i64
            )
            @Expect("assertion#1275: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_840 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_84100
     * @tc.name      : TestCase_841
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.module_desc).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_841(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_841 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.module_desc).id), 1i64)
            @Expect("assertion#1276: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_841 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_84200
     * @tc.name      : TestCase_842
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.module_desc).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_842(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_842 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.module_desc).id), -1i64)
            @Expect("assertion#1277: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_842 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_84300
     * @tc.name      : TestCase_843
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.module_desc).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_843(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_843 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.module_desc).id), 12345678i64)
            @Expect("assertion#1278: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_843 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_84400
     * @tc.name      : TestCase_844
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.strarray.sizelist).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_844(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_844 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.strarray.sizelist).id), 1i64)
            @Expect("assertion#1279: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_844 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_84500
     * @tc.name      : TestCase_845
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.strarray.sizelist).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_845(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_845 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.strarray.sizelist).id), -1i64)
            @Expect("assertion#1280: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_845 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_84600
     * @tc.name      : TestCase_846
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.strarray.sizelist).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_846(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_846 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.strarray.sizelist).id), 12345678i64)
            @Expect("assertion#1281: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_846 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_84700
     * @tc.name      : TestCase_847
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.plural.plural_name).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_847(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_847 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.plural.plural_name).id), 1i64)
            @Expect("assertion#1282: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_847 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_84800
     * @tc.name      : TestCase_848
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.plural.plural_name).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_848(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_848 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.plural.plural_name).id), -1i64)
            @Expect("assertion#1283: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_848 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_84900
     * @tc.name      : TestCase_849
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.plural.plural_name).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_849(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_849 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.plural.plural_name).id), 12345678i64)
            @Expect("assertion#1284: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_849 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_85000
     * @tc.name      : TestCase_850
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.Test_Format1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_850(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_850 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format1).id), 1i64)
            @Expect("assertion#1285: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_850 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_85100
     * @tc.name      : TestCase_851
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.Test_Format1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_851(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_851 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format1).id), -1i64)
            @Expect("assertion#1286: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_851 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_85200
     * @tc.name      : TestCase_852
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.Test_Format1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_852(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_852 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format1).id), 12345678i64)
            @Expect("assertion#1287: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_852 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_85300
     * @tc.name      : TestCase_853
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.Test_Format2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_853(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_853 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format2).id), 1i64)
            @Expect("assertion#1288: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_853 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_85400
     * @tc.name      : TestCase_854
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.Test_Format2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_854(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_854 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format2).id), -1i64)
            @Expect("assertion#1289: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_854 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_85500
     * @tc.name      : TestCase_855
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.Test_Format2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_855(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_855 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format2).id), 12345678i64)
            @Expect("assertion#1290: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_855 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_85600
     * @tc.name      : TestCase_856
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.Test_Format3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_856(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_856 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format3).id), 1i64)
            @Expect("assertion#1291: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_856 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_85700
     * @tc.name      : TestCase_857
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.Test_Format3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_857(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_857 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format3).id), -1i64)
            @Expect("assertion#1292: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_857 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_85800
     * @tc.name      : TestCase_858
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.Test_Format3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_858(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_858 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.Test_Format3).id), 12345678i64)
            @Expect("assertion#1293: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_858 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_85900
     * @tc.name      : TestCase_859
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_859(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_859 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_desc).id), 1i64)
            @Expect("assertion#1294: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_859 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_86000
     * @tc.name      : TestCase_860
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_860(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_860 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_desc).id), -1i64)
            @Expect("assertion#1295: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_860 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_86100
     * @tc.name      : TestCase_861
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_861(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_861 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_desc).id), 12345678i64)
            @Expect("assertion#1296: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_861 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_86200
     * @tc.name      : TestCase_862
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.media.layered_image).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_862(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_862 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.media.layered_image).id), 1i64)
            @Expect("assertion#1297: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_862 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_86300
     * @tc.name      : TestCase_863
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.media.layered_image).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_863(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_863 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.media.layered_image).id), -1i64)
            @Expect("assertion#1298: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_863 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_86400
     * @tc.name      : TestCase_864
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.media.layered_image).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_864(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_864 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.media.layered_image).id), 12345678i64)
            @Expect("assertion#1299: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_864 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_86500
     * @tc.name      : TestCase_865
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_865(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_865 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_label).id), 1i64)
            @Expect("assertion#1300: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_865 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_86600
     * @tc.name      : TestCase_866
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_866(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_866 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_label).id), -1i64)
            @Expect("assertion#1301: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_866 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_86700
     * @tc.name      : TestCase_867
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_867(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_867 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.string.EntryAbility_label).id), 12345678i64)
            @Expect("assertion#1302: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_867 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_86800
     * @tc.name      : TestCase_868
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.media.startIcon).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_868(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_868 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.media.startIcon).id), 1i64)
            @Expect("assertion#1303: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_868 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_86900
     * @tc.name      : TestCase_869
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.media.startIcon).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_869(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_869 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.media.startIcon).id), -1i64)
            @Expect("assertion#1304: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_869 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_87000
     * @tc.name      : TestCase_870
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.media.startIcon).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_870(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_870 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.media.startIcon).id), 12345678i64)
            @Expect("assertion#1305: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_870 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_87100
     * @tc.name      : TestCase_871
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.profile.main_pages).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_871(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_871 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.profile.main_pages).id), 1i64)
            @Expect("assertion#1306: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_871 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_87200
     * @tc.name      : TestCase_872
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.profile.main_pages).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_872(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_872 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.profile.main_pages).id), -1i64)
            @Expect("assertion#1307: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_872 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_87300
     * @tc.name      : TestCase_873
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.profile.main_pages).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_873(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_873 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.profile.main_pages).id), 12345678i64)
            @Expect("assertion#1308: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_873 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_87400
     * @tc.name      : TestCase_874
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.color.start_window_background).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_874(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_874 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.color.start_window_background).id), 1i64)
            @Expect("assertion#1309: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_874 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_87500
     * @tc.name      : TestCase_875
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.color.start_window_background).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_875(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_875 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.color.start_window_background).id), -1i64)
            @Expect("assertion#1310: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_875 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_87600
     * @tc.name      : TestCase_876
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.color.start_window_background).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_876(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_876 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.color.start_window_background).id), 12345678i64)
            @Expect("assertion#1311: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_876 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_87700
     * @tc.name      : TestCase_877
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.float.float_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_877(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_877 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.float.float_1).id), 1i64)
            @Expect("assertion#1312: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_877 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_87800
     * @tc.name      : TestCase_878
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.float.float_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_878(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_878 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.float.float_1).id), -1i64)
            @Expect("assertion#1313: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_878 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_87900
     * @tc.name      : TestCase_879
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.float.float_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_879(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_879 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.float.float_1).id), 12345678i64)
            @Expect("assertion#1314: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_879 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_88000
     * @tc.name      : TestCase_880
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.float.float_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_880(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_880 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.float.float_2).id), 1i64)
            @Expect("assertion#1315: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_880 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_88100
     * @tc.name      : TestCase_881
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.float.float_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_881(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_881 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.float.float_2).id), -1i64)
            @Expect("assertion#1316: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_881 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_88200
     * @tc.name      : TestCase_882
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.float.float_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_882(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_882 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.float.float_2).id), 12345678i64)
            @Expect("assertion#1317: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_882 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_88300
     * @tc.name      : TestCase_883
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.integer.int_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_883(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_883 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_1).id), 1i64)
            @Expect("assertion#1318: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_883 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_88400
     * @tc.name      : TestCase_884
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.integer.int_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_884(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_884 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_1).id), -1i64)
            @Expect("assertion#1319: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_884 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_88500
     * @tc.name      : TestCase_885
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.integer.int_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_885(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_885 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_1).id), 12345678i64)
            @Expect("assertion#1320: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_885 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_88600
     * @tc.name      : TestCase_886
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.integer.int_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_886(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_886 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_2).id), 1i64)
            @Expect("assertion#1321: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_886 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_88700
     * @tc.name      : TestCase_887
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.integer.int_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_887(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_887 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_2).id), -1i64)
            @Expect("assertion#1322: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_887 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_88800
     * @tc.name      : TestCase_888
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.integer.int_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_888(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_888 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.integer.int_2).id), 12345678i64)
            @Expect("assertion#1323: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_888 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_88900
     * @tc.name      : TestCase_889
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_889(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_889 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean1).id), 1i64)
            @Expect("assertion#1324: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_889 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_89000
     * @tc.name      : TestCase_890
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_890(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_890 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean1).id), -1i64)
            @Expect("assertion#1325: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_890 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_89100
     * @tc.name      : TestCase_891
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_891(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_891 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean1).id), 12345678i64)
            @Expect("assertion#1326: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_891 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_89200
     * @tc.name      : TestCase_892
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_892(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_892 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean0).id), 1i64)
            @Expect("assertion#1327: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_892 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_89300
     * @tc.name      : TestCase_893
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_893(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_893 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean0).id), -1i64)
            @Expect("assertion#1328: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_893 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_89400
     * @tc.name      : TestCase_894
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_894(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_894 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.test_boolean0).id), 12345678i64)
            @Expect("assertion#1329: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_894 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_89500
     * @tc.name      : TestCase_895
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_895(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_895 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_3).id), 1i64)
            @Expect("assertion#1330: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_895 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_89600
     * @tc.name      : TestCase_896
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_896(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_896 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_3).id), -1i64)
            @Expect("assertion#1331: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_896 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_89700
     * @tc.name      : TestCase_897
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_897(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_897 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_3).id), 12345678i64)
            @Expect("assertion#1332: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_897 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_89800
     * @tc.name      : TestCase_898
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_4).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_898(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_898 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_4).id), 1i64)
            @Expect("assertion#1333: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_898 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_89900
     * @tc.name      : TestCase_899
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_4).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_899(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_899 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_4).id), -1i64)
            @Expect("assertion#1334: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_899 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_90000
     * @tc.name      : TestCase_900
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="non.existing.bundle_name",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_4).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_900(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_900 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("non.existing.bundle_name", "entry", @r(app.boolean.boolean_4).id), 12345678i64)
            @Expect("assertion#1335: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_900 ends.")
    }
}
