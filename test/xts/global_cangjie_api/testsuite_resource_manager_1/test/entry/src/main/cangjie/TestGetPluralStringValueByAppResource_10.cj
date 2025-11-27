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
class TestGetPluralStringValueByAppResource_10 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_90100
     * @tc.name      : TestCase_901
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=1u32, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_901(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_901 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", 1u32), 1i64)
            @Expect("assertion#1336: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_901 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_90200
     * @tc.name      : TestCase_902
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=1u32, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_902(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_902 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", 1u32), -1i64)
            @Expect("assertion#1337: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_902 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_90300
     * @tc.name      : TestCase_903
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=1u32, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_903(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_903 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", 1u32), 12345678i64)
            @Expect("assertion#1338: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_903 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_90400
     * @tc.name      : TestCase_904
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=0u32, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_904(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_904 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", 0u32), 1i64)
            @Expect("assertion#1339: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_904 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_90500
     * @tc.name      : TestCase_905
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=0u32, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_905(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_905 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", 0u32), -1i64)
            @Expect("assertion#1340: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_905 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_90600
     * @tc.name      : TestCase_906
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=0u32, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_906(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_906 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", 0u32), 12345678i64)
            @Expect("assertion#1341: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_906 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_91000
     * @tc.name      : TestCase_910
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=UInt32.Min, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_910(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_910 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", UInt32.Min), 1i64)
            @Expect("assertion#1345: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_910 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_91100
     * @tc.name      : TestCase_911
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=UInt32.Min, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_911(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_911 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", UInt32.Min), -1i64)
            @Expect("assertion#1346: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_911 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_91200
     * @tc.name      : TestCase_912
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=UInt32.Min, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_912(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_912 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", UInt32.Min), 12345678i64)
            @Expect("assertion#1347: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_912 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_91300
     * @tc.name      : TestCase_913
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=UInt32.Max, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_913(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_913 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", UInt32.Max), 1i64)
            @Expect("assertion#1348: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_913 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_91400
     * @tc.name      : TestCase_914
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=UInt32.Max, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_914(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_914 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", UInt32.Max), -1i64)
            @Expect("assertion#1349: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_914 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_91500
     * @tc.name      : TestCase_915
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=UInt32.Max, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_915(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_915 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "", UInt32.Max), 12345678i64)
            @Expect("assertion#1350: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_915 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_91600
     * @tc.name      : TestCase_916
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.module_desc).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_916(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_916 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.module_desc).id), 1i64)
            @Expect("assertion#1351: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_916 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_91700
     * @tc.name      : TestCase_917
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.module_desc).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_917(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_917 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.module_desc).id), -1i64)
            @Expect("assertion#1352: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_917 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_91800
     * @tc.name      : TestCase_918
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.module_desc).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_918(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_918 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.module_desc).id), 12345678i64)
            @Expect("assertion#1353: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_918 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_91900
     * @tc.name      : TestCase_919
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.strarray.sizelist).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_919(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_919 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.strarray.sizelist).id), 1i64)
            @Expect("assertion#1354: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_919 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_92000
     * @tc.name      : TestCase_920
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.strarray.sizelist).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_920(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_920 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.strarray.sizelist).id), -1i64)
            @Expect("assertion#1355: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_920 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_92100
     * @tc.name      : TestCase_921
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.strarray.sizelist).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_921(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_921 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.strarray.sizelist).id), 12345678i64)
            @Expect("assertion#1356: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_921 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_92200
     * @tc.name      : TestCase_922
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.plural.plural_name).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_922(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_922 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.plural.plural_name).id), 1i64)
            @Expect("assertion#1357: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_922 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_92300
     * @tc.name      : TestCase_923
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.plural.plural_name).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_923(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_923 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.plural.plural_name).id), -1i64)
            @Expect("assertion#1358: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_923 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_92400
     * @tc.name      : TestCase_924
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.plural.plural_name).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_924(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_924 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.plural.plural_name).id), 12345678i64)
            @Expect("assertion#1359: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_924 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_92500
     * @tc.name      : TestCase_925
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.Test_Format1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_925(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_925 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format1).id), 1i64)
            @Expect("assertion#1360: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_925 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_92600
     * @tc.name      : TestCase_926
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.Test_Format1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_926(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_926 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format1).id), -1i64)
            @Expect("assertion#1361: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_926 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_92700
     * @tc.name      : TestCase_927
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.Test_Format1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_927(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_927 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format1).id), 12345678i64)
            @Expect("assertion#1362: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_927 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_92800
     * @tc.name      : TestCase_928
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.Test_Format2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_928(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_928 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format2).id), 1i64)
            @Expect("assertion#1363: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_928 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_92900
     * @tc.name      : TestCase_929
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.Test_Format2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_929(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_929 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format2).id), -1i64)
            @Expect("assertion#1364: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_929 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_93000
     * @tc.name      : TestCase_930
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.Test_Format2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_930(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_930 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format2).id), 12345678i64)
            @Expect("assertion#1365: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_930 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_93100
     * @tc.name      : TestCase_931
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.Test_Format3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_931(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_931 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format3).id), 1i64)
            @Expect("assertion#1366: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_931 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_93200
     * @tc.name      : TestCase_932
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.Test_Format3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_932(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_932 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format3).id), -1i64)
            @Expect("assertion#1367: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_932 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_93300
     * @tc.name      : TestCase_933
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.Test_Format3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_933(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_933 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.Test_Format3).id), 12345678i64)
            @Expect("assertion#1368: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_933 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_93400
     * @tc.name      : TestCase_934
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.EntryAbility_desc).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_934(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_934 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_desc).id), 1i64)
            @Expect("assertion#1369: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_934 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_93500
     * @tc.name      : TestCase_935
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.EntryAbility_desc).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_935(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_935 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_desc).id), -1i64)
            @Expect("assertion#1370: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_935 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_93600
     * @tc.name      : TestCase_936
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.EntryAbility_desc).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_936(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_936 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_desc).id), 12345678i64)
            @Expect("assertion#1371: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_936 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_93700
     * @tc.name      : TestCase_937
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.media.layered_image).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_937(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_937 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.media.layered_image).id), 1i64)
            @Expect("assertion#1372: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_937 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_93800
     * @tc.name      : TestCase_938
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.media.layered_image).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_938(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_938 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.media.layered_image).id), -1i64)
            @Expect("assertion#1373: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_938 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_93900
     * @tc.name      : TestCase_939
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.media.layered_image).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_939(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_939 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.media.layered_image).id), 12345678i64)
            @Expect("assertion#1374: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_939 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_94000
     * @tc.name      : TestCase_940
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.EntryAbility_label).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_940(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_940 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_label).id), 1i64)
            @Expect("assertion#1375: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_940 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_94100
     * @tc.name      : TestCase_941
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.EntryAbility_label).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_941(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_941 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_label).id), -1i64)
            @Expect("assertion#1376: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_941 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_94200
     * @tc.name      : TestCase_942
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.string.EntryAbility_label).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_942(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_942 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.string.EntryAbility_label).id), 12345678i64)
            @Expect("assertion#1377: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_942 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_94300
     * @tc.name      : TestCase_943
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.media.startIcon).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_943(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_943 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.media.startIcon).id), 1i64)
            @Expect("assertion#1378: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_943 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_94400
     * @tc.name      : TestCase_944
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.media.startIcon).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_944(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_944 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.media.startIcon).id), -1i64)
            @Expect("assertion#1379: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_944 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_94500
     * @tc.name      : TestCase_945
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.media.startIcon).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_945(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_945 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.media.startIcon).id), 12345678i64)
            @Expect("assertion#1380: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_945 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_94600
     * @tc.name      : TestCase_946
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.profile.main_pages).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_946(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_946 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.profile.main_pages).id), 1i64)
            @Expect("assertion#1381: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_946 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_94700
     * @tc.name      : TestCase_947
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.profile.main_pages).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_947(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_947 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.profile.main_pages).id), -1i64)
            @Expect("assertion#1382: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_947 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_94800
     * @tc.name      : TestCase_948
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.profile.main_pages).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_948(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_948 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.profile.main_pages).id), 12345678i64)
            @Expect("assertion#1383: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_948 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_94900
     * @tc.name      : TestCase_949
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.color.start_window_background).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_949(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_949 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.color.start_window_background).id), 1i64)
            @Expect("assertion#1384: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_949 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_95000
     * @tc.name      : TestCase_950
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.color.start_window_background).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_950(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_950 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.color.start_window_background).id), -1i64)
            @Expect("assertion#1385: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_950 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_95100
     * @tc.name      : TestCase_951
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.color.start_window_background).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_951(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_951 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.color.start_window_background).id), 12345678i64)
            @Expect("assertion#1386: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_951 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_95200
     * @tc.name      : TestCase_952
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.float.float_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_952(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_952 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.float.float_1).id), 1i64)
            @Expect("assertion#1387: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_952 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_95300
     * @tc.name      : TestCase_953
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.float.float_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_953(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_953 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.float.float_1).id), -1i64)
            @Expect("assertion#1388: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_953 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_95400
     * @tc.name      : TestCase_954
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.float.float_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_954(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_954 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.float.float_1).id), 12345678i64)
            @Expect("assertion#1389: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_954 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_95500
     * @tc.name      : TestCase_955
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.float.float_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_955(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_955 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.float.float_2).id), 1i64)
            @Expect("assertion#1390: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_955 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_95600
     * @tc.name      : TestCase_956
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.float.float_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_956(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_956 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.float.float_2).id), -1i64)
            @Expect("assertion#1391: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_956 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_95700
     * @tc.name      : TestCase_957
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.float.float_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_957(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_957 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.float.float_2).id), 12345678i64)
            @Expect("assertion#1392: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_957 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_95800
     * @tc.name      : TestCase_958
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.integer.int_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_958(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_958 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.integer.int_1).id), 1i64)
            @Expect("assertion#1393: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_958 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_95900
     * @tc.name      : TestCase_959
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.integer.int_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_959(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_959 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.integer.int_1).id), -1i64)
            @Expect("assertion#1394: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_959 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_96000
     * @tc.name      : TestCase_960
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.integer.int_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_960(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_960 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.integer.int_1).id), 12345678i64)
            @Expect("assertion#1395: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_960 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_96100
     * @tc.name      : TestCase_961
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.integer.int_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_961(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_961 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.integer.int_2).id), 1i64)
            @Expect("assertion#1396: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_961 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_96200
     * @tc.name      : TestCase_962
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.integer.int_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_962(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_962 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.integer.int_2).id), -1i64)
            @Expect("assertion#1397: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_962 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_96300
     * @tc.name      : TestCase_963
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.integer.int_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_963(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_963 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.integer.int_2).id), 12345678i64)
            @Expect("assertion#1398: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_963 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_96400
     * @tc.name      : TestCase_964
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.test_boolean1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_964(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_964 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean1).id), 1i64)
            @Expect("assertion#1399: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_964 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_96500
     * @tc.name      : TestCase_965
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.test_boolean1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_965(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_965 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean1).id), -1i64)
            @Expect("assertion#1400: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_965 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_96600
     * @tc.name      : TestCase_966
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.test_boolean1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_966(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_966 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean1).id), 12345678i64)
            @Expect("assertion#1401: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_966 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_96700
     * @tc.name      : TestCase_967
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.test_boolean0).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_967(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_967 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean0).id), 1i64)
            @Expect("assertion#1402: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_967 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_96800
     * @tc.name      : TestCase_968
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.test_boolean0).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_968(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_968 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean0).id), -1i64)
            @Expect("assertion#1403: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_968 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_96900
     * @tc.name      : TestCase_969
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.test_boolean0).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_969(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_969 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.test_boolean0).id), 12345678i64)
            @Expect("assertion#1404: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_969 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_97000
     * @tc.name      : TestCase_970
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.boolean_3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_970(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_970 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_3).id), 1i64)
            @Expect("assertion#1405: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_970 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_97100
     * @tc.name      : TestCase_971
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.boolean_3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_971(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_971 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_3).id), -1i64)
            @Expect("assertion#1406: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_971 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_97200
     * @tc.name      : TestCase_972
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.boolean_3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_972(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_972 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_3).id), 12345678i64)
            @Expect("assertion#1407: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_972 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_97300
     * @tc.name      : TestCase_973
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.boolean_4).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_973(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_973 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_4).id), 1i64)
            @Expect("assertion#1408: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_973 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_97400
     * @tc.name      : TestCase_974
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.boolean_4).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_974(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_974 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_4).id), -1i64)
            @Expect("assertion#1409: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_974 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_97500
     * @tc.name      : TestCase_975
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="", resourceId=@r(app.boolean.boolean_4).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_975(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_975 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "", @r(app.boolean.boolean_4).id), 12345678i64)
            @Expect("assertion#1410: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_975 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_97600
     * @tc.name      : TestCase_976
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=1u32, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_976(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_976 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", 1u32), 1i64)
            @Expect("assertion#1411: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_976 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_97700
     * @tc.name      : TestCase_977
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=1u32, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_977(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_977 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", 1u32), -1i64)
            @Expect("assertion#1412: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_977 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_97800
     * @tc.name      : TestCase_978
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=1u32, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_978(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_978 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", 1u32), 12345678i64)
            @Expect("assertion#1413: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_978 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_97900
     * @tc.name      : TestCase_979
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=0u32, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_979(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_979 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", 0u32), 1i64)
            @Expect("assertion#1414: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_979 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_98000
     * @tc.name      : TestCase_980
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=0u32, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_980(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_980 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", 0u32), -1i64)
            @Expect("assertion#1415: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_980 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_98100
     * @tc.name      : TestCase_981
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=0u32, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_981(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_981 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", 0u32), 12345678i64)
            @Expect("assertion#1416: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_981 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_98500
     * @tc.name      : TestCase_985
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=UInt32.Min, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_985(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_985 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", UInt32.Min), 1i64)
            @Expect("assertion#1420: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_985 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_98600
     * @tc.name      : TestCase_986
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=UInt32.Min, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_986(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_986 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", UInt32.Min), -1i64)
            @Expect("assertion#1421: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_986 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_98700
     * @tc.name      : TestCase_987
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=UInt32.Min, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_987(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_987 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", UInt32.Min), 12345678i64)
            @Expect("assertion#1422: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_987 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_98800
     * @tc.name      : TestCase_988
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=UInt32.Max, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_988(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_988 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", UInt32.Max), 1i64)
            @Expect("assertion#1423: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_988 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_98900
     * @tc.name      : TestCase_989
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=UInt32.Max, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_989(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_989 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", UInt32.Max), -1i64)
            @Expect("assertion#1424: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_989 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_99000
     * @tc.name      : TestCase_990
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=UInt32.Max, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_990(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_990 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(AppResource("com.example.myapplication", "\0", UInt32.Max), 12345678i64)
            @Expect("assertion#1425: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_990 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_99100
     * @tc.name      : TestCase_991
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.module_desc).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_991(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_991 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.module_desc).id), 1i64)
            @Expect("assertion#1426: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_991 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_99200
     * @tc.name      : TestCase_992
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.module_desc).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_992(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_992 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.module_desc).id), -1i64)
            @Expect("assertion#1427: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_992 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_99300
     * @tc.name      : TestCase_993
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.module_desc).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_993(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_993 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.module_desc).id), 12345678i64)
            @Expect("assertion#1428: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_993 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_99400
     * @tc.name      : TestCase_994
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.strarray.sizelist).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_994(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_994 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.strarray.sizelist).id), 1i64)
            @Expect("assertion#1429: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_994 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_99500
     * @tc.name      : TestCase_995
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.strarray.sizelist).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_995(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_995 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.strarray.sizelist).id), -1i64)
            @Expect("assertion#1430: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_995 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_99600
     * @tc.name      : TestCase_996
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.strarray.sizelist).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_996(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_996 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.strarray.sizelist).id), 12345678i64)
            @Expect("assertion#1431: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_996 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_99700
     * @tc.name      : TestCase_997
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.plural.plural_name).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_997(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_997 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.plural.plural_name).id), 1i64)
            @Expect("assertion#1432: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_997 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_99800
     * @tc.name      : TestCase_998
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.plural.plural_name).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_998(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_998 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.plural.plural_name).id), -1i64)
            @Expect("assertion#1433: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_998 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_99900
     * @tc.name      : TestCase_999
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.plural.plural_name).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_999(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_999 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.plural.plural_name).id), 12345678i64)
            @Expect("assertion#1434: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_999 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_100000
     * @tc.name      : TestCase_1000
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.Test_Format1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1000(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1000 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format1).id), 1i64)
            @Expect("assertion#1435: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1000 ends.")
    }
}
