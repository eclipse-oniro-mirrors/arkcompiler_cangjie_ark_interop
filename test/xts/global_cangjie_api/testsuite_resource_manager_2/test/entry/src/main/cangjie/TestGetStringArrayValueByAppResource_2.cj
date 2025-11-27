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
class TestGetStringArrayValueByAppResource_2 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=1u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", 1u32))
            @Expect("assertion#1457: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=0u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", 0u32))
            @Expect("assertion#1458: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=UInt32.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", UInt32.Min))
            @Expect("assertion#1460: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=UInt32.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", UInt32.Max))
            @Expect("assertion#1461: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.module_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.string.module_desc).id))
            @Expect("assertion#1462: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.strarray.sizelist).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.strarray.sizelist).id))
            @Expect("assertion#1463: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.plural.plural_name).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.plural.plural_name).id))
            @Expect("assertion#1464: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.string.Test_Format1).id))
            @Expect("assertion#1465: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.string.Test_Format2).id))
            @Expect("assertion#1466: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.Test_Format3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.string.Test_Format3).id))
            @Expect("assertion#1467: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.EntryAbility_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.string.EntryAbility_desc).id))
            @Expect("assertion#1468: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.media.layered_image).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.media.layered_image).id))
            @Expect("assertion#1469: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.string.EntryAbility_label).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.string.EntryAbility_label).id))
            @Expect("assertion#1470: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.media.startIcon).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.media.startIcon).id))
            @Expect("assertion#1471: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.profile.main_pages).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.profile.main_pages).id))
            @Expect("assertion#1472: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.color.start_window_background).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.color.start_window_background).id))
            @Expect("assertion#1473: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.float.float_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.float.float_1).id))
            @Expect("assertion#1474: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.float.float_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.float.float_2).id))
            @Expect("assertion#1475: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.integer.int_1).id))
            @Expect("assertion#1476: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.integer.int_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.integer.int_2).id))
            @Expect("assertion#1477: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.boolean.test_boolean1).id))
            @Expect("assertion#1478: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.test_boolean0).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.boolean.test_boolean0).id))
            @Expect("assertion#1479: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.boolean.boolean_3).id))
            @Expect("assertion#1480: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="", resourceId=@r(app.boolean.boolean_4).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "", @r(app.boolean.boolean_4).id))
            @Expect("assertion#1481: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=1u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", 1u32))
            @Expect("assertion#1482: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=0u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", 0u32))
            @Expect("assertion#1483: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", UInt32.Min))
            @Expect("assertion#1485: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=UInt32.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", UInt32.Max))
            @Expect("assertion#1486: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.module_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.string.module_desc).id))
            @Expect("assertion#1487: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.strarray.sizelist).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.strarray.sizelist).id))
            @Expect("assertion#1488: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.plural.plural_name).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.plural.plural_name).id))
            @Expect("assertion#1489: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.string.Test_Format1).id))
            @Expect("assertion#1490: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.string.Test_Format2).id))
            @Expect("assertion#1491: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.Test_Format3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.string.Test_Format3).id))
            @Expect("assertion#1492: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.string.EntryAbility_desc).id))
            @Expect("assertion#1493: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.layered_image).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.media.layered_image).id))
            @Expect("assertion#1494: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.string.EntryAbility_label).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.string.EntryAbility_label).id))
            @Expect("assertion#1495: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.media.startIcon).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.media.startIcon).id))
            @Expect("assertion#1496: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.profile.main_pages).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.profile.main_pages).id))
            @Expect("assertion#1497: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.color.start_window_background).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.color.start_window_background).id))
            @Expect("assertion#1498: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.float.float_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.float.float_1).id))
            @Expect("assertion#1499: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.float.float_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.float.float_2).id))
            @Expect("assertion#1500: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.integer.int_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.integer.int_1).id))
            @Expect("assertion#1501: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.integer.int_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.integer.int_2).id))
            @Expect("assertion#1502: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.boolean.test_boolean1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.boolean.test_boolean1).id))
            @Expect("assertion#1503: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.boolean.test_boolean0).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.boolean.test_boolean0).id))
            @Expect("assertion#1504: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.boolean.boolean_3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.boolean.boolean_3).id))
            @Expect("assertion#1505: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="\0", resourceId=@r(app.boolean.boolean_4).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "\0", @r(app.boolean.boolean_4).id))
            @Expect("assertion#1506: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=1u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "nonexisting_module_name", 1u32))
            @Expect("assertion#1507: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=0u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "nonexisting_module_name", 0u32))
            @Expect("assertion#1508: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=UInt32.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "nonexisting_module_name", UInt32.Min))
            @Expect("assertion#1510: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=UInt32.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "nonexisting_module_name", UInt32.Max))
            @Expect("assertion#1511: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.string.module_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.string.module_desc).id))
            @Expect("assertion#1512: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.strarray.sizelist).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.strarray.sizelist).id))
            @Expect("assertion#1513: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.plural.plural_name).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.plural.plural_name).id))
            @Expect("assertion#1514: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.string.Test_Format1).id))
            @Expect("assertion#1515: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.string.Test_Format2).id))
            @Expect("assertion#1516: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.string.Test_Format3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.string.Test_Format3).id))
            @Expect("assertion#1517: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.string.EntryAbility_desc).id))
            @Expect("assertion#1518: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.media.layered_image).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.media.layered_image).id))
            @Expect("assertion#1519: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.string.EntryAbility_label).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.string.EntryAbility_label).id))
            @Expect("assertion#1520: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.media.startIcon).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.media.startIcon).id))
            @Expect("assertion#1521: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.profile.main_pages).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.profile.main_pages).id))
            @Expect("assertion#1522: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.color.start_window_background).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.color.start_window_background).id))
            @Expect("assertion#1523: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.float.float_1).id))
            @Expect("assertion#1524: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.float.float_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.float.float_2).id))
            @Expect("assertion#1525: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.integer.int_1).id))
            @Expect("assertion#1526: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.integer.int_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.integer.int_2).id))
            @Expect("assertion#1527: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.test_boolean1).id))
            @Expect("assertion#1528: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.test_boolean0).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.test_boolean0).id))
            @Expect("assertion#1529: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.boolean_3).id))
            @Expect("assertion#1530: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="nonexisting_module_name", resourceId=@r(app.boolean.boolean_4).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(
                AppResource("\0", "nonexisting_module_name", @r(app.boolean.boolean_4).id))
            @Expect("assertion#1531: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=1u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", 1u32))
            @Expect("assertion#1532: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=0u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", 0u32))
            @Expect("assertion#1533: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_177 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=UInt32.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", UInt32.Min))
            @Expect("assertion#1535: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=UInt32.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", UInt32.Max))
            @Expect("assertion#1536: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_18100
     * @tc.name      : TestCase_181
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.string.module_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.string.module_desc).id))
            @Expect("assertion#1537: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_18200
     * @tc.name      : TestCase_182
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.strarray.sizelist).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_182(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_182 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.strarray.sizelist).id))
            @Expect("assertion#1538: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_18300
     * @tc.name      : TestCase_183
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.plural.plural_name).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_183(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_183 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.plural.plural_name).id))
            @Expect("assertion#1539: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_18400
     * @tc.name      : TestCase_184
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.string.Test_Format1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_184(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_184 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.string.Test_Format1).id))
            @Expect("assertion#1540: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_18500
     * @tc.name      : TestCase_185
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.string.Test_Format2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_185(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_185 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.string.Test_Format2).id))
            @Expect("assertion#1541: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_18600
     * @tc.name      : TestCase_186
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.string.Test_Format3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_186(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_186 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.string.Test_Format3).id))
            @Expect("assertion#1542: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_18700
     * @tc.name      : TestCase_187
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.string.EntryAbility_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_187(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_187 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.string.EntryAbility_desc).id))
            @Expect("assertion#1543: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_18800
     * @tc.name      : TestCase_188
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.media.layered_image).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_188(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_188 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.media.layered_image).id))
            @Expect("assertion#1544: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_18900
     * @tc.name      : TestCase_189
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.string.EntryAbility_label).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_189(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_189 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.string.EntryAbility_label).id))
            @Expect("assertion#1545: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_19000
     * @tc.name      : TestCase_190
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.media.startIcon).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_190(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_190 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.media.startIcon).id))
            @Expect("assertion#1546: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_19100
     * @tc.name      : TestCase_191
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.profile.main_pages).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_191(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_191 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.profile.main_pages).id))
            @Expect("assertion#1547: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_19200
     * @tc.name      : TestCase_192
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.color.start_window_background).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_192(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_192 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.color.start_window_background).id
            ))
            @Expect("assertion#1548: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_19300
     * @tc.name      : TestCase_193
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.float.float_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_193(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_193 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.float.float_1).id))
            @Expect("assertion#1549: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_19400
     * @tc.name      : TestCase_194
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.float.float_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_194(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_194 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.float.float_2).id))
            @Expect("assertion#1550: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_19500
     * @tc.name      : TestCase_195
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.integer.int_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_195(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_195 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.integer.int_1).id))
            @Expect("assertion#1551: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_19600
     * @tc.name      : TestCase_196
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.integer.int_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_196(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_196 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.integer.int_2).id))
            @Expect("assertion#1552: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_19700
     * @tc.name      : TestCase_197
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.boolean.test_boolean1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_197(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_197 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.boolean.test_boolean1).id))
            @Expect("assertion#1553: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_19800
     * @tc.name      : TestCase_198
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.boolean.test_boolean0).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_198(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_198 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.boolean.test_boolean0).id))
            @Expect("assertion#1554: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_19900
     * @tc.name      : TestCase_199
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.boolean.boolean_3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_199(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_199 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.boolean.boolean_3).id))
            @Expect("assertion#1555: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringArrayValueByAppResource_20000
     * @tc.name      : TestCase_200
     * @tc.desc      : get stringArrayValue by AppResource(bundleName="\0", moduleName="entry", resourceId=@r(app.boolean.boolean_4).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_200(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_200 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get strArrayValue.")
        try {
            getResourceManager().getStringArrayValue(AppResource("\0", "entry", @r(app.boolean.boolean_4).id))
            @Expect("assertion#1556: not throw", "fail to get strArrayValue.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_200 ends.")
    }
}
