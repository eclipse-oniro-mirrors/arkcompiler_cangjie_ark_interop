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
class TestGetPluralStringValueByAppResource_11 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_100100
     * @tc.name      : TestCase_1001
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.Test_Format1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1001(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1001 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format1).id), -1i64)
            @Expect("assertion#1436: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_100200
     * @tc.name      : TestCase_1002
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.Test_Format1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1002(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1002 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format1).id), 12345678i64)
            @Expect("assertion#1437: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_100300
     * @tc.name      : TestCase_1003
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.Test_Format2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1003(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1003 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format2).id), 1i64)
            @Expect("assertion#1438: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1003 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_100400
     * @tc.name      : TestCase_1004
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.Test_Format2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1004(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1004 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format2).id), -1i64)
            @Expect("assertion#1439: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1004 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_100500
     * @tc.name      : TestCase_1005
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.Test_Format2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1005(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1005 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format2).id), 12345678i64)
            @Expect("assertion#1440: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1005 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_100600
     * @tc.name      : TestCase_1006
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.Test_Format3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1006(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1006 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format3).id), 1i64)
            @Expect("assertion#1441: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1006 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_100700
     * @tc.name      : TestCase_1007
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.Test_Format3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1007(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1007 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format3).id), -1i64)
            @Expect("assertion#1442: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1007 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_100800
     * @tc.name      : TestCase_1008
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.Test_Format3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1008(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1008 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.Test_Format3).id), 12345678i64)
            @Expect("assertion#1443: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1008 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_100900
     * @tc.name      : TestCase_1009
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1009(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1009 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_desc).id), 1i64)
            @Expect("assertion#1444: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1009 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_101000
     * @tc.name      : TestCase_1010
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1010(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1010 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_desc).id), -1i64)
            @Expect("assertion#1445: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1010 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_101100
     * @tc.name      : TestCase_1011
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1011(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1011 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_desc).id), 12345678i64)
            @Expect("assertion#1446: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1011 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_101200
     * @tc.name      : TestCase_1012
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.media.layered_image).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1012(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1012 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.media.layered_image).id), 1i64)
            @Expect("assertion#1447: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1012 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_101300
     * @tc.name      : TestCase_1013
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.media.layered_image).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1013(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1013 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.media.layered_image).id), -1i64)
            @Expect("assertion#1448: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1013 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_101400
     * @tc.name      : TestCase_1014
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.media.layered_image).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1014(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1014 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.media.layered_image).id), 12345678i64)
            @Expect("assertion#1449: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_101500
     * @tc.name      : TestCase_1015
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1015(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1015 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_label).id), 1i64)
            @Expect("assertion#1450: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1015 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_101600
     * @tc.name      : TestCase_1016
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1016(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1016 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_label).id), -1i64)
            @Expect("assertion#1451: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1016 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_101700
     * @tc.name      : TestCase_1017
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1017(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1017 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.string.EntryAbility_label).id), 12345678i64)
            @Expect("assertion#1452: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1017 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_101800
     * @tc.name      : TestCase_1018
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.media.startIcon).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1018(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1018 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.media.startIcon).id), 1i64)
            @Expect("assertion#1453: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1018 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_101900
     * @tc.name      : TestCase_1019
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.media.startIcon).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1019(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1019 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.media.startIcon).id), -1i64)
            @Expect("assertion#1454: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1019 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_102000
     * @tc.name      : TestCase_1020
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.media.startIcon).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1020(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1020 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.media.startIcon).id), 12345678i64)
            @Expect("assertion#1455: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1020 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_102100
     * @tc.name      : TestCase_1021
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.profile.main_pages).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1021(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1021 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.profile.main_pages).id), 1i64)
            @Expect("assertion#1456: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1021 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_102200
     * @tc.name      : TestCase_1022
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.profile.main_pages).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1022(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1022 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.profile.main_pages).id), -1i64)
            @Expect("assertion#1457: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1022 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_102300
     * @tc.name      : TestCase_1023
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.profile.main_pages).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1023(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1023 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.profile.main_pages).id), 12345678i64)
            @Expect("assertion#1458: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1023 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_102400
     * @tc.name      : TestCase_1024
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.color.start_window_background).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1024(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1024 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.color.start_window_background).id), 1i64)
            @Expect("assertion#1459: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1024 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_102500
     * @tc.name      : TestCase_1025
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.color.start_window_background).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1025(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1025 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.color.start_window_background).id), -1i64)
            @Expect("assertion#1460: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1025 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_102600
     * @tc.name      : TestCase_1026
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.color.start_window_background).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1026(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1026 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.color.start_window_background).id), 12345678i64)
            @Expect("assertion#1461: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1026 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_102700
     * @tc.name      : TestCase_1027
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.float.float_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1027(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1027 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_1).id), 1i64)
            @Expect("assertion#1462: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1027 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_102800
     * @tc.name      : TestCase_1028
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.float.float_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1028(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1028 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_1).id), -1i64)
            @Expect("assertion#1463: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1028 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_102900
     * @tc.name      : TestCase_1029
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.float.float_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1029(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1029 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_1).id), 12345678i64)
            @Expect("assertion#1464: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1029 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_103000
     * @tc.name      : TestCase_1030
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.float.float_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1030(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1030 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_2).id), 1i64)
            @Expect("assertion#1465: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1030 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_103100
     * @tc.name      : TestCase_1031
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.float.float_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1031(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1031 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_2).id), -1i64)
            @Expect("assertion#1466: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1031 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_103200
     * @tc.name      : TestCase_1032
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.float.float_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1032(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1032 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.float.float_2).id), 12345678i64)
            @Expect("assertion#1467: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1032 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_103300
     * @tc.name      : TestCase_1033
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.integer.int_1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1033(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1033 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_1).id), 1i64)
            @Expect("assertion#1468: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1033 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_103400
     * @tc.name      : TestCase_1034
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.integer.int_1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1034(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1034 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_1).id), -1i64)
            @Expect("assertion#1469: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1034 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_103500
     * @tc.name      : TestCase_1035
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.integer.int_1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1035(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1035 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_1).id), 12345678i64)
            @Expect("assertion#1470: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1035 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_103600
     * @tc.name      : TestCase_1036
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.integer.int_2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1036(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1036 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_2).id), 1i64)
            @Expect("assertion#1471: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1036 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_103700
     * @tc.name      : TestCase_1037
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.integer.int_2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1037(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1037 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_2).id), -1i64)
            @Expect("assertion#1472: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1037 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_103800
     * @tc.name      : TestCase_1038
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.integer.int_2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1038(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1038 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.integer.int_2).id), 12345678i64)
            @Expect("assertion#1473: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1038 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_103900
     * @tc.name      : TestCase_1039
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1039(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1039 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean1).id), 1i64)
            @Expect("assertion#1474: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1039 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_104000
     * @tc.name      : TestCase_1040
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1040(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1040 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean1).id), -1i64)
            @Expect("assertion#1475: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1040 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_104100
     * @tc.name      : TestCase_1041
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1041(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1041 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean1).id), 12345678i64)
            @Expect("assertion#1476: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1041 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_104200
     * @tc.name      : TestCase_1042
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1042(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1042 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean0).id), 1i64)
            @Expect("assertion#1477: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1042 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_104300
     * @tc.name      : TestCase_1043
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1043(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1043 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean0).id), -1i64)
            @Expect("assertion#1478: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1043 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_104400
     * @tc.name      : TestCase_1044
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1044(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1044 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.test_boolean0).id), 12345678i64)
            @Expect("assertion#1479: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1044 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_104500
     * @tc.name      : TestCase_1045
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1045(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1045 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_3).id), 1i64)
            @Expect("assertion#1480: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1045 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_104600
     * @tc.name      : TestCase_1046
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1046(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1046 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_3).id), -1i64)
            @Expect("assertion#1481: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1046 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_104700
     * @tc.name      : TestCase_1047
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.boolean_3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1047(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1047 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_3).id), 12345678i64)
            @Expect("assertion#1482: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1047 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_104800
     * @tc.name      : TestCase_1048
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1048(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1048 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_4).id), 1i64)
            @Expect("assertion#1483: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1048 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_104900
     * @tc.name      : TestCase_1049
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1049(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1049 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_4).id), -1i64)
            @Expect("assertion#1484: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1049 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_105000
     * @tc.name      : TestCase_1050
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="\0", resourceId=@r(app.boolean.boolean_4).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1050(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1050 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "\0", @r(app.boolean.boolean_4).id), 12345678i64)
            @Expect("assertion#1485: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1050 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_105100
     * @tc.name      : TestCase_1051
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=1u32, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1051(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1051 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", 1u32), 1i64)
            @Expect("assertion#1486: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1051 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_105200
     * @tc.name      : TestCase_1052
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=1u32, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1052(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1052 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", 1u32), -1i64)
            @Expect("assertion#1487: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1052 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_105300
     * @tc.name      : TestCase_1053
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=1u32, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1053(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1053 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", 1u32), 12345678i64)
            @Expect("assertion#1488: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1053 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_105400
     * @tc.name      : TestCase_1054
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=0u32, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1054(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1054 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", 0u32), 1i64)
            @Expect("assertion#1489: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1054 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_105500
     * @tc.name      : TestCase_1055
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=0u32, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1055(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1055 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", 0u32), -1i64)
            @Expect("assertion#1490: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1055 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_105600
     * @tc.name      : TestCase_1056
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=0u32, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1056(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1056 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", 0u32), 12345678i64)
            @Expect("assertion#1491: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1056 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_106000
     * @tc.name      : TestCase_1060
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=UInt32.Min, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1060(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1060 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Min), 1i64)
            @Expect("assertion#1495: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1060 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_106100
     * @tc.name      : TestCase_1061
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=UInt32.Min, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1061(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1061 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Min), -1i64)
            @Expect("assertion#1496: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1061 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_106200
     * @tc.name      : TestCase_1062
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=UInt32.Min, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1062(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1062 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Min), 12345678i64)
            @Expect("assertion#1497: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1062 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_106300
     * @tc.name      : TestCase_1063
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=UInt32.Max, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1063(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1063 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Max), 1i64)
            @Expect("assertion#1498: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1063 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_106400
     * @tc.name      : TestCase_1064
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=UInt32.Max, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1064(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1064 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Max), -1i64)
            @Expect("assertion#1499: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1064 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_106500
     * @tc.name      : TestCase_1065
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=UInt32.Max, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1065(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1065 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", UInt32.Max), 12345678i64)
            @Expect("assertion#1500: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1065 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_106600
     * @tc.name      : TestCase_1066
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1066(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1066 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.module_desc).id), 1i64
            )
            @Expect("assertion#1501: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1066 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_106700
     * @tc.name      : TestCase_1067
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1067(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1067 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.module_desc).id), -1i64
            )
            @Expect("assertion#1502: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1067 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_106800
     * @tc.name      : TestCase_1068
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1068(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1068 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.module_desc).id), 12345678i64
            )
            @Expect("assertion#1503: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1068 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_106900
     * @tc.name      : TestCase_1069
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1069(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1069 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.strarray.sizelist).id), 1i64)
            @Expect("assertion#1504: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1069 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_107000
     * @tc.name      : TestCase_1070
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1070(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1070 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.strarray.sizelist).id), -1i64)
            @Expect("assertion#1505: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1070 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_107100
     * @tc.name      : TestCase_1071
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1071(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1071 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.strarray.sizelist).id), 12345678i64)
            @Expect("assertion#1506: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1071 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_107200
     * @tc.name      : TestCase_1072
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1072(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1072 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.plural.plural_name).id), 1i64
            )
            @Expect("assertion#1507: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1072 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_107300
     * @tc.name      : TestCase_1073
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1073(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1073 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.plural.plural_name).id), -1i64
            )
            @Expect("assertion#1508: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1073 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_107400
     * @tc.name      : TestCase_1074
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1074(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1074 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.plural.plural_name).id), 12345678i64
            )
            @Expect("assertion#1509: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1074 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_107500
     * @tc.name      : TestCase_1075
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1075(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1075 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                1i64)
            @Expect("assertion#1510: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1075 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_107600
     * @tc.name      : TestCase_1076
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1076(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1076 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                -1i64)
            @Expect("assertion#1511: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1076 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_107700
     * @tc.name      : TestCase_1077
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1077(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1077 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format1).id),
                12345678i64)
            @Expect("assertion#1512: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1077 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_107800
     * @tc.name      : TestCase_1078
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1078(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1078 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                1i64)
            @Expect("assertion#1513: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1078 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_107900
     * @tc.name      : TestCase_1079
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1079(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1079 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                -1i64)
            @Expect("assertion#1514: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1079 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_108000
     * @tc.name      : TestCase_1080
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1080(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1080 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format2).id),
                12345678i64)
            @Expect("assertion#1515: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1080 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_108100
     * @tc.name      : TestCase_1081
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1081(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1081 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                1i64)
            @Expect("assertion#1516: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1081 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_108200
     * @tc.name      : TestCase_1082
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1082(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1082 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                -1i64)
            @Expect("assertion#1517: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1082 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_108300
     * @tc.name      : TestCase_1083
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1083(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1083 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.Test_Format3).id),
                12345678i64)
            @Expect("assertion#1518: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1083 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_108400
     * @tc.name      : TestCase_1084
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1084(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1084 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                1i64)
            @Expect("assertion#1519: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1084 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_108500
     * @tc.name      : TestCase_1085
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1085(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1085 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                -1i64)
            @Expect("assertion#1520: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1085 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_108600
     * @tc.name      : TestCase_1086
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1086(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1086 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id),
                12345678i64)
            @Expect("assertion#1521: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1086 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_108700
     * @tc.name      : TestCase_1087
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1087(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1087 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.layered_image).id),
                1i64)
            @Expect("assertion#1522: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1087 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_108800
     * @tc.name      : TestCase_1088
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1088(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1088 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.layered_image).id),
                -1i64)
            @Expect("assertion#1523: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1088 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_108900
     * @tc.name      : TestCase_1089
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1089(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1089 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.layered_image).id),
                12345678i64)
            @Expect("assertion#1524: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1089 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_109000
     * @tc.name      : TestCase_1090
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1090(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1090 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_label).id
                ), 1i64)
            @Expect("assertion#1525: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1090 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_109100
     * @tc.name      : TestCase_1091
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1091(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1091 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_label).id
                ), -1i64)
            @Expect("assertion#1526: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1091 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_109200
     * @tc.name      : TestCase_1092
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1092(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1092 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.string.EntryAbility_label).id
                ), 12345678i64)
            @Expect("assertion#1527: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1092 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_109300
     * @tc.name      : TestCase_1093
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1093(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1093 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.startIcon).id), 1i64)
            @Expect("assertion#1528: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1093 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_109400
     * @tc.name      : TestCase_1094
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1094(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1094 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.startIcon).id), -1i64)
            @Expect("assertion#1529: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1094 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_109500
     * @tc.name      : TestCase_1095
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1095(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1095 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.media.startIcon).id), 12345678i64)
            @Expect("assertion#1530: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1095 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_109600
     * @tc.name      : TestCase_1096
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1096(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1096 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.profile.main_pages).id), 1i64
            )
            @Expect("assertion#1531: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1096 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_109700
     * @tc.name      : TestCase_1097
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1097(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1097 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.profile.main_pages).id), -1i64
            )
            @Expect("assertion#1532: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1097 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_109800
     * @tc.name      : TestCase_1098
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id, num=3).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1098(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1098 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name", @r(app.profile.main_pages).id), 12345678i64
            )
            @Expect("assertion#1533: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1098 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_109900
     * @tc.name      : TestCase_1099
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, num=1).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1099(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1099 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), 1i64)
            @Expect("assertion#1534: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1099 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getPluralStringValueByAppResource_110000
     * @tc.name      : TestCase_1100
     * @tc.desc      :                             get PluralStringValue by AppResource(bundleName="com.example.myapplication",
                            moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id, num=2).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1100(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1100 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Plural.")
        try {
            getResourceManager().getPluralStringValue(
                AppResource("com.example.myapplication", "nonexisting_module_name",
                    @r(app.color.start_window_background).id), -1i64)
            @Expect("assertion#1535: not throw", "fail to get Plural.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1100 ends.")
    }
}
