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
class TestGetPluralStringValueByAppResource_6 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_50100
     * @tc.name      : TestCase_501
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_501(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.color.start_window_background).id), 12345678i64)
            @Expect("assertion#936: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_50200
     * @tc.name      : TestCase_502
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_502(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.float.float_1).id), 1i64)
            @Expect("assertion#937: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_50300
     * @tc.name      : TestCase_503
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_503(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.float.float_1).id), -1i64)
            @Expect("assertion#938: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_50400
     * @tc.name      : TestCase_504
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_504(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.float.float_1).id), 12345678i64)
            @Expect("assertion#939: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_50500
     * @tc.name      : TestCase_505
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_505(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_505 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.float.float_2).id), 1i64)
            @Expect("assertion#940: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_50600
     * @tc.name      : TestCase_506
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_506(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_506 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.float.float_2).id), -1i64)
            @Expect("assertion#941: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_50700
     * @tc.name      : TestCase_507
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_507(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_507 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.float.float_2).id), 12345678i64)
            @Expect("assertion#942: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_50800
     * @tc.name      : TestCase_508
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_508(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_508 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.integer.int_1).id), 1i64)
            @Expect("assertion#943: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_50900
     * @tc.name      : TestCase_509
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_509(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_509 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.integer.int_1).id), -1i64)
            @Expect("assertion#944: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_51000
     * @tc.name      : TestCase_510
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_510(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_510 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.integer.int_1).id), 12345678i64)
            @Expect("assertion#945: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_510 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_51100
     * @tc.name      : TestCase_511
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_511(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_511 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.integer.int_2).id), 1i64)
            @Expect("assertion#946: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_511 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_51200
     * @tc.name      : TestCase_512
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_512(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_512 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.integer.int_2).id), -1i64)
            @Expect("assertion#947: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_512 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_51300
     * @tc.name      : TestCase_513
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_513(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_513 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.integer.int_2).id), 12345678i64)
            @Expect("assertion#948: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_513 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_51400
     * @tc.name      : TestCase_514
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_514(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_514 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.test_boolean1).id), 1i64)
            @Expect("assertion#949: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_514 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_51500
     * @tc.name      : TestCase_515
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_515(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_515 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.test_boolean1).id), -1i64)
            @Expect("assertion#950: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_515 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_51600
     * @tc.name      : TestCase_516
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_516(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_516 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.test_boolean1).id), 12345678i64)
            @Expect("assertion#951: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_516 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_51700
     * @tc.name      : TestCase_517
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_517(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_517 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.test_boolean0).id), 1i64)
            @Expect("assertion#952: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_517 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_51800
     * @tc.name      : TestCase_518
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_518(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_518 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.test_boolean0).id), -1i64)
            @Expect("assertion#953: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_518 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_51900
     * @tc.name      : TestCase_519
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_519(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_519 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.test_boolean0).id), 12345678i64)
            @Expect("assertion#954: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_519 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_52000
     * @tc.name      : TestCase_520
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_520(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_520 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.boolean_3).id), 1i64)
            @Expect("assertion#955: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_520 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_52100
     * @tc.name      : TestCase_521
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_521(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_521 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.boolean_3).id), -1i64)
            @Expect("assertion#956: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_521 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_52200
     * @tc.name      : TestCase_522
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_522(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_522 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.boolean_3).id), 12345678i64)
            @Expect("assertion#957: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_522 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_52300
     * @tc.name      : TestCase_523
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_523(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_523 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.boolean_4).id), 1i64)
            @Expect("assertion#958: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_523 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_52400
     * @tc.name      : TestCase_524
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_524(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_524 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.boolean_4).id), -1i64)
            @Expect("assertion#959: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_524 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_52500
     * @tc.name      : TestCase_525
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_525(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_525 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.boolean_4).id), 12345678i64)
            @Expect("assertion#960: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_525 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_52600
     * @tc.name      : TestCase_526
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=1u32, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_526(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_526 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", 1u32), 1i64)
            @Expect("assertion#961: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_526 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_52700
     * @tc.name      : TestCase_527
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=1u32, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_527(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_527 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", 1u32), -1i64)
            @Expect("assertion#962: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_527 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_52800
     * @tc.name      : TestCase_528
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=1u32, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_528(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_528 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", 1u32), 12345678i64)
            @Expect("assertion#963: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_528 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_52900
     * @tc.name      : TestCase_529
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=0u32, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_529(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_529 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", 0u32), 1i64)
            @Expect("assertion#964: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_529 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_53000
     * @tc.name      : TestCase_530
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=0u32, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_530(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_530 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", 0u32), -1i64)
            @Expect("assertion#965: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_530 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_53100
     * @tc.name      : TestCase_531
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=0u32, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_531(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_531 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", 0u32), 12345678i64)
            @Expect("assertion#966: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_53500
     * @tc.name      : TestCase_535
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=UInt32.Min, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_535(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_535 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", UInt32.Min), 1i64)
            @Expect("assertion#970: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_535 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_53600
     * @tc.name      : TestCase_536
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=UInt32.Min, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_536(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_536 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", UInt32.Min), -1i64)
            @Expect("assertion#971: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_536 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_53700
     * @tc.name      : TestCase_537
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=UInt32.Min, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_537(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_537 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", UInt32.Min), 12345678i64)
            @Expect("assertion#972: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_537 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_53800
     * @tc.name      : TestCase_538
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=UInt32.Max, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_538(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_538 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", UInt32.Max), 1i64)
            @Expect("assertion#973: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_538 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_53900
     * @tc.name      : TestCase_539
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=UInt32.Max, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_539(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_539 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", UInt32.Max), -1i64)
            @Expect("assertion#974: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_539 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_54000
     * @tc.name      : TestCase_540
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=UInt32.Max, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_540(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_540 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", UInt32.Max), 12345678i64)
            @Expect("assertion#975: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_540 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_54100
     * @tc.name      : TestCase_541
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.module_desc).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_541(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_541 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.module_desc).id), 1i64)
            @Expect("assertion#976: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_541 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_54200
     * @tc.name      : TestCase_542
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.module_desc).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_542(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_542 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.module_desc).id), -1i64)
            @Expect("assertion#977: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_542 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_54300
     * @tc.name      : TestCase_543
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.module_desc).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_543(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_543 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.module_desc).id), 12345678i64)
            @Expect("assertion#978: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_543 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_54400
     * @tc.name      : TestCase_544
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.strarray.sizelist).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_544(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_544 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.strarray.sizelist).id), 1i64)
            @Expect("assertion#979: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_544 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_54500
     * @tc.name      : TestCase_545
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.strarray.sizelist).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_545(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_545 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.strarray.sizelist).id), -1i64)
            @Expect("assertion#980: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_545 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_54600
     * @tc.name      : TestCase_546
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.strarray.sizelist).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_546(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_546 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.strarray.sizelist).id), 12345678i64)
            @Expect("assertion#981: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_546 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_54700
     * @tc.name      : TestCase_547
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.plural.plural_name).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_547(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_547 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.plural.plural_name).id), 1i64)
            @Expect("assertion#982: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_547 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_54800
     * @tc.name      : TestCase_548
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.plural.plural_name).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_548(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_548 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.plural.plural_name).id), -1i64)
            @Expect("assertion#983: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_548 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_54900
     * @tc.name      : TestCase_549
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.plural.plural_name).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_549(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_549 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.plural.plural_name).id), 12345678i64)
            @Expect("assertion#984: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_549 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_55000
     * @tc.name      : TestCase_550
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.Test_Format1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_550(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_550 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.Test_Format1).id), 1i64)
            @Expect("assertion#985: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_550 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_55100
     * @tc.name      : TestCase_551
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.Test_Format1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_551(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_551 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.Test_Format1).id), -1i64)
            @Expect("assertion#986: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_551 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_55200
     * @tc.name      : TestCase_552
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.Test_Format1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_552(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_552 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.Test_Format1).id), 12345678i64)
            @Expect("assertion#987: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_552 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_55300
     * @tc.name      : TestCase_553
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.Test_Format2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_553(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_553 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.Test_Format2).id), 1i64)
            @Expect("assertion#988: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_553 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_55400
     * @tc.name      : TestCase_554
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.Test_Format2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_554(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_554 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.Test_Format2).id), -1i64)
            @Expect("assertion#989: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_554 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_55500
     * @tc.name      : TestCase_555
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.Test_Format2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_555(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_555 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.Test_Format2).id), 12345678i64)
            @Expect("assertion#990: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_555 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_55600
     * @tc.name      : TestCase_556
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.Test_Format3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_556(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_556 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.Test_Format3).id), 1i64)
            @Expect("assertion#991: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_556 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_55700
     * @tc.name      : TestCase_557
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.Test_Format3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_557(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_557 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.Test_Format3).id), -1i64)
            @Expect("assertion#992: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_557 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_55800
     * @tc.name      : TestCase_558
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.Test_Format3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_558(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_558 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.Test_Format3).id), 12345678i64)
            @Expect("assertion#993: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_558 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_55900
     * @tc.name      : TestCase_559
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_559(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_559 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.EntryAbility_desc).id),
                1i64)
            @Expect("assertion#994: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_559 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_56000
     * @tc.name      : TestCase_560
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_560(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_560 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.EntryAbility_desc).id),
                -1i64)
            @Expect("assertion#995: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_560 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_56100
     * @tc.name      : TestCase_561
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_561(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_561 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.EntryAbility_desc).id),
                12345678i64)
            @Expect("assertion#996: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_56200
     * @tc.name      : TestCase_562
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.media.layered_image).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_562(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_562 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.media.layered_image).id), 1i64)
            @Expect("assertion#997: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_562 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_56300
     * @tc.name      : TestCase_563
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.media.layered_image).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_563(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_563 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.media.layered_image).id), -1i64)
            @Expect("assertion#998: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_563 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_56400
     * @tc.name      : TestCase_564
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.media.layered_image).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_564(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_564 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.media.layered_image).id), 12345678i64)
            @Expect("assertion#999: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_564 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_56500
     * @tc.name      : TestCase_565
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_565(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_565 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.EntryAbility_label).id),
                1i64)
            @Expect("assertion#1000: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_565 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_56600
     * @tc.name      : TestCase_566
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_566(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_566 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.EntryAbility_label).id),
                -1i64)
            @Expect("assertion#1001: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_566 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_56700
     * @tc.name      : TestCase_567
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_567(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_567 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.string.EntryAbility_label).id),
                12345678i64)
            @Expect("assertion#1002: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_567 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_56800
     * @tc.name      : TestCase_568
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.media.startIcon).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_568(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_568 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.media.startIcon).id), 1i64)
            @Expect("assertion#1003: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_568 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_56900
     * @tc.name      : TestCase_569
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.media.startIcon).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_569(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_569 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.media.startIcon).id), -1i64)
            @Expect("assertion#1004: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_569 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_57000
     * @tc.name      : TestCase_570
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.media.startIcon).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_570(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_570 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.media.startIcon).id), 12345678i64)
            @Expect("assertion#1005: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_570 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_57100
     * @tc.name      : TestCase_571
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.profile.main_pages).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_571(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_571 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.profile.main_pages).id), 1i64)
            @Expect("assertion#1006: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_57200
     * @tc.name      : TestCase_572
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.profile.main_pages).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_572(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_572 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.profile.main_pages).id), -1i64)
            @Expect("assertion#1007: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_57300
     * @tc.name      : TestCase_573
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.profile.main_pages).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_573(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_573 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.profile.main_pages).id), 12345678i64)
            @Expect("assertion#1008: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_57400
     * @tc.name      : TestCase_574
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.color.start_window_background).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_574(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_574 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "entry", @r(app.color.start_window_background).id), 1i64)
            @Expect("assertion#1009: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_57500
     * @tc.name      : TestCase_575
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.color.start_window_background).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_575(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_575 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "entry", @r(app.color.start_window_background).id), -1i64)
            @Expect("assertion#1010: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_57600
     * @tc.name      : TestCase_576
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.color.start_window_background).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_576(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_576 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("\0", "entry", @r(app.color.start_window_background).id), 12345678i64)
            @Expect("assertion#1011: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_57700
     * @tc.name      : TestCase_577
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.float.float_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_577(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_577 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.float.float_1).id), 1i64)
            @Expect("assertion#1012: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_57800
     * @tc.name      : TestCase_578
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.float.float_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_578(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_578 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.float.float_1).id), -1i64)
            @Expect("assertion#1013: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_57900
     * @tc.name      : TestCase_579
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.float.float_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_579(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_579 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.float.float_1).id), 12345678i64)
            @Expect("assertion#1014: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_58000
     * @tc.name      : TestCase_580
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.float.float_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_580(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_580 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.float.float_2).id), 1i64)
            @Expect("assertion#1015: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_58100
     * @tc.name      : TestCase_581
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.float.float_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_581(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_581 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.float.float_2).id), -1i64)
            @Expect("assertion#1016: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_58200
     * @tc.name      : TestCase_582
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.float.float_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_582(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_582 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.float.float_2).id), 12345678i64)
            @Expect("assertion#1017: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_58300
     * @tc.name      : TestCase_583
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.integer.int_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_583(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_583 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.integer.int_1).id), 1i64)
            @Expect("assertion#1018: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_58400
     * @tc.name      : TestCase_584
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.integer.int_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_584(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_584 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.integer.int_1).id), -1i64)
            @Expect("assertion#1019: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_58500
     * @tc.name      : TestCase_585
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.integer.int_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_585(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_585 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.integer.int_1).id), 12345678i64)
            @Expect("assertion#1020: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_58600
     * @tc.name      : TestCase_586
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.integer.int_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_586(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_586 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.integer.int_2).id), 1i64)
            @Expect("assertion#1021: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_58700
     * @tc.name      : TestCase_587
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.integer.int_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_587(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_587 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.integer.int_2).id), -1i64)
            @Expect("assertion#1022: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_58800
     * @tc.name      : TestCase_588
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.integer.int_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_588(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_588 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.integer.int_2).id), 12345678i64)
            @Expect("assertion#1023: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_58900
     * @tc.name      : TestCase_589
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_589(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_589 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.test_boolean1).id), 1i64
            )
            @Expect("assertion#1024: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_59000
     * @tc.name      : TestCase_590
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_590(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_590 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.test_boolean1).id), -1i64
            )
            @Expect("assertion#1025: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_590 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_59100
     * @tc.name      : TestCase_591
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_591(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_591 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.test_boolean1).id), 12345678i64
            )
            @Expect("assertion#1026: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_591 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_59200
     * @tc.name      : TestCase_592
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_592(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_592 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.test_boolean0).id), 1i64
            )
            @Expect("assertion#1027: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_592 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_59300
     * @tc.name      : TestCase_593
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_593(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_593 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.test_boolean0).id), -1i64
            )
            @Expect("assertion#1028: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_593 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_59400
     * @tc.name      : TestCase_594
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_594(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_594 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.test_boolean0).id), 12345678i64
            )
            @Expect("assertion#1029: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_594 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_59500
     * @tc.name      : TestCase_595
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_595(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_595 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.boolean_3).id), 1i64)
            @Expect("assertion#1030: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_595 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_59600
     * @tc.name      : TestCase_596
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_596(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_596 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.boolean_3).id), -1i64)
            @Expect("assertion#1031: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_596 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_59700
     * @tc.name      : TestCase_597
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_597(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_597 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.boolean_3).id), 12345678i64)
            @Expect("assertion#1032: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_597 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_59800
     * @tc.name      : TestCase_598
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_4).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_598(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_598 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.boolean_4).id), 1i64)
            @Expect("assertion#1033: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_598 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_59900
     * @tc.name      : TestCase_599
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_4).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_599(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_599 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.boolean_4).id), -1i64)
            @Expect("assertion#1034: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_599 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_60000
     * @tc.name      : TestCase_600
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="\0",
                            moduleName="entry", resourceId=@r(app.boolean.boolean_4).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_600(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_600 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("\0", "entry", @r(app.boolean.boolean_4).id), 12345678i64)
            @Expect("assertion#1035: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_600 ends.")
    }
}
