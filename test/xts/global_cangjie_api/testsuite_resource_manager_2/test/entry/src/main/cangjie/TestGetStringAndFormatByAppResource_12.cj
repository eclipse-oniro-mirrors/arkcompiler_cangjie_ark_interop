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
class TestGetStringAndFormatByAppResource_12 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_110100
     * @tc.name      : TestCase_1101
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1101 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1100: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_110200
     * @tc.name      : TestCase_1102
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1102 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1101: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_110300
     * @tc.name      : TestCase_1103
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1103 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1102: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_110400
     * @tc.name      : TestCase_1104
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1104 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1103: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_110500
     * @tc.name      : TestCase_1105
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1105 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1104: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_110600
     * @tc.name      : TestCase_1106
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1106 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1105: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_110700
     * @tc.name      : TestCase_1107
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1107 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.float.float_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1106: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_110800
     * @tc.name      : TestCase_1108
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1108 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1107: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_110900
     * @tc.name      : TestCase_1109
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1109 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1108: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_111000
     * @tc.name      : TestCase_1110
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1110 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1109: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_111100
     * @tc.name      : TestCase_1111
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1111 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1110: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_111200
     * @tc.name      : TestCase_1112
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1112 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1111: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_111300
     * @tc.name      : TestCase_1113
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1113 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.integer.int_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1112: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_111400
     * @tc.name      : TestCase_1114
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1114 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1113: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_111500
     * @tc.name      : TestCase_1115
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1115 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1114: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_111600
     * @tc.name      : TestCase_1116
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1116 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1115: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_111700
     * @tc.name      : TestCase_1117
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1117 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1116: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_111800
     * @tc.name      : TestCase_1118
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1118 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1117: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_111900
     * @tc.name      : TestCase_1119
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1119 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1118: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_112000
     * @tc.name      : TestCase_1120
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1120 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1119: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_112100
     * @tc.name      : TestCase_1121
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1121 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1120: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_112200
     * @tc.name      : TestCase_1122
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1122 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1121: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_112300
     * @tc.name      : TestCase_1123
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1123 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1122: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_112400
     * @tc.name      : TestCase_1124
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1124 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1123: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_112500
     * @tc.name      : TestCase_1125
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1125 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.boolean.boolean_4).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1124: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_112600
     * @tc.name      : TestCase_1126
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=1u32),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1126 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", 1u32),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1125: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_112700
     * @tc.name      : TestCase_1127
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=1u32),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1127 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", 1u32),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1126: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_112800
     * @tc.name      : TestCase_1128
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=1u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1128 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", 1u32),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1127: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_112900
     * @tc.name      : TestCase_1129
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=0u32),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1129 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", 0u32),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1128: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_113000
     * @tc.name      : TestCase_1130
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=0u32),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1130 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", 0u32),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1129: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_113100
     * @tc.name      : TestCase_1131
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=0u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1131 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", 0u32),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1130: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_113500
     * @tc.name      : TestCase_1135
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Min),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1135 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", UInt32.Min),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1134: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_113600
     * @tc.name      : TestCase_1136
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Min),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1136 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", UInt32.Min),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1135: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_113700
     * @tc.name      : TestCase_1137
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Min),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1137 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", UInt32.Min),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1136: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_113800
     * @tc.name      : TestCase_1138
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Max),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1138 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", UInt32.Max),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1137: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_113900
     * @tc.name      : TestCase_1139
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Max),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1139 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", UInt32.Max),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1138: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_114000
     * @tc.name      : TestCase_1140
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=UInt32.Max),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1140 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", UInt32.Max),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1139: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_114100
     * @tc.name      : TestCase_1141
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.module_desc).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1141(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1141 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.module_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1140: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)
 
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_114200
     * @tc.name      : TestCase_1142
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.module_desc).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1142(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1142 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.module_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1141: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_114300
     * @tc.name      : TestCase_1143
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.module_desc).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1143(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1143 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.module_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1142: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)
 
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_114400
     * @tc.name      : TestCase_1144
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.strarray.sizelist).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1144(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1144 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.strarray.sizelist).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1143: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_114500
     * @tc.name      : TestCase_1145
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.strarray.sizelist).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1145(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1145 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.strarray.sizelist).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1144: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_114600
     * @tc.name      : TestCase_1146
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.strarray.sizelist).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1146(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1146 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.strarray.sizelist).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1145: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_114700
     * @tc.name      : TestCase_1147
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.plural.plural_name).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1147(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1147 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.plural.plural_name).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1146: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_114800
     * @tc.name      : TestCase_1148
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.plural.plural_name).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1148(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1148 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.plural.plural_name).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1147: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_114900
     * @tc.name      : TestCase_1149
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.plural.plural_name).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1149(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1149 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.plural.plural_name).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1148: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_115000
     * @tc.name      : TestCase_1150
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1150(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1150 begins.")
        @Assert(getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format1).id), ArgsValueType.Int32Value(100i32)), "int is 100")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_115100
     * @tc.name      : TestCase_1151
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1151(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1151 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1149: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_115200
     * @tc.name      : TestCase_1152
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1152(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1152 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1150: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_115300
     * @tc.name      : TestCase_1153
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1153(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1153 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1151: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_115400
     * @tc.name      : TestCase_1154
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1154(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1154 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1152: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)
 
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_115500
     * @tc.name      : TestCase_1155
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1155(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1155 begins.")
        @Assert(getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format2).id), ArgsValueType.Float32Value(3.140000f32)), "float is 3.140000")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_115600
     * @tc.name      : TestCase_1156
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1156(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1156 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1153: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_115700
     * @tc.name      : TestCase_1157
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1157(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1157 begins.")
        @Assert(getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format3).id), ArgsValueType.StringValue("hello")), "string is hello")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_115800
     * @tc.name      : TestCase_1158
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.Test_Format3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1158(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1158 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.Test_Format3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1154: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_115900
     * @tc.name      : TestCase_1159
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1159(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1159 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1155: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_116000
     * @tc.name      : TestCase_1160
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1160(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1160 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1156: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_116100
     * @tc.name      : TestCase_1161
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1161(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1161 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1157: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_116200
     * @tc.name      : TestCase_1162
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.media.layered_image).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1162(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1162 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.media.layered_image).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1158: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_116300
     * @tc.name      : TestCase_1163
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.media.layered_image).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1163(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1163 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.media.layered_image).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1159: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_116400
     * @tc.name      : TestCase_1164
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.media.layered_image).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1164(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1164 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.media.layered_image).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1160: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_116500
     * @tc.name      : TestCase_1165
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1165(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1165 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1161: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_116600
     * @tc.name      : TestCase_1166
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1166(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1166 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.EntryAbility_label).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1162: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_116700
     * @tc.name      : TestCase_1167
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1167(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1167 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by ResId")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1163: not throw", "fail to get string and format by ResId")
        } catch (e: BusinessException) {
            @Expect(e.code, 9001007i32)

        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_116800
     * @tc.name      : TestCase_1168
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.media.startIcon).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1168(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1168 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.media.startIcon).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1164: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_116900
     * @tc.name      : TestCase_1169
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.media.startIcon).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1169(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1169 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.media.startIcon).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1165: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_117000
     * @tc.name      : TestCase_1170
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.media.startIcon).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1170(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1170 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.media.startIcon).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1166: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_117100
     * @tc.name      : TestCase_1171
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.profile.main_pages).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1171(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1171 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.profile.main_pages).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1167: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_117200
     * @tc.name      : TestCase_1172
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.profile.main_pages).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1172(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1172 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.profile.main_pages).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1168: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_117300
     * @tc.name      : TestCase_1173
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.profile.main_pages).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1173(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1173 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.profile.main_pages).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1169: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_117400
     * @tc.name      : TestCase_1174
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.color.start_window_background).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1174(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1174 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.color.start_window_background).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1170: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_117500
     * @tc.name      : TestCase_1175
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.color.start_window_background).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1175(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1175 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.color.start_window_background).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1171: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_117600
     * @tc.name      : TestCase_1176
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.color.start_window_background).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1176(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1176 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.color.start_window_background).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1172: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_117700
     * @tc.name      : TestCase_1177
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.float.float_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1177(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1177 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.float.float_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1173: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_117800
     * @tc.name      : TestCase_1178
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.float.float_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1178(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1178 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.float.float_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1174: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_117900
     * @tc.name      : TestCase_1179
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.float.float_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1179(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1179 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.float.float_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1175: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_118000
     * @tc.name      : TestCase_1180
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.float.float_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1180(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1180 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.float.float_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1176: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_118100
     * @tc.name      : TestCase_1181
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.float.float_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1181(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1181 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.float.float_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1177: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_118200
     * @tc.name      : TestCase_1182
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.float.float_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1182(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1182 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.float.float_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1178: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_118300
     * @tc.name      : TestCase_1183
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.integer.int_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1183(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1183 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.integer.int_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1179: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_118400
     * @tc.name      : TestCase_1184
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.integer.int_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1184(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1184 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.integer.int_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1180: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_118500
     * @tc.name      : TestCase_1185
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.integer.int_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1185(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1185 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.integer.int_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1181: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_118600
     * @tc.name      : TestCase_1186
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.integer.int_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1186(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1186 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.integer.int_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1182: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_118700
     * @tc.name      : TestCase_1187
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.integer.int_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1187(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1187 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.integer.int_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1183: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_118800
     * @tc.name      : TestCase_1188
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.integer.int_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1188(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1188 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("com.example.myapplication", "entry", @r(app.integer.int_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1184: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_118900
     * @tc.name      : TestCase_1189
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1189(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1189 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1185: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_119000
     * @tc.name      : TestCase_1190
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1190(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1190 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.test_boolean1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1186: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_119100
     * @tc.name      : TestCase_1191
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1191(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1191 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1187: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_119200
     * @tc.name      : TestCase_1192
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1192(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1192 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1188: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_119300
     * @tc.name      : TestCase_1193
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1193(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1193 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.test_boolean0).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1189: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_119400
     * @tc.name      : TestCase_1194
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1194(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1194 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1190: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_119500
     * @tc.name      : TestCase_1195
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.boolean_3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1195(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1195 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.boolean_3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1191: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_119600
     * @tc.name      : TestCase_1196
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.boolean_3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1196(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1196 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.boolean_3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1192: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_119700
     * @tc.name      : TestCase_1197
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.boolean_3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1197(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1197 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.boolean_3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1193: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_119800
     * @tc.name      : TestCase_1198
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.boolean_4).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1198(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1198 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.boolean_4).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#1194: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_119900
     * @tc.name      : TestCase_1199
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.boolean_4).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1199(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1199 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.boolean_4).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#1195: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_120000
     * @tc.name      : TestCase_1200
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="com.example.myapplication", moduleName="entry", resourceId=@r(app.boolean.boolean_4).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1200(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1200 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(
                AppResource("com.example.myapplication", "entry", @r(app.boolean.boolean_4).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#1196: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1200 ends.")
    }
}
