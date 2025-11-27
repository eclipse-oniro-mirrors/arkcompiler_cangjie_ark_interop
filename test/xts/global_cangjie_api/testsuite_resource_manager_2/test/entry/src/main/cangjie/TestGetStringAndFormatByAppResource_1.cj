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
class TestGetStringAndFormatByAppResource_1 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_0100
     * @tc.name      : TestCase_1
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=1u32),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", 1u32), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#0: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_0200
     * @tc.name      : TestCase_2
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=1u32),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", 1u32), ArgsValueType.StringValue("hello"))
            @Expect("assertion#1: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_0300
     * @tc.name      : TestCase_3
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=1u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", 1u32), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#2: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_0400
     * @tc.name      : TestCase_4
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=0u32),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", 0u32), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#3: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_0500
     * @tc.name      : TestCase_5
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=0u32),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", 0u32), ArgsValueType.StringValue("hello"))
            @Expect("assertion#4: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_0600
     * @tc.name      : TestCase_6
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=0u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", 0u32), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#5: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_1000
     * @tc.name      : TestCase_10
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=UInt32.Min),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", UInt32.Min), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#9: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_1100
     * @tc.name      : TestCase_11
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=UInt32.Min),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", UInt32.Min), ArgsValueType.StringValue("hello"))
            @Expect("assertion#10: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_1200
     * @tc.name      : TestCase_12
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=UInt32.Min),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", UInt32.Min), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#11: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_1300
     * @tc.name      : TestCase_13
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=UInt32.Max),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", UInt32.Max), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#12: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_1400
     * @tc.name      : TestCase_14
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=UInt32.Max),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", UInt32.Max), ArgsValueType.StringValue("hello"))
            @Expect("assertion#13: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_1500
     * @tc.name      : TestCase_15
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=UInt32.Max),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", UInt32.Max), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#14: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_1600
     * @tc.name      : TestCase_16
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.module_desc).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.module_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#15: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_1700
     * @tc.name      : TestCase_17
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.module_desc).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.module_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#16: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_1800
     * @tc.name      : TestCase_18
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.module_desc).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.module_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#17: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_1900
     * @tc.name      : TestCase_19
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.strarray.sizelist).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.strarray.sizelist).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#18: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_2000
     * @tc.name      : TestCase_20
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.strarray.sizelist).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.strarray.sizelist).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#19: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_2100
     * @tc.name      : TestCase_21
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.strarray.sizelist).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.strarray.sizelist).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#20: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_2200
     * @tc.name      : TestCase_22
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.plural.plural_name).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.plural.plural_name).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#21: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_2300
     * @tc.name      : TestCase_23
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.plural.plural_name).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.plural.plural_name).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#22: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_2400
     * @tc.name      : TestCase_24
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.plural.plural_name).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.plural.plural_name).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#23: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_2500
     * @tc.name      : TestCase_25
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.Test_Format1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.Test_Format1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#24: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_2600
     * @tc.name      : TestCase_26
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.Test_Format1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.Test_Format1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#25: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_2700
     * @tc.name      : TestCase_27
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.Test_Format1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.Test_Format1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#26: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_2800
     * @tc.name      : TestCase_28
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.Test_Format2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.Test_Format2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#27: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_2900
     * @tc.name      : TestCase_29
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.Test_Format2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.Test_Format2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#28: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_3000
     * @tc.name      : TestCase_30
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.Test_Format2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.Test_Format2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#29: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_3100
     * @tc.name      : TestCase_31
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.Test_Format3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.Test_Format3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#30: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_3200
     * @tc.name      : TestCase_32
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.Test_Format3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.Test_Format3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#31: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_3300
     * @tc.name      : TestCase_33
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.Test_Format3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.Test_Format3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#32: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_3400
     * @tc.name      : TestCase_34
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#33: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_3500
     * @tc.name      : TestCase_35
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#34: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_3600
     * @tc.name      : TestCase_36
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.EntryAbility_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#35: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_3700
     * @tc.name      : TestCase_37
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.media.layered_image).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.media.layered_image).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#36: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_3800
     * @tc.name      : TestCase_38
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.media.layered_image).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.media.layered_image).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#37: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_3900
     * @tc.name      : TestCase_39
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.media.layered_image).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.media.layered_image).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#38: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_4000
     * @tc.name      : TestCase_40
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.EntryAbility_label).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#39: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_4100
     * @tc.name      : TestCase_41
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.EntryAbility_label).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.EntryAbility_label).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#40: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_4200
     * @tc.name      : TestCase_42
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.string.EntryAbility_label).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.string.EntryAbility_label).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#41: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_4300
     * @tc.name      : TestCase_43
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.media.startIcon).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.media.startIcon).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#42: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_4400
     * @tc.name      : TestCase_44
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.media.startIcon).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.media.startIcon).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#43: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_4500
     * @tc.name      : TestCase_45
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.media.startIcon).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.media.startIcon).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#44: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_4600
     * @tc.name      : TestCase_46
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.profile.main_pages).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.profile.main_pages).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#45: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_4700
     * @tc.name      : TestCase_47
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.profile.main_pages).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.profile.main_pages).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#46: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_4800
     * @tc.name      : TestCase_48
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.profile.main_pages).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.profile.main_pages).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#47: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_4900
     * @tc.name      : TestCase_49
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.color.start_window_background).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.color.start_window_background).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#48: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_5000
     * @tc.name      : TestCase_50
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.color.start_window_background).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.color.start_window_background).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#49: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_5100
     * @tc.name      : TestCase_51
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.color.start_window_background).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.color.start_window_background).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#50: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_5200
     * @tc.name      : TestCase_52
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.float.float_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.float.float_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#51: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_5300
     * @tc.name      : TestCase_53
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.float.float_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.float.float_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#52: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_5400
     * @tc.name      : TestCase_54
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.float.float_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.float.float_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#53: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_5500
     * @tc.name      : TestCase_55
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.float.float_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.float.float_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#54: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_5600
     * @tc.name      : TestCase_56
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.float.float_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.float.float_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#55: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_5700
     * @tc.name      : TestCase_57
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.float.float_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.float.float_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#56: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_5800
     * @tc.name      : TestCase_58
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.integer.int_1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.integer.int_1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#57: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_5900
     * @tc.name      : TestCase_59
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.integer.int_1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.integer.int_1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#58: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_6000
     * @tc.name      : TestCase_60
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.integer.int_1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.integer.int_1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#59: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_6100
     * @tc.name      : TestCase_61
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.integer.int_2).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.integer.int_2).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#60: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_6200
     * @tc.name      : TestCase_62
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.integer.int_2).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.integer.int_2).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#61: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_6300
     * @tc.name      : TestCase_63
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.integer.int_2).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.integer.int_2).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#62: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_6400
     * @tc.name      : TestCase_64
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.test_boolean1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#63: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_6500
     * @tc.name      : TestCase_65
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.test_boolean1).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.test_boolean1).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#64: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_6600
     * @tc.name      : TestCase_66
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.test_boolean1).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.test_boolean1).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#65: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_6700
     * @tc.name      : TestCase_67
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.test_boolean0).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#66: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_6800
     * @tc.name      : TestCase_68
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.test_boolean0).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.test_boolean0).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#67: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_6900
     * @tc.name      : TestCase_69
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.test_boolean0).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.test_boolean0).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#68: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_7000
     * @tc.name      : TestCase_70
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.boolean_3).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.boolean_3).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#69: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_7100
     * @tc.name      : TestCase_71
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.boolean_3).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.boolean_3).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#70: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_7200
     * @tc.name      : TestCase_72
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.boolean_3).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.boolean_3).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#71: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_7300
     * @tc.name      : TestCase_73
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.boolean_4).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.boolean_4).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#72: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_7400
     * @tc.name      : TestCase_74
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.boolean_4).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.boolean_4).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#73: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_7500
     * @tc.name      : TestCase_75
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="", resourceId=@r(app.boolean.boolean_4).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "", @r(app.boolean.boolean_4).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#74: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_7600
     * @tc.name      : TestCase_76
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=1u32),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", 1u32), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#75: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_7700
     * @tc.name      : TestCase_77
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=1u32),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", 1u32), ArgsValueType.StringValue("hello"))
            @Expect("assertion#76: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_7800
     * @tc.name      : TestCase_78
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=1u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", 1u32), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#77: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_7900
     * @tc.name      : TestCase_79
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=0u32),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", 0u32), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#78: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_8000
     * @tc.name      : TestCase_80
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=0u32),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", 0u32), ArgsValueType.StringValue("hello"))
            @Expect("assertion#79: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_8100
     * @tc.name      : TestCase_81
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=0u32),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", 0u32), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#80: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 ends.")
    }

   

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_8500
     * @tc.name      : TestCase_85
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=UInt32.Min),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", UInt32.Min), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#84: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_8600
     * @tc.name      : TestCase_86
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=UInt32.Min),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", UInt32.Min), ArgsValueType.StringValue("hello"))
            @Expect("assertion#85: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_8700
     * @tc.name      : TestCase_87
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=UInt32.Min),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", UInt32.Min), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#86: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_8800
     * @tc.name      : TestCase_88
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=UInt32.Max),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", UInt32.Max), ArgsValueType.Int32Value(100i32))
            @Expect("assertion#87: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_8900
     * @tc.name      : TestCase_89
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=UInt32.Max),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", UInt32.Max), ArgsValueType.StringValue("hello"))
            @Expect("assertion#88: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_9000
     * @tc.name      : TestCase_90
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=UInt32.Max),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", UInt32.Max), ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#89: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_9100
     * @tc.name      : TestCase_91
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=@r(app.string.module_desc).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", @r(app.string.module_desc).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#90: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_9200
     * @tc.name      : TestCase_92
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=@r(app.string.module_desc).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", @r(app.string.module_desc).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#91: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_9300
     * @tc.name      : TestCase_93
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=@r(app.string.module_desc).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", @r(app.string.module_desc).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#92: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_9400
     * @tc.name      : TestCase_94
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=@r(app.strarray.sizelist).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", @r(app.strarray.sizelist).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#93: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_9500
     * @tc.name      : TestCase_95
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=@r(app.strarray.sizelist).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", @r(app.strarray.sizelist).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#94: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_9600
     * @tc.name      : TestCase_96
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=@r(app.strarray.sizelist).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", @r(app.strarray.sizelist).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#95: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_9700
     * @tc.name      : TestCase_97
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=@r(app.plural.plural_name).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", @r(app.plural.plural_name).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#96: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_9800
     * @tc.name      : TestCase_98
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=@r(app.plural.plural_name).id),
            args=StringValue("hello").

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", @r(app.plural.plural_name).id),
                ArgsValueType.StringValue("hello"))
            @Expect("assertion#97: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_9900
     * @tc.name      : TestCase_99
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=@r(app.plural.plural_name).id),
            args=Float32Value(3.140000f32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", @r(app.plural.plural_name).id),
                ArgsValueType.Float32Value(3.140000f32))
            @Expect("assertion#98: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByAppResource_10000
     * @tc.name      : TestCase_100
     * @tc.desc      :             get stringAndFormat by AppResource(bundleName="", moduleName="\0", resourceId=@r(app.string.Test_Format1).id),
            args=Int32Value(100i32).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(AppResource("", "\0", @r(app.string.Test_Format1).id),
                ArgsValueType.Int32Value(100i32))
            @Expect("assertion#99: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 ends.")
    }
}
